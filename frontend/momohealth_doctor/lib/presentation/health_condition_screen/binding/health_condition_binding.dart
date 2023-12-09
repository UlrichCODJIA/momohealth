import '../controller/health_condition_controller.dart';
import 'package:get/get.dart';

/// A binding class for the HealthConditionScreen.
///
/// This class ensures that the HealthConditionController is created when the
/// HealthConditionScreen is first loaded.
class HealthConditionBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => HealthConditionController());
  }
}
