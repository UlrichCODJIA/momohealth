import '/core/app_export.dart';
import '/presentation/video_call_one_screen/models/video_call_one_model.dart';

/// A controller class for the VideoCallOneScreen.
///
/// This class manages the state of the VideoCallOneScreen, including the
/// current videoCallOneModelObj
class VideoCallOneController extends GetxController {
  Rx<VideoCallOneModel> videoCallOneModelObj = VideoCallOneModel().obs;
}
