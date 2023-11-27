
from django.urls import path

from .views import AppointmentCreateView, cancel_appointment, get_consultation_note
urlpatterns = [
    path('book/', AppointmentCreateView.as_view(), name='book'),
    path('cancel/', cancel_appointment, name='cancel'),
    path('consultation/<appointment_id>/', get_consultation_note, name='consultation'),
]
