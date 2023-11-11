
from django.urls import path

from .views import PrescriptionList, create_or_update_order, get_medication_availability
# PrescriptionCreateView, 
urlpatterns = [
    path('order/', create_or_update_order, name='order'),
    path('history/', PrescriptionList.as_view(), name='history'),
    # path('create-prescription/', PrescriptionCreateView.as_view(), name='create-prescription'),
    path('availability/<pk>/', get_medication_availability, name='availability'),
]
