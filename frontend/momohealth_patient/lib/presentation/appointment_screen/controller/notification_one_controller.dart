import '../../../models/user_model.dart';
import '../models/status_model.dart';
import '/core/app_export.dart';
import '/presentation/appointment_screen/models/appointment_model.dart';

/// A controller class for the AppointmentScreen.
///
/// This class manages the state of the AppointmentScreen, including the
/// current AppointmentModelObj
class AppointmentController extends GetxController {
  Rx<AppointmentModel> appointmentModelObj = AppointmentModel().obs;
  RxString statusSelected = "pending".obs;

  List<StatusModel> statuses = [
    StatusModel(name: 'En attente', value: 'pending'),
    StatusModel(name: 'Terminée', value: 'completed'),
    StatusModel(name: 'Annulée', value: 'cancelled'),
  ];

// Exemple de données factices pour trois éléments AppointmentModel
  List<AppointmentModel> dummyAppointmentData = [
    AppointmentModel(
      appointmentId: '1',
      userId: 'user_123',
      provider: UserModel(
        id: '123456',
        mobileNumber: '123-456-7890',
        email: 'utilisateur@example.com',
        firstName: 'John',
        lastName: 'Doe',
        isVerified: true,
        createdAt: DateTime.now(),
        updatedAt: DateTime.now(),
      ),
      scheduledTime: DateTime.parse('2023-12-10T15:30:00Z'),
      status: StatusModel(name: 'En attente', value: 'pending'),
      createdAt: DateTime.parse('2023-12-05T15:30:00Z'),
      updatedAt: DateTime.parse('2023-12-05T15:30:00Z'),
    ),
    AppointmentModel(
      appointmentId: '2',
      userId: 'user_456',
      provider: UserModel(
        id: '123456',
        mobileNumber: '123-456-7890',
        email: 'utilisateur@example.com',
        firstName: 'John',
        lastName: 'Doe',
        isVerified: true,
        createdAt: DateTime.now(),
        updatedAt: DateTime.now(),
      ),
      scheduledTime: DateTime.parse('2023-12-12T17:20:00Z'),
      status: StatusModel(name: 'Terminée', value: 'completed'),
      createdAt: DateTime.parse('2023-12-05T16:45:00Z'),
      updatedAt: DateTime.parse('2023-12-05T16:45:00Z'),
    ),
    AppointmentModel(
      appointmentId: '3',
      userId: 'user_789',
      provider: UserModel(
        id: '123456',
        mobileNumber: '123-456-7890',
        email: 'utilisateur@example.com',
        firstName: 'John',
        lastName: 'Doe',
        isVerified: true,
        createdAt: DateTime.now(),
        updatedAt: DateTime.now(),
      ),
      scheduledTime: DateTime.parse('2023-12-15T17:20:00Z'),
      status: StatusModel(name: 'Annulée', value: 'cancelled'),
      createdAt: DateTime.parse('2023-12-05T17:20:00Z'),
      updatedAt: DateTime.parse('2023-12-05T17:20:00Z'),
    ),
  ];
}
