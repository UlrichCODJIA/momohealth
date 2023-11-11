from rest_framework.generics import CreateAPIView
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


@api_view(["PUT"])
@permission_classes([IsAuthenticated])
def cancel_appointment(request):
    # Récupérez l'ID à partir des données de la requête
    appointment_id = request.data.get("appointment_id")

    # Vérifiez si l'ID est fourni dans la requête
    if not appointment_id:
        return Response(
            {"error": "L'ID de l'élément à mettre à jour est requis."},
            status=status.HTTP_400_BAD_REQUEST,
        )

    try:
        appointment = Appointment.objects.get(id=appointment_id)
    except Appointment.DoesNotExist:
        return Response(
            {"error": "Rendez-vous non trouvé."}, status=status.HTTP_404_NOT_FOUND
        )

    # Vérifiez si l'utilisateur envoyant la requête est autorisé à effectuer la mise à jour
    if request.user != appointment.user:
        return Response(
            {"error": "Vous n'êtes pas autorisé à mettre à jour cet élément."},
            status=status.HTTP_403_FORBIDDEN,
        )

    # Mettez à jour le statut directement
    appointment.status = Appointment.CANCELLED
    appointment.save()

    return Response({"message": "Appointment cancelled successfully"})


@api_view(["GET"])
@permission_classes([IsAuthenticated])
def get_consultation_note(request, appointment_id):
    # Récupérez l'ID à partir des données de la requête
    # appointment_id = request.query_params.get('appointment_id')

    # Vérifiez si l'ID est fourni dans la requête
    if not appointment_id:
        return Response(
            {"error": "L'ID de l'élément à mettre à jour est requis."},
            status=status.HTTP_400_BAD_REQUEST,
        )

    try:
        appointment = Appointment.objects.get(id=appointment_id)
    except Appointment.DoesNotExist:
        return Response(
            {"error": "Rendez-vous non trouvé."}, status=status.HTTP_404_NOT_FOUND
        )

    # Vérifiez si l'utilisateur envoyant la requête est autorisé à effectuer la mise à jour
    if request.user != appointment.user:
        return Response(
            {"error": "Vous n'êtes pas autorisé à mettre à jour cet élément."},
            status=status.HTTP_403_FORBIDDEN,
        )

    try:
        consultation = Consultation.objects.get(appointment=appointment_id)
        serializer = ConsultationSerializer(consultation)
        return Response(serializer.data)
    except Consultation.DoesNotExist:
        return Response(
            {"error": "Rapport de consultation non trouvé."},
            status=status.HTTP_404_NOT_FOUND,
        )


# class AppointmentUpdateView(UpdateAPIView):
#     queryset = Appointment.objects.all()
#     serializer_class = AppointmentSerializer
#     permission_classes = [IsAuthenticated]

#     def update(self, request, *args, **kwargs):
#         instance = self.get_object()
#         serializer = self.get_serializer(instance, data=request.data, partial=True)
#         serializer.is_valid(raise_exception=True)

#         self.perform_update(serializer)

#         return Response({"message": "Mise à jour réussie."})
