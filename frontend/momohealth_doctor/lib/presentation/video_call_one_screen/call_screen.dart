import '../../widgets/app_bar/appbar_leading_image.dart';
import '../../widgets/app_bar/appbar_subtitle_one.dart';
import '../../widgets/app_bar/custom_app_bar.dart';
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
        appBar: _buildAppBar(),
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
          child: VideoCallComponent(
            callID: widget.callID,
          ),
        ),
      ),
    );
  }

  /// Section Widget
  PreferredSizeWidget _buildAppBar() {
    return CustomAppBar(
      height: 40.v,
      leadingWidth: 31.h,
      leading: AppbarLeadingImage(
          imagePath: ImageConstant.imgVectorOnerrorcontainer,
          margin: EdgeInsets.only(
            top: 13.v,
            bottom: 15.v,
          ),
          onTap: () {
            Get.back();
          }),
      centerTitle: true,
      title: AppbarSubtitleOne(
        text: "Télé-medecine".toUpperCase(),
      ),
    );
  }
}
