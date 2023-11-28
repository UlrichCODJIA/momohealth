from rest_framework import serializers
from .models import CustomUser, ConfirmationCode, Role, UserRole

from rest_framework_simplejwt.serializers import TokenObtainPairSerializer


class CustomUserSerializer(serializers.ModelSerializer):
    class Meta:
        model = CustomUser
        fields = [
            "id",
            "mobile_number",
            "email",
            "first_name",
            "last_name",
            "is_verified",
            "created_at",
            "updated_at",
        ]


class ConfirmationCodeSerializer(serializers.ModelSerializer):
    class Meta:
        model = ConfirmationCode
        fields = "__all__"


class RoleSerializer(serializers.ModelSerializer):
    class Meta:
        model = Role
        fields = "__all__"


class UserRoleSerializer(serializers.ModelSerializer):
    # user = CustomUserSerializer(read_only=True)
    class Meta:
        model = UserRole
        fields = "__all__"


class CustomTokenObtainPairSerializer(TokenObtainPairSerializer):
    default_error_messages = {
        "no_active_account": "Aucun compte actif trouvé avec ces informations de connexion.",
        "no_active_couturier_account": "Aucun compte Couturier actif trouvé avec ces informations de connexion.",
        "inactive": "Ce compte est désactivé.",
    }
