import '../controller/confirmation_controller.dart';
import 'package:get/get.dart';

/// A binding class for the ConfirmationScreen.
///
/// This class ensures that the ConfirmationController is created when the
/// ConfirmationScreen is first loaded.
class ConfirmationBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => ConfirmationController());
  }
}
