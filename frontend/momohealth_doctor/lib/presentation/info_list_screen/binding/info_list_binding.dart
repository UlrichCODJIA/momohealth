import '../controller/info_list_controller.dart';
import 'package:get/get.dart';

import '../info_list_screen.dart';

/// A binding class for the NotificationScreen.
///
/// This class ensures that the NotificationOneController is created when the
/// NotificationScreen is first loaded.
class InfoListBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => InfoListScreen());
  }
}
