import '/presentation/video_call_screen/video_call_screen.dart';
import 'package:nb_utils/nb_utils.dart';

import 'controller/notification_one_controller.dart';
import '/core/app_export.dart';
import '/widgets/app_bar/appbar_leading_image.dart';
import '/widgets/app_bar/appbar_subtitle_one.dart';
import '/widgets/app_bar/custom_app_bar.dart';
import '/widgets/custom_elevated_button.dart';
import '/widgets/custom_outlined_button.dart';
import 'package:flutter/material.dart';

// ignore_for_file: must_be_immutable
class AppointmentScreen extends StatefulWidget {
  const AppointmentScreen({Key? key})
      : super(
          key: key,
        );

  @override
  State<AppointmentScreen> createState() => _AppointmentScreenState();
}

class _AppointmentScreenState extends State<AppointmentScreen> {
  AppointmentController controller = Get.put(AppointmentController());
  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);

    return SafeArea(
      child: Scaffold(
        appBar: _buildAppBar(),
        body: Column(
          children: [
            Obx(() {
              return Container(
                height: 55.h,
                width: Get.width,
                margin: EdgeInsets.symmetric(horizontal: 25.h),
                child: Row(
                  children: [
                    ...controller.optionList
                        .map((e) => Expanded(
                                child: GestureDetector(
                              onTap: () {
                                controller.appointmentOptionSelected.value =
                                    controller.optionList.indexOf(e);
                              },
                              child: Container(
                                height: double.maxFinite,
                                decoration: BoxDecoration(
                                  borderRadius: controller
                                              .appointmentOptionSelected
                                              .value ==
                                          1
                                      ? null
                                      : controller.appointmentOptionSelected
                                                  .value ==
                                              0
                                          ? BorderRadius.horizontal(
                                              left: Radius.circular(24.v))
                                          : BorderRadius.horizontal(
                                              right: Radius.circular(24.v)),
                                  color: controller.optionList.indexOf(e) ==
                                          controller
                                              .appointmentOptionSelected.value
                                      ? Colors.blue
                                      : null,
                                ),
                                child: Text(
                                  e,
                                  style: theme.textTheme.titleSmall,
                                ).center(),
                              ),
                            )))
                        .toList()
                  ],
                ),
              );
            }),
            12.height,
            Expanded(
              child: SingleChildScrollView(
                padding: EdgeInsets.only(top: 17.v),
                child: Container(
                  height: 728.v,
                  width: 325.h,
                  margin: EdgeInsets.symmetric(horizontal: 25.h),
                  child: ListView(
                    children: [
                      _buildCancelRow(),
                      SizedBox(height: 10.v),
                    ],
                  ),
                ),
              ),
            ),
          ],
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
          left: 25.h,
          top: 13.v,
          bottom: 15.v,
        ),
      ),
      centerTitle: true,
      title: AppbarSubtitleOne(
        text: "Appointment".toUpperCase(),
      ),
    );
  }

  /// Section Widget
  Widget _buildCancelRow() {
    return Container(
      padding: EdgeInsets.symmetric(
        horizontal: 15.h,
        vertical: 14.v,
      ),
      decoration: AppDecoration.white.copyWith(
        borderRadius: BorderRadiusStyle.roundedBorder15,
      ),
      child: Padding(
        padding: EdgeInsets.only(
          left: 15.h,
          bottom: 5.v,
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "msg_benefix_pill_remainder".tr,
                  style: theme.textTheme.titleSmall,
                ),
                Opacity(
                  opacity: 0.5,
                  child: Padding(
                    padding: EdgeInsets.only(top: 3.v),
                    child: Text(
                      "lbl_11_45_am".tr,
                      style: theme.textTheme.labelMedium,
                    ),
                  ),
                ),
              ],
            ),
            SizedBox(height: 8.v),
            Opacity(
              opacity: 0.5,
              child: Container(
                width: 225.h,
                margin: EdgeInsets.only(right: 11.h),
                child: Text(
                  "msg_discovered_had_get2".tr,
                  maxLines: 3,
                  overflow: TextOverflow.ellipsis,
                  style: CustomTextStyles.labelLargeOnErrorContainer,
                ),
              ),
            ),
            SizedBox(height: 14.v),
            Padding(
              padding: EdgeInsets.only(right: 16.h),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Expanded(
                    child: CustomOutlinedButton(
                      text: "Appeler".tr,
                      margin: EdgeInsets.only(right: 10.h),
                      onPressed: () {
                        Get.to(() => const VideoCallScreen());
                      },
                    ),
                  ),
                  Expanded(
                    child: CustomElevatedButton(
                      height: 45.v,
                      text: "lbl_stop".tr,
                      margin: EdgeInsets.only(left: 10.h),
                      buttonTextStyle:
                          CustomTextStyles.bodySmallOnPrimaryContainer_2,
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
