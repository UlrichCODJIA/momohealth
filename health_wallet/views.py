import os
from account.models import UserRole
from health_wallet.momo import MomoPaymentClient
from .models import Transaction, Wallet
from rest_framework import generics
from django.db.models import Sum, DecimalField
from rest_framework import status
from rest_framework.response import Response
from rest_framework.decorators import api_view, permission_classes
from rest_framework.permissions import IsAuthenticated
from django.utils import timezone
from datetime import timedelta
from .serializers import TransactionSerializer
from django.core.mail import send_mail
from django.conf import settings


class TransactionList(generics.ListAPIView):
    queryset = Transaction.objects.all()
    serializer_class = TransactionSerializer
    permission_classes = [IsAuthenticated]

    def get_queryset(self):
        user = self.request.user

        queryset = super().get_queryset()
        return queryset.filter(wallet__user=user)


@api_view(["POST"])
@permission_classes([IsAuthenticated])
def deposit(request):
    # Récupérez l'ID à partir des données de la requête
    amount = f"{request.data.get('amount')}"

    # Vérifiez si l'ID est fourni dans la requête
    if not amount:
        return Response(
            {"error": "L'ID de l'élément est requis."},
            status=status.HTTP_400_BAD_REQUEST,
        )

    MomoPaymentClient_instance = MomoPaymentClient()
    api_user = MomoPaymentClient.create_sandbox_user(
        subscription_key=os.getenv("SUBSCRIPTION_KEY")
    )
    api_key = MomoPaymentClient.create_api_key(
        api_user=api_user, subscription_key=os.getenv("SUBSCRIPTION_KEY")
    )
    transact_status = MomoPaymentClient_instance.request_to_pay(
        str(amount), str(request.user.mobile_number), api_user, api_key
    )

    wallet, created = Wallet.objects.get_or_create(user=request.user)

    transaction = Transaction.objects.create(
        amount=abs(float(amount)), wallet=wallet, transaction_type=Transaction.CREDIT
    )

    if transact_status in ["SUCCESSFUL", "CREATED"]:
        print("SUCCESSFUL")
        transaction.status = "completed"
    elif transact_status == "PENDING":
        print("PENDING")
        while transact_status == "PENDING":
            print("STILL PENDING")
            transact_status = MomoPaymentClient_instance.request_to_pay(
                str(amount), str(request.user.mobile_number), api_user, api_key
            )
        if transact_status in ["SUCCESSFUL", "CREATED"]:
            print("FINALLY SUCCESSFUL AFTER PENDING")
            transaction.status = "completed"
        elif transact_status == "FAILED":
            print("FINALLY FAILED AFTER PENDING")
            transaction.status = "failed"
    elif transact_status == "FAILED":
        print("FAILED")
        transaction.status = "failed"

    is_verified = monitor_transaction(transaction)
    new_balance = balance(wallet)

    return Response({"transaction_id": transaction.id, "new_balance": new_balance})


# @api_view(["POST"])
# @permission_classes([IsAuthenticated])
# def withdraw(request):
#     # Récupérez l'ID à partir des données de la requête
#     amount = f"{request.data.get('amount')}"

#     # Vérifiez si l'ID est fourni dans la requête
#     if not amount:
#         return Response(
#             {"error": "L'ID de l'élément est requis."},
#             status=status.HTTP_400_BAD_REQUEST,
#         )

#     wallet, created = Wallet.objects.get_or_create(user=request.user)

#     transaction = Transaction.objects.create(
#         amount=abs(float(amount)), wallet=wallet, transaction_type=Transaction.DEBIT
#     )
#     new_balance = balance(wallet)

#     return Response({"transaction_id": transaction.id, "new_balance": new_balance})


def balance(wallet):
    credit_total = (
        Transaction.objects.filter(
            transaction_type=Transaction.CREDIT, wallet=wallet
        ).aggregate(credit_total=Sum("amount", output_field=DecimalField()))[
            "credit_total"
        ]
        or 0
    )

    debit_total = (
        Transaction.objects.filter(
            transaction_type=Transaction.DEBIT, wallet=wallet
        ).aggregate(debit_total=Sum("amount", output_field=DecimalField()))[
            "debit_total"
        ]
        or 0
    )

    # Différence totale (Credit - Debit)
    difference = credit_total - debit_total
    print(f"======================================={difference}")
    return difference


def is_rapid_succession_of_transactions(user):
    time_threshold = timezone.now() - timedelta(minutes=10)
    recent_transactions_count = Transaction.objects.filter(
        user=user, created_at__gte=time_threshold
    ).count()
    return recent_transactions_count > 3


def flag_transaction_as_suspicious(transaction):
    transaction.status = "flagged"
    transaction.save()
    send_fraud_alert_email(transaction)


def monitor_transaction(transaction):
    if transaction.amount > 10000:
        flag_transaction_as_suspicious(transaction)
        return True

    if is_rapid_succession_of_transactions(transaction.user):
        flag_transaction_as_suspicious(transaction)
        return True
    return False


def send_fraud_alert_email(transaction):
    subject = "Suspicious Transaction Alert"
    message = f"A suspicious transaction was detected: Transaction ID {transaction.transaction_id}"
    send_mail(
        subject,
        message,
        settings.DEFAULT_FROM_EMAIL,
        [
            user_role.user.email
            for user_role in UserRole.objects.filter(role__name="admin")
        ],
    )
