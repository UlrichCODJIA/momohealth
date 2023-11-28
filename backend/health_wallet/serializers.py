from rest_framework import serializers

from account.serializers import CustomUserSerializer
from .models import Wallet, Transaction


class WalletSerializer(serializers.ModelSerializer):
    # user = CustomUserSerializer(read_only=True)
    class Meta:
        model = Wallet
        fields = "__all__"


class TransactionSerializer(serializers.ModelSerializer):
    # wallet = WalletSerializer(read_only=True)
    class Meta:
        model = Transaction
        fields = "__all__"

