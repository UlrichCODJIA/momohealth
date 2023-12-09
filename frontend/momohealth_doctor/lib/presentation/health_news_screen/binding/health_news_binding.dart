import '../controller/health_news_controller.dart';
import 'package:get/get.dart';

/// A binding class for the HealthNewsScreen.
///
/// This class ensures that the HealthNewsController is created when the
/// HealthNewsScreen is first loaded.
class HealthNewsBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => HealthNewsController());
  }
}
