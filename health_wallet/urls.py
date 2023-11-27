
from django.urls import path

from .views import TransactionList, withdraw, deposit
urlpatterns = [
    path('transactions/', TransactionList.as_view(), name='transactions'),
    path('deposit/', deposit, name='deposit'),
    path('withdraw/', withdraw, name='withdraw'),
]
