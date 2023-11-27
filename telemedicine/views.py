from rest_framework.generics import CreateAPIView, UpdateAPIView
from rest_framework.permissions import IsAuthenticated
from rest_framework.response import Response
from rest_framework import status
from rest_framework.decorators import api_view, permission_classes

from account.models import CustomUser

from .models import Appointment, Consultation
from .serializers import AppointmentSerializer, ConsultationSerializer


class AppointmentCreateView(CreateAPIView):
    queryset = Appointment.objects.all()
    serializer_class = AppointmentSerializer
    permission_classes = [IsAuthenticated]

    def perform_create(self, serializer):
        try:
            provider = CustomUser.objects.get(id=serializer.validated_data["provider_id"])
        except CustomUser.DoesNotExist:
            return Response(
                {"error": "Provider non trouvé."}, status=status.HTTP_404_NOT_FOUND
            )
        serializer.save(user=self.request.user, provider=provider)


class AppointmentUpdateView(UpdateAPIView):
    queryset = Appointment.objects.all()
    serializer_class = AppointmentSerializer
    permission_classes = [IsAuthenticated]

    def update(self, request, *args, **kwargs):
        instance = self.get_object()
        serializer = self.get_serializer(instance, data=request.data, partial=True)
        serializer.is_valid(raise_exception=True)

        self.perform_update(serializer)

        return Response({"message": "Mise à jour réussie."})
