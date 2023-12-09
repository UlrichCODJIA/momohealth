import '/core/app_export.dart';
import '/presentation/video_call_screen/models/video_call_model.dart';
import 'package:flutter/material.dart';

/// A controller class for the VideoCallScreen.
///
/// This class manages the state of the VideoCallScreen, including the
/// current videoCallModelObj
class VideoCallController extends GetxController {
  TextEditingController messageController = TextEditingController();

  Rx<VideoCallModel> videoCallModelObj = VideoCallModel().obs;

  @override
  void onClose() {
    super.onClose();
    messageController.dispose();
  }
}
