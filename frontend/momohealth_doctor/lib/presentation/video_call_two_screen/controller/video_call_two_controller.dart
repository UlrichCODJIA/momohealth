import '/core/app_export.dart';
import '/presentation/video_call_two_screen/models/video_call_two_model.dart';
import 'package:flutter/material.dart';

/// A controller class for the VideoCallTwoScreen.
///
/// This class manages the state of the VideoCallTwoScreen, including the
/// current videoCallTwoModelObj
class VideoCallTwoController extends GetxController {
  TextEditingController messageController = TextEditingController();

  Rx<VideoCallTwoModel> videoCallTwoModelObj = VideoCallTwoModel().obs;

  @override
  void onClose() {
    super.onClose();
    messageController.dispose();
  }
}
