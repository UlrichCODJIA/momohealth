import '../controller/help_tab_container_controller.dart';
import 'package:get/get.dart';

/// A binding class for the HelpTabContainerScreen.
///
/// This class ensures that the HelpTabContainerController is created when the
/// HelpTabContainerScreen is first loaded.
class HelpTabContainerBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => HelpTabContainerController());
  }
}
