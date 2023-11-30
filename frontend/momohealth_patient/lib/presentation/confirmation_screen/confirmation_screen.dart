import '/presentation/dashboard/dashboard_screen.dart';
import 'package:intl/intl.dart';

import '../get_schedule_screen/controller/get_schedule_controller.dart';
import '../home_screen/controller/home_controller.dart';
import '../home_screen/home_screen.dart';
import '../subscription_screen/subscription_screen.dart';
import 'controller/confirmation_controller.dart';
import '/core/app_export.dart';
import '/widgets/app_bar/appbar_leading_image.dart';
import '/widgets/app_bar/appbar_subtitle_one.dart';
import '/widgets/app_bar/custom_app_bar.dart';
import '/widgets/custom_elevated_button.dart';
import 'package:flutter/material.dart';

class ConfirmationScreen extends StatefulWidget {
  const ConfirmationScreen({Key? key}) : super(key: key);

  @override
  State<ConfirmationScreen> createState() => _ConfirmationScreenState();
}

class _ConfirmationScreenState extends State<ConfirmationScreen> {
  ConfirmationController controller = Get.put(ConfirmationController());
  GetScheduleController scheduleController = Get.find<GetScheduleController>();
  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);
    return SafeArea(
        child: Scaffold(
            appBar: _buildAppBar(),
            body: Container(
                width: double.maxFinite,
                padding: EdgeInsets.symmetric(horizontal: 25.h, vertical: 45.v),
                child: Column(children: [
                  SizedBox(
                      height: 257.v,
                      width: 271.h,
                      child: Stack(alignment: Alignment.center, children: [
                        Opacity(
                            opacity: 0.05,
                            child: CustomImageView(
                                imagePath: ImageConstant.imgRectangle236,
                                height: 237.v,
                                width: 263.h,
                                radius: BorderRadius.circular(114.h),
                                alignment: Alignment.bottomCenter)),
                        CustomImageView(
                            imagePath: ImageConstant.imgMaskGroup257x263,
                            height: 257.v,
                            width: 263.h,
                            alignment: Alignment.center)
                      ])),
                  SizedBox(height: 66.v),
                  Text("msg_you_have_an_appointment".tr,
                      style: CustomTextStyles.titleLarge20),
                  SizedBox(height: 27.v),
                  _buildAppointmentDetails(),
                  SizedBox(height: 15.v),
                  CustomElevatedButton(
                    text: "Continuer",
                    buttonStyle: CustomButtonStyles.fillPrimaryTL15,
                    onPressed: () {
                      HomeController homeController =
                          Get.find<HomeController>();
                      homeController.currentBottomItem.value = 0;
                      Get.to(const HomeScreen());
                    },
                  ),
                ]))));
  }

  /// Section Widget
  PreferredSizeWidget _buildAppBar() {
    return CustomAppBar(
        height: 40.v,
        leadingWidth: 33.h,
        leading: AppbarLeadingImage(
            imagePath: ImageConstant.imgArrowLeft,
            margin: EdgeInsets.only(left: 27.h, top: 14.v, bottom: 14.v),
            onTap: () {
              onTapArrowLeft();
            }),
        centerTitle: true,
        title: AppbarSubtitleOne(text: "".tr.toUpperCase()));
  }

  /// Section Widget
  Widget _buildAppointmentDetails() {
    return Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
      SizedBox(
          height: 190.v,
          width: 150.h,
          child: Stack(alignment: Alignment.bottomCenter, children: [
            Align(
                alignment: Alignment.topCenter,
                child: Container(
                    height: 190.v - 40.adaptSize,
                    padding:
                        EdgeInsets.symmetric(horizontal: 19.h, vertical: 31.v),
                    decoration: AppDecoration.fillPrimary.copyWith(
                        borderRadius: BorderRadiusStyle.roundedBorder15),
                    child: Column(
                        mainAxisSize: MainAxisSize.min,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                              "${(scheduleController.selectedDay.value + 1).toString().padLeft(2, '0')}\n${DateFormat('MMMM y').format(scheduleController.selectedDate.value)}\n",
                              textAlign: TextAlign.center,
                              style: theme.textTheme.titleMedium!.copyWith(
                                color: theme.colorScheme.onPrimaryContainer
                                    .withOpacity(1),
                                fontSize: 14.fSize,
                              )),
                        ]))),
            Align(
                alignment: Alignment.bottomCenter,
                child: Container(
                    height: 82.adaptSize,
                    width: 82.adaptSize,
                    padding:
                        EdgeInsets.symmetric(horizontal: 26.h, vertical: 24.v),
                    decoration: AppDecoration.outlineGray.copyWith(
                        borderRadius: BorderRadiusStyle.circleBorder41),
                    child: CustomImageView(
                        imagePath: ImageConstant.imgGroup871Green800,
                        height: 24.v,
                        width: 22.h,
                        alignment: Alignment.center)))
          ])),
      SizedBox(
          height: 190.v,
          width: 150.h,
          child: Stack(alignment: Alignment.bottomCenter, children: [
            Align(
                alignment: Alignment.topCenter,
                child: Container(
                    height: 190.v - 40.adaptSize,
                    padding:
                        EdgeInsets.symmetric(horizontal: 37.h, vertical: 30.v),
                    decoration: AppDecoration.fillPrimary.copyWith(
                        borderRadius: BorderRadiusStyle.roundedBorder15),
                    child: Column(
                        mainAxisSize: MainAxisSize.min,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                              "${scheduleController.hourSelected.value.padLeft(2, '0')}:${scheduleController.minuteSelected.value.padLeft(2, '0')}",
                              style: theme.textTheme.titleMedium!.copyWith(
                                color: theme.colorScheme.onPrimaryContainer
                                    .withOpacity(1),
                                fontSize: 14.fSize,
                              ))
                        ]))),
            Align(
                alignment: Alignment.bottomCenter,
                child: Container(
                    height: 82.adaptSize,
                    width: 82.adaptSize,
                    padding: EdgeInsets.all(24.h),
                    decoration: AppDecoration.outlineGray.copyWith(
                        borderRadius: BorderRadiusStyle.circleBorder41),
                    child: CustomImageView(
                        imagePath: ImageConstant.imgGroup870RedA200,
                        height: 26.adaptSize,
                        width: 26.adaptSize,
                        alignment: Alignment.center)))
          ]))
    ]);
  }

  /// Navigates to the previous screen.
  onTapArrowLeft() {
    Get.back();
  }
}
