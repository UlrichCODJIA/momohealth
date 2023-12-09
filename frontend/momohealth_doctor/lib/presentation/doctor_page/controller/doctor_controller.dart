import '/core/app_export.dart';
import '/presentation/doctor_page/models/doctor_model.dart';

/// A controller class for the DoctorPage.
///
/// This class manages the state of the DoctorPage, including the
/// current doctorModelObj
class DoctorController extends GetxController {
  DoctorController(this.doctorModelObj);

  Rx<DoctorModel> doctorModelObj;
}
