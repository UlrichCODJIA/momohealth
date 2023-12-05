import 'package:intl/intl.dart';
import 'package:momohealth_patient/presentation/appointment_screen/models/status_model.dart';

import '../video_call_one_screen/call_screen.dart';
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

import 'models/appointment_model.dart';

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
                    ...controller.statuses
                        .map((e) => Expanded(
                                child: GestureDetector(
                              onTap: () {
                                controller.statusSelected.value = e.value!;
                              },
                              child: Container(
                                height: double.maxFinite,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(24.v),
                                  // controller.statusSelected.value == e.value
                                  //     ? null
                                  //     : controller.statusSelected.value == 0
                                  //         ? BorderRadius.horizontal(
                                  //             left: Radius.circular(24.v))
                                  //         : BorderRadius.horizontal(
                                  //             right: Radius.circular(24.v)),
                                  color:
                                      e.value == controller.statusSelected.value
                                          ? Colors.blue
                                          : null,
                                ),
                                child: Text(
                                  e.name!,
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
              child: Obx(() {
                return ListView.builder(
                  itemCount: controller.dummyAppointmentData
                      .where((element) =>
                          element.status!.value ==
                          controller.statusSelected.value)
                      .length,
                  itemBuilder: (BuildContext context, int index) {
                    return _buildRow(controller.dummyAppointmentData
                        .where((element) =>
                            element.status!.value ==
                            controller.statusSelected.value)
                        .toList()[index]);
                  },
                );
              }),
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
      // leadingWidth: 31.h,
      // leading: AppbarLeadingImage(
      //   imagePath: ImageConstant.imgVectorOnerrorcontainer,
      //   margin: EdgeInsets.only(
      //     left: 25.h,
      //     top: 13.v,
      //     bottom: 15.v,
      //   ),
      // ),
      centerTitle: true,
      title: AppbarSubtitleOne(
        text: "Rendez-vous".toUpperCase(),
      ),
    );
  }

  /// Section Widget
  Widget _buildRow(AppointmentModel appointment) {
    return Container(
      padding: EdgeInsets.symmetric(
        horizontal: 15.h,
        vertical: 14.v,
      ),
      margin: const EdgeInsets.symmetric(vertical: 6, horizontal: 17),
      decoration: AppDecoration.white.copyWith(
        color: appointment.status!.value == "cancelled"
            ? theme.colorScheme.errorContainer.withOpacity(.2)
            : null,
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
            Text(
              "Dr. ${appointment.provider!.username}",
              style: theme.textTheme.titleLarge,
            ),
            SizedBox(height: 8.v),
            Opacity(
              opacity: 0.5,
              child: Padding(
                padding: EdgeInsets.only(top: 3.v),
                child: Text(
                  DateFormat("d MMM y à HH:mm")
                      .format(appointment.scheduledTime!),
                  style: CustomTextStyles.labelLargeOnErrorContainer,
                ),
              ),
            ),
            SizedBox(height: 14.v),
            if (appointment.status!.value == "pending")
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
                          Get.to(() => const VideoCallScreen(
                                callID: "12345678",
                              ));
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
