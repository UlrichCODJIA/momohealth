import '../controller/get_schedule_controller.dart';
import 'package:get/get.dart';

/// A binding class for the GetScheduleScreen.
///
/// This class ensures that the GetScheduleController is created when the
/// GetScheduleScreen is first loaded.
class GetScheduleBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => GetScheduleController());
  }
}
