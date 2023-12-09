import '/core/app_export.dart';
import '/presentation/google_calender_bottomsheet/models/google_calender_model.dart';

/// A controller class for the GoogleCalenderBottomsheet.
///
/// This class manages the state of the GoogleCalenderBottomsheet, including the
/// current googleCalenderModelObj
class GoogleCalenderController extends GetxController {
  Rx<GoogleCalenderModel> googleCalenderModelObj = GoogleCalenderModel().obs;
}
