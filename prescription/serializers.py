from rest_framework import serializers

from account.serializers import CustomUserSerializer
from .models import Medication, Prescription, Order


class MedicationSerializer(serializers.ModelSerializer):
    class Meta:
        model = Medication
        fields = "__all__"


class PrescriptionSerializer(serializers.ModelSerializer):
    user = CustomUserSerializer(read_only=True)
    medication = MedicationSerializer(read_only=True)

    class Meta:
        model = Prescription
        fields = "__all__"


class OrderSerializer(serializers.ModelSerializer):
    prescription = PrescriptionSerializer(read_only=True)

    class Meta:
        model = Order
        fields = "__all__"
