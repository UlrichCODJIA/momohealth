import '/core/app_export.dart';
import '/presentation/hospital_page/models/hospital_model.dart';

/// A controller class for the HospitalPage.
///
/// This class manages the state of the HospitalPage, including the
/// current hospitalModelObj
class HospitalController extends GetxController {
  HospitalController(this.hospitalModelObj);

  Rx<HospitalModel> hospitalModelObj;
}
