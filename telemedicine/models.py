from django.db import models
import uuid

from account.models import CustomUser
# Create your models here.
class Appointment(models.Model):
    
    SCHEDULED = "Scheduled"
    COMPLETED = "Completed"
    CANCELLED = "Cancelled"
    STATUS_TYPE = [
        (SCHEDULED, "Scheduled"),
        (COMPLETED, "Completed"),
        (CANCELLED, "Cancelled"),
    ]

    id = models.UUIDField(primary_key=True, default=uuid.uuid4, editable=False)
    user = models.ForeignKey(CustomUser, on_delete=models.CASCADE, related_name="appointment_user")
    provider = models.ForeignKey(CustomUser, on_delete=models.CASCADE, related_name="appointment_provider")
    scheduled_time = models.DateTimeField()
    status = models.CharField(max_length=15, choices=STATUS_TYPE, default=SCHEDULED)
    created_at = models.DateTimeField(auto_now_add=True)
    updated_at = models.DateTimeField(auto_now=True)

    def __str__(self):
        return f"appontment for {self.user.mobile_number}"
    

class Consultation(models.Model):

    id = models.UUIDField(primary_key=True, default=uuid.uuid4, editable=False)
    appointment = models.ForeignKey(Appointment, on_delete=models.CASCADE, related_name="consultation")
    note = models.TextField()
    prescription = models.TextField()
    created_at = models.DateTimeField(auto_now_add=True)
    updated_at = models.DateTimeField(auto_now=True)

    def __str__(self):
        return f"Consultation {self.id}"