import random

from rest_framework import status
from rest_framework.response import Response
from rest_framework.views import APIView
from rest_framework.decorators import api_view, permission_classes, action
from django.core.exceptions import ObjectDoesNotExist
from datetime import timedelta
from django.utils import timezone
from django.conf import settings
from rest_framework_simplejwt.tokens import RefreshToken
from rest_framework_simplejwt.views import TokenObtainPairView
from rest_framework import viewsets, permissions
from django.db.models import Q

from .models import (
    CustomUser,
    ConfirmationCode,
)
from django.contrib.auth.hashers import make_password
from .serializers import (
    CustomTokenObtainPairSerializer,
    CustomUserSerializer,
)




class SendCode(APIView):
    def post(self, request, format=None):
        print(request.data.get("phone"))
        phone = request.data.get("phone")
        verification_code = str(random.randint(10000, 99999))
        expiration_time = timezone.now() + timedelta(minutes=15)
        print(expiration_time)
        confirmation_code, created = ConfirmationCode.objects.get_or_create(
            mobile_number=phone
        )
        confirmation_code.code = verification_code
        confirmation_code.expiration_time = expiration_time
        confirmation_code.save()

        # try:
        #     twilio_send_sms(
        #     f"Your verification code for awutche app is: {verification_code}", phone
        #     )
        # except:
        #     pass


        return Response(
            {"message": "Un code vous a été envoyé"}, status=status.HTTP_201_CREATED
        )


class CustomUserCreate(APIView):

    def verif_confirmation_code(self, mobile_number, verification_code):
        # Vérification du code et création de l'utilisateur
        try:
            confirmation_code = ConfirmationCode.objects.get(
                mobile_number=mobile_number,
                code=verification_code,
                expiration_time__gte=timezone.now(),
            )
            return confirmation_code
        except ConfirmationCode.DoesNotExist:
            return Response(
                {"error": "Invalid verification code."},
                status=status.HTTP_400_BAD_REQUEST,
            )

    def add_user(self, user_data):
        mobile_number = user_data.get("mobile_number")
        verification_code = user_data.get("verification_code")
        password = user_data.get("password")

        if CustomUser.objects.filter(mobile_number=mobile_number).exists():
            return Response(
                {"error": "User with this phone number already exists"},
                status=status.HTTP_400_BAD_REQUEST,
            )

        try:
            confirmation_code = ConfirmationCode.objects.get(
                mobile_number=mobile_number,
                code=verification_code,
                expiration_time__gte=timezone.now(),
            )
            confirmation_code.delete()
        except ConfirmationCode.DoesNotExist:
            return Response(
                {"error": "Invalid verification code."},
                status=status.HTTP_400_BAD_REQUEST,
            )
        serializer = CustomUserSerializer(data=user_data)
        if serializer.is_valid():
            user = serializer.save()
            user.set_password(password)
            user.save()
            confirmation_code.delete()
            refresh = RefreshToken.for_user(user)

            return Response(
                {
                    "user": CustomUserSerializer(user).data,
                    "access_token": str(refresh.access_token),
                    "refresh_token": str(refresh),
                },
                status=status.HTTP_201_CREATED,
            )

        return Response(serializer.errors, status=status.HTTP_400_BAD_REQUEST)

    # @action(detail=False, methods=['get','post'], url_path='signup')
    def post(self, request, format=None):
        return self.add_user(request.data)


class CustomUserViewSet(APIView):
    # @action(detail=True, methods=['get'], url_path='user')
    def get(self, request, format=None):
        # def get_user(self, request, *args, **kwargs):
        user = self.request.user
        if user.is_authenticated:
            serializer = CustomUserSerializer(user)
            return Response(serializer.data, status=status.HTTP_200_OK)
        else:
            return Response(
                {"error": "User not authenticated."},
                status=status.HTTP_401_UNAUTHORIZED,
            )
    
    def put(self, request, format=None):
        user = self.request.user
        serializer = CustomUserSerializer(user, data=request.data, partial=True)
        if serializer.is_valid():
            serializer.save()
            return Response(serializer.data)
        return Response(serializer.errors, status=status.HTTP_400_BAD_REQUEST)


class CustomTokenObtainPairView(TokenObtainPairView):
    serializer_class = CustomTokenObtainPairSerializer

    def post(self, request, *args, **kwargs):
        response = super().post(request, *args, **kwargs)
        serializer = self.get_serializer(data=request.data)
        serializer.is_valid(raise_exception=True)

        user = serializer.user
        access_token = response.data["access"]
        refresh_token = response.data["refresh"]

        return Response(
            {
                "user": CustomUserSerializer(user).data,
                "access_token": access_token,
                "refresh_token": refresh_token,
            },
            status=status.HTTP_200_OK,
        )


class ForgotPasswordView(APIView):
    def post(self, request, *args, **kwargs):
        mobile_number = request.data.get("mobile_number")

        try:
            CustomUser.objects.get(mobile_number=mobile_number)
            # Générer un code de réinitialisation et l'enregistrer dans la base de données
            code = str(random.randint(10000, 99999))
            expiration_time = timezone.now() + timedelta(minutes=15)
            confirmation_code, created = ConfirmationCode.objects.get_or_create(
                mobile_number=mobile_number
            )
            confirmation_code.code = code
            confirmation_code.expiration_time = expiration_time
            confirmation_code.save()

            # Ici, vous enverrez le code par SMS au numéro de téléphone
            # try:
            #     twilio_send_sms(
            #     f"Your verification code for awutche app reset password is: {code}",
            #     mobile_number,
            # )
            # except:
            #     pass

            return Response(
                {"message": "Code sent successfully."}, status=status.HTTP_200_OK
            )
        except CustomUser.DoesNotExist:
            return Response(
                {"error": "User with this phone number does not exist."},
                status=status.HTTP_400_BAD_REQUEST,
            )


class ResetPasswordView(APIView):
    def post(self, request, *args, **kwargs):
        mobile_number = request.data.get("mobile_number")
        code = request.data.get("code")
        new_password = request.data.get("new_password")

        try:
            user = CustomUser.objects.get(mobile_number=mobile_number)
            confirmation_code = ConfirmationCode.objects.get(
                mobile_number=mobile_number,
                code=code,
                expiration_time__gte=timezone.now(),
            )

            # Valider le code de réinitialisation
            if not confirmation_code:
                return Response(
                    {"error": "Invalid code."}, status=status.HTTP_400_BAD_REQUEST
                )

            # Réinitialiser le mot de passe
            user.password = make_password(new_password)
            user.save()

            # Supprimer le code de réinitialisation utilisé
            confirmation_code.delete()

            return Response(
                {"message": "Password reset successful."}, status=status.HTTP_200_OK
            )
        except ObjectDoesNotExist:
            return Response(
                {"error": "Invalid code or phone number."},
                status=status.HTTP_400_BAD_REQUEST,
            )


# @api_view(["POST"])
# @permission_classes([permissions.IsAuthenticated])
# def updateProfilePicture(request):
#     user = request.user
#     # Obtenez la nouvelle photo de profil à partir de la requête POST (assurez-vous d'avoir configuré la gestion des fichiers dans vos paramètres Django)
#     new_profile_picture = request.FILES.get("photo")

#     if new_profile_picture:
#         user.photo = new_profile_picture
#         user.save()
#         serializer = CustomUserSerializer(
#             user
#         )  # Utilisez un sérialiseur pour renvoyer les données utilisateur mises à jour
#         return Response(serializer.data)
#     else:
#         return Response(
#             {"error": "Veuillez fournir une nouvelle photo de profil."},
#             status=status.HTTP_400_BAD_REQUEST,
#         )
