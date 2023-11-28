from rest_framework import routers
from django.urls import include, path

from account.views import (
    CustomTokenObtainPairView,
    CustomUserCreate,
    CustomUserViewSet,
    ForgotPasswordView,
    ResetPasswordView,
    SendCode,
)
from rest_framework_simplejwt.views import (
    # TokenObtainPairView,
    TokenRefreshView,
)


urlpatterns = [
    path("login/", CustomTokenObtainPairView.as_view(), name="token_obtain_pair"),
    path("forgot-password/", ForgotPasswordView.as_view(), name="forgot_password"),
    path("reset-password/", ResetPasswordView.as_view(), name="reset_password"),
    path("token/refresh/", TokenRefreshView.as_view(), name="token_refresh"),
    path("send-code/", SendCode.as_view(), name="code"),
    path("register/", CustomUserCreate.as_view(), name="register"),
    path("profile/", CustomUserViewSet.as_view(), name="user"),
]
