from rest_framework import generics

from .serializers import PrescriptionSerializer

from .models import Medication, Order, Prescription
from rest_framework.permissions import IsAuthenticated
from rest_framework.decorators import api_view, permission_classes

from rest_framework import status
from rest_framework.response import Response


class PrescriptionList(generics.ListAPIView):
    queryset = Prescription.objects.all()
    serializer_class = PrescriptionSerializer
    permission_classes = [IsAuthenticated]

    def get_queryset(self):
        user = self.request.user

        queryset = super().get_queryset()
        return queryset.filter(user=user)


# class PrescriptionCreateView(generics.CreateAPIView):
#     queryset = Prescription.objects.all()
#     serializer_class = PrescriptionSerializer
#     permission_classes = [IsAuthenticated]


@api_view(['POST','PUT'])
@permission_classes([IsAuthenticated])
def create_or_update_order(request):
    # Récupérez l'ID à partir des données de la requête
    prescription_id = request.data.get('prescription_id')

    # Vérifiez si l'ID est fourni dans la requête
    if not prescription_id:
        return Response({"error": "L'ID de l'élément est requis."}, status=status.HTTP_400_BAD_REQUEST)

    try:
        prescription = Prescription.objects.get(id=prescription_id)
    except Prescription.DoesNotExist:
        return Response({"error": "Rendez-vous non trouvé."}, status=status.HTTP_404_NOT_FOUND)

    if request.method == 'POST':
        # Vérifiez si l'utilisateur envoyant la requête est autorisé à effectuer la mise à jour
        if request.user != prescription.user:
            return Response({"error": "Vous n'êtes pas autorisé"}, status=status.HTTP_403_FORBIDDEN)

        Order.objects.create(prescription=prescription)

        return Response({"message": "Order created successfully"})
    elif request.method == 'PUT':
        new_status = request.data.get('status')
        if not new_status:
            return Response({"error": "Le status de l'élément est requis."}, status=status.HTTP_400_BAD_REQUEST)
        # Vérifiez si l'utilisateur envoyant la requête est autorisé à effectuer la mise à jour
        if request.user != prescription.user:
            return Response({"error": "Vous n'êtes pas autorisé"}, status=status.HTTP_403_FORBIDDEN)
        try:
            order = Order.objects.get(prescription=prescription)
        except Order.DoesNotExist:
            return Response({"error": "Commande non trouvé."}, status=status.HTTP_404_NOT_FOUND)

        order.status = new_status
        order.save()
        return Response({"message": "Order update successfully"})


@api_view(['GET'])
def get_medication_availability(request,pk):
    # Récupérez l'ID à partir des données de la requête
    # medication_id = request.data.get('medication_id')

    # Vérifiez si l'ID est fourni dans la requête
    # if not medication_id:
    #     return Response({"error": "L'ID de l'élément est requis."}, status=status.HTTP_400_BAD_REQUEST)

    try:
        medication = Medication.objects.get(id=pk)
        return Response({"available": medication.available})
    except Medication.DoesNotExist:
        return Response({"error": "Médicament non trouvé."}, status=status.HTTP_404_NOT_FOUND)