from rest_framework import serializers

from account.serializers import CustomUserSerializer
from .models import Appointment, Consultation


class AppointmentSerializer(serializers.ModelSerializer):
    user = CustomUserSerializer(read_only=True)
    provider = CustomUserSerializer(read_only=True)
    provider_id = serializers.CharField(max_length=None, min_length=None, allow_blank=False, trim_whitespace=True)

    class Meta:
        model = Appointment
        fields = "__all__"


class ConsultationSerializer(serializers.ModelSerializer):
    appointment = AppointmentSerializer(read_only=True)

    class Meta:
        model = Consultation
        fields = "__all__"
