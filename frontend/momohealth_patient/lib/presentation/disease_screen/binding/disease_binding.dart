import '../controller/disease_controller.dart';
import 'package:get/get.dart';

/// A binding class for the DiseaseScreen.
///
/// This class ensures that the DiseaseController is created when the
/// DiseaseScreen is first loaded.
class DiseaseBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => DiseaseController());
  }
}
