from datetime import timedelta
from django.utils import timezone
from django.contrib.auth.base_user import AbstractBaseUser
from django.contrib.auth.models import (
    BaseUserManager,
    PermissionsMixin,
)
from django.db import models
import uuid

class CustomUserManager(BaseUserManager):
    def create_user(self, mobile_number, password=None, **extra_fields):
        if not mobile_number:
            raise ValueError("The Phone Number field must be set")

        user = self.model(mobile_number=mobile_number, **extra_fields)
        user.set_password(password)
        user.save(using=self._db)
        return user

    def create_superuser(self, mobile_number, password=None, **extra_fields):
        user = self.create_user(mobile_number, password, **extra_fields)
        user.is_admin = True
        user.is_staff = True
        user.is_verified = True
        user.is_superuser = True
        user.save()
        return user

class Role(models.Model):    
    id = models.UUIDField(primary_key=True, default=uuid.uuid4, editable=False)
    name = models.CharField(max_length=150, blank=False)
    def __str__(self):
        return self.name
    
class UserRole(models.Model):
    user = models.ForeignKey("CustomUser", on_delete=models.CASCADE, related_name="userRole")
    role = models.ForeignKey(Role, on_delete=models.CASCADE, related_name="userRole")


class CustomUser(AbstractBaseUser, PermissionsMixin):
    id = models.UUIDField(primary_key=True, default=uuid.uuid4, editable=False)
    first_name = models.CharField(max_length=150, blank=False)
    last_name = models.CharField(max_length=150, blank=False)
    email = models.EmailField(unique=True, blank=True, null=True)
    mobile_number = models.CharField(max_length=20, unique=True)
    is_verified = models.BooleanField(default=False)
    created_at = models.DateTimeField(auto_now_add=True)
    updated_at = models.DateTimeField(auto_now=True)

    is_active = models.BooleanField(default=True)
    is_staff = models.BooleanField(default=False)
    is_admin = models.BooleanField(default=False)
    is_superuser = models.BooleanField(default=False)

    objects = CustomUserManager()

    USERNAME_FIELD = "mobile_number"
    REQUIRED_FIELDS = ["first_name", "last_name"]
    

    def save(self, *args, **kwargs):
        super().save(*args, **kwargs)
        role, created = Role.objects.get_or_create(name="Patient")
        UserRole.objects.get_or_create(user=self, role=role)
        super().save(*args, **kwargs)
    
    def __str__(self):
        return self.mobile_number


class ConfirmationCode(models.Model):
    id = models.UUIDField(primary_key=True, default=uuid.uuid4, editable=False)
    mobile_number = models.CharField(max_length=20)
    code = models.CharField(max_length=5)
    expiration_time = models.DateTimeField(default=timezone.now() + timedelta(minutes=15))    
    created_at = models.DateTimeField(auto_now_add=True)

    def __str__(self):
        return f"Code for {self.mobile_number}"

