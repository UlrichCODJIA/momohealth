import '/core/app_export.dart';
import '/presentation/ambulance_page/models/ambulance_model.dart';

/// A controller class for the AmbulancePage.
///
/// This class manages the state of the AmbulancePage, including the
/// current ambulanceModelObj
class AmbulanceController extends GetxController {
  AmbulanceController(this.ambulanceModelObj);

  Rx<AmbulanceModel> ambulanceModelObj;
}
