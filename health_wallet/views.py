from .models import Transaction, Wallet
from rest_framework import generics
from django.db.models import Sum, DecimalField
from rest_framework import status
from rest_framework.response import Response
from rest_framework.decorators import api_view, permission_classes
from rest_framework.permissions import IsAuthenticated

from .serializers import TransactionSerializer



class TransactionList(generics.ListAPIView):
    queryset = Transaction.objects.all()
    serializer_class = TransactionSerializer
    permission_classes = [IsAuthenticated]

    def get_queryset(self):
        user = self.request.user

        queryset = super().get_queryset()
        return queryset.filter(wallet__user=user)


@api_view(['POST'])
@permission_classes([IsAuthenticated])
def deposit(request):
    # Récupérez l'ID à partir des données de la requête
    amount = f"{request.data.get('amount')}"

    # Vérifiez si l'ID est fourni dans la requête
    if not amount:
        return Response({"error": "L'ID de l'élément est requis."}, status=status.HTTP_400_BAD_REQUEST)

    wallet, created = Wallet.objects.get_or_create(user=request.user)

    transaction = Transaction.objects.create(amount=abs(float(amount)), wallet=wallet, transaction_type=Transaction.CREDIT)
    new_balance = balance(wallet)

    return Response({"transaction_id": transaction.id, "new_balance": new_balance})

def balance(wallet):
    credit_total = Transaction.objects.filter(transaction_type=Transaction.CREDIT, wallet=wallet).aggregate(
    credit_total=Sum('amount', output_field=DecimalField())
    )['credit_total'] or 0

    debit_total = Transaction.objects.filter(transaction_type=Transaction.DEBIT, wallet=wallet).aggregate(
        debit_total=Sum('amount', output_field=DecimalField())
    )['debit_total']  or 0

    # Différence totale (Credit - Debit)
    difference = credit_total - debit_total
    print(f"======================================={difference}")
    return difference


@api_view(['POST'])
@permission_classes([IsAuthenticated])
def withdraw(request):
    # Récupérez l'ID à partir des données de la requête
    amount = f"{request.data.get('amount')}"

    # Vérifiez si l'ID est fourni dans la requête
    if not amount:
        return Response({"error": "L'ID de l'élément est requis."}, status=status.HTTP_400_BAD_REQUEST)

    wallet, created = Wallet.objects.get_or_create(user=request.user)

    transaction = Transaction.objects.create(amount=abs(float(amount)), wallet=wallet, transaction_type=Transaction.DEBIT)
    new_balance = balance(wallet)

    return Response({"transaction_id": transaction.id, "new_balance": new_balance})

