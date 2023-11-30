import '/core/utils/size_utils.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:nb_utils/nb_utils.dart';
import '../../core/utils/image_constant.dart';
import '../../theme/theme_helper.dart';
import '../../widgets/app_bar/appbar_leading_iconbutton.dart';
import 'component.dart';

class VideoCallScreen extends StatefulWidget {
  static String tag = '/VideoCallScreen';

  const VideoCallScreen({Key? key, required this.callID}) : super(key: key);
  final String callID;

  @override
  VideoCallScreenState createState() => VideoCallScreenState();
}

class VideoCallScreenState extends State<VideoCallScreen> {
  @override
  void initState() {
    super.initState();
    init();
  }

  Future<void> init() async {}

  @override
  void setState(fn) {
    if (mounted) super.setState(fn);
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: theme.colorScheme.onPrimaryContainer.withOpacity(1),
        body: Container(
          padding: const EdgeInsets.only(
              // left: 16.0, right: 16.0,
              top: 8.0
              // , bottom: 8.0
              ),
          decoration: boxDecorationWithRoundedCorners(
            borderRadius: radiusOnly(topRight: 32),
            backgroundColor:
                theme.colorScheme.onPrimaryContainer.withOpacity(1),
          ),
          child: Column(
            children: [
              Row(
                children: [
                  8.width,
                  AppbarLeadingIconbutton(
                      imagePath: ImageConstant.imgArrowLeft,
                      margin: EdgeInsets.only(left: 25.h, bottom: 80.v),
                      onTap: () {
                        Get.back();
                      }),
                  8.width,
                  Text('video_call'.tr, style: boldTextStyle()).expand(),
                ],
              ),
              Expanded(
                  child: VideoCallComponent(
                callID: widget.callID,
              )),
            ],
          ),
        ),
      ),
    );
  }
}
