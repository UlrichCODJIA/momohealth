import '../controller/video_call_two_controller.dart';
import 'package:get/get.dart';

/// A binding class for the VideoCallTwoScreen.
///
/// This class ensures that the VideoCallTwoController is created when the
/// VideoCallTwoScreen is first loaded.
class VideoCallTwoBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => VideoCallTwoController());
  }
}
