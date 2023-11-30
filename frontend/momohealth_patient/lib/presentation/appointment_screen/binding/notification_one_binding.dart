import '../controller/notification_one_controller.dart';
import 'package:get/get.dart';

/// A binding class for the AppointmentScreen.
///
/// This class ensures that the AppointmentController is created when the
/// AppointmentScreen is first loaded.
class AppointmentBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => AppointmentController());
  }
}
