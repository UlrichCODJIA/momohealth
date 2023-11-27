import os
from django.db import models
from django.core.exceptions import ValidationError
import uuid
from datetime import timedelta
from django.utils import timezone
from account.models import CustomUser


# Create your models here.
class Wallet(models.Model):
    id = models.UUIDField(primary_key=True, default=uuid.uuid4, editable=False)
    user = models.ForeignKey(
        CustomUser, on_delete=models.CASCADE, related_name="wallet"
    )
    balance = models.DecimalField(decimal_places=2, max_digits=1000000, default=0.0)
    created_at = models.DateTimeField(auto_now_add=True)
    updated_at = models.DateTimeField(auto_now=True)

    is_active = models.BooleanField(default=True)

    def __str__(self):
        return f"wallet for {self.user.mobile_number}"


class Transaction(models.Model):
    CREDIT = "Credit"
    DEBIT = "Debit"
    TRANSACTION_TYPE = [
        (CREDIT, "Credit"),
        (DEBIT, "Debit"),
    ]
    STATUS_CHOICES = (
        ("pending", "Pending"),
        ("completed", "Completed"),
        ("failed", "Failed"),
    )

    id = models.UUIDField(
        primary_key=True, default=uuid.uuid4, editable=False, unique=True
    )
    wallet = models.ForeignKey(
        "Wallet", on_delete=models.CASCADE, related_name="transaction"
    )
    amount = models.DecimalField(decimal_places=2, max_digits=1000000)
    transaction_type = models.CharField(
        max_length=15, choices=TRANSACTION_TYPE, default=CREDIT
    )
    description = models.TextField()
    status = models.CharField(max_length=10, choices=STATUS_CHOICES, default="pending")
    created_at = models.DateTimeField(auto_now_add=True)
    updated_at = models.DateTimeField(auto_now=True)

    def clean(self):
        if self.amount <= 0:
            raise ValidationError("Transaction amount must be positive")
        recent_transactions = Transaction.objects.filter(
            user=self.user, created_at__gte=timezone.now() - timedelta(minutes=5)
        )
        if recent_transactions.exists():
            raise ValidationError("Duplicate transaction detected")

    def save(self, *args, **kwargs):
        self.clean()
        # user_account = self.user.account
        # user_account.balance -= self.amount
        # user_account.save()
        super(Transaction, self).save(*args, **kwargs)

    def __str__(self):
        return f"transaction {self.id}"
