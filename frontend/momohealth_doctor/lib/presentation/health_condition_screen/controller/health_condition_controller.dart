import '/core/app_export.dart';
import '/presentation/health_condition_screen/models/health_condition_model.dart';

/// A controller class for the HealthConditionScreen.
///
/// This class manages the state of the HealthConditionScreen, including the
/// current healthConditionModelObj
class HealthConditionController extends GetxController {
  Rx<HealthConditionModel> healthConditionModelObj = HealthConditionModel().obs;
}
