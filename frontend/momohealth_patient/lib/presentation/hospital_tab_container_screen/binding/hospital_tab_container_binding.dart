import '../controller/hospital_tab_container_controller.dart';
import 'package:get/get.dart';

/// A binding class for the HospitalTabContainerScreen.
///
/// This class ensures that the HospitalTabContainerController is created when the
/// HospitalTabContainerScreen is first loaded.
class HospitalTabContainerBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => HospitalTabContainerController());
  }
}
