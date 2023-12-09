import '../controller/message_one_controller.dart';
import 'package:get/get.dart';

/// A binding class for the MessageOneScreen.
///
/// This class ensures that the MessageOneController is created when the
/// MessageOneScreen is first loaded.
class MessageOneBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => MessageOneController());
  }
}
