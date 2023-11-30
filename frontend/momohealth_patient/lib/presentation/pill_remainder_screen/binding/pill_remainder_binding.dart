import '../controller/pill_remainder_controller.dart';
import 'package:get/get.dart';

/// A binding class for the PillRemainderScreen.
///
/// This class ensures that the PillRemainderController is created when the
/// PillRemainderScreen is first loaded.
class PillRemainderBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => PillRemainderController());
  }
}
