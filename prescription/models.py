from django.db import models
import uuid

from account.models import CustomUser
# Create your models here.
class Medication(models.Model):

    id = models.UUIDField(primary_key=True, default=uuid.uuid4, editable=False)
    name = models.CharField(max_length=256)
    description = models.TextField()
    price = models.DecimalField(decimal_places=2, max_digits=10) 
    available = models.BooleanField(default=False)
    created_at = models.DateTimeField(auto_now_add=True)
    updated_at = models.DateTimeField(auto_now=True)

    def __str__(self):
        return f"Medication: {self.name}"
    

class Prescription(models.Model):

    ORDERED = "Ordered"
    FULFILLED = "Fulfilled"
    CANCELLED = "Cancelled"
    STATUS_TYPE = [
        (ORDERED, "Ordered"),
        (FULFILLED, "Fulfilled"),
        (CANCELLED, "Cancelled"),
    ]
    id = models.UUIDField(primary_key=True, default=uuid.uuid4, editable=False)
    user = models.ForeignKey(CustomUser, on_delete=models.CASCADE, related_name="prescription")
    medication = models.ForeignKey("Medication", on_delete=models.CASCADE, related_name="prescription")
    quantity = models.IntegerField(default=0)
    status = models.CharField(max_length=15, choices=STATUS_TYPE, default=ORDERED)
    created_at = models.DateTimeField(auto_now_add=True)
    updated_at = models.DateTimeField(auto_now=True)

    def __str__(self):
        return f"Prescription {self.id}"
    


class Order(models.Model):

    PROCESSING = "Ordered"
    DISPATCHED = "Fulfilled"
    DELIVERED = "Cancelled"
    ORDER_STATUS = [
        (PROCESSING, "Processing"),
        (DISPATCHED, "Dispatched"),
        (DELIVERED, "Delivered"),
    ]
    id = models.UUIDField(primary_key=True, default=uuid.uuid4, editable=False)
    prescription = models.ForeignKey("Prescription", on_delete=models.CASCADE, related_name="order")
    status = models.CharField(max_length=15, choices=ORDER_STATUS, default=PROCESSING)
    created_at = models.DateTimeField(auto_now_add=True)
    updated_at = models.DateTimeField(auto_now=True)

    def __str__(self):
        return f"Order {self.id}"