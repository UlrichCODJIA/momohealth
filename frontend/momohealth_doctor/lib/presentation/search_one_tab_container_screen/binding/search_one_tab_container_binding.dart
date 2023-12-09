import '../controller/search_one_tab_container_controller.dart';
import 'package:get/get.dart';

/// A binding class for the SearchOneTabContainerScreen.
///
/// This class ensures that the SearchOneTabContainerController is created when the
/// SearchOneTabContainerScreen is first loaded.
class SearchOneTabContainerBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => SearchOneTabContainerController());
  }
}
