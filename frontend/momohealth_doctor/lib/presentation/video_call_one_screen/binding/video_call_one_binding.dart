import '../controller/video_call_one_controller.dart';
import 'package:get/get.dart';

/// A binding class for the VideoCallOneScreen.
///
/// This class ensures that the VideoCallOneController is created when the
/// VideoCallOneScreen is first loaded.
class VideoCallOneBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => VideoCallOneController());
  }
}
