import '../controller/notification_one_controller.dart';
import 'package:get/get.dart';

/// A binding class for the NotificationScreen.
///
/// This class ensures that the NotificationOneController is created when the
/// NotificationScreen is first loaded.
class NotificationOneBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => NotificationOneController());
  }
}
