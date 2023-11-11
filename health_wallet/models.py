from django.db import models
import uuid

from account.models import CustomUser
# Create your models here.
class Wallet(models.Model):
    id = models.UUIDField(primary_key=True, default=uuid.uuid4, editable=False)
    user = models.ForeignKey(CustomUser, on_delete=models.CASCADE, related_name="wallet")
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

    id = models.UUIDField(primary_key=True, default=uuid.uuid4, editable=False)
    wallet = models.ForeignKey("Wallet", on_delete=models.CASCADE, related_name="transaction")
    amount = models.DecimalField(decimal_places=2, max_digits=1000000)    
    transaction_type = models.CharField(max_length=15, choices=TRANSACTION_TYPE, default=CREDIT)
    description = models.TextField()
    created_at = models.DateTimeField(auto_now_add=True)
    updated_at = models.DateTimeField(auto_now=True)

    def __str__(self):
        return f"transaction {self.id}"