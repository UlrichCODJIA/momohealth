import '/core/app_export.dart';
import '/presentation/report_screen/models/report_model.dart';

/// A controller class for the ReportScreen.
///
/// This class manages the state of the ReportScreen, including the
/// current reportModelObj
class ReportController extends GetxController {
  Rx<ReportModel> reportModelObj = ReportModel().obs;
}
