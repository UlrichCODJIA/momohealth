import '../controller/health_news_one_controller.dart';
import 'package:get/get.dart';

/// A binding class for the HealthNewsOneScreen.
///
/// This class ensures that the HealthNewsOneController is created when the
/// HealthNewsOneScreen is first loaded.
class HealthNewsOneBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => HealthNewsOneController());
  }
}
