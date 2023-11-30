import '/core/app_export.dart';
import '/presentation/appointment_screen/models/appointment_model.dart';

/// A controller class for the AppointmentScreen.
///
/// This class manages the state of the AppointmentScreen, including the
/// current AppointmentModelObj
class AppointmentController extends GetxController {
  Rx<AppointmentModel> appointmentModelObj = AppointmentModel().obs;
  RxInt appointmentOptionSelected = 1.obs;
  List optionList = ["En attente", "Terminée", "Annulée"];
}
