import 'controller/health_news_one_controller.dart';
import '/core/app_export.dart';
import '/widgets/custom_elevated_button.dart';
import '/widgets/custom_icon_button.dart';
import 'package:flutter/material.dart';

class HealthNewsOneScreen extends GetWidget<HealthNewsOneController> {
  const HealthNewsOneScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);
    return SafeArea(
        child: Scaffold(
            body: SizedBox(
                width: double.maxFinite,
                child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      SizedBox(
                          height: 593.v,
                          width: double.maxFinite,
                          child: Stack(
                              alignment: Alignment.bottomCenter,
                              children: [
                                Align(
                                    alignment: Alignment.topCenter,
                                    child: SizedBox(
                                        height: 477.v,
                                        width: double.maxFinite,
                                        child: Stack(
                                            alignment: Alignment.topLeft,
                                            children: [
                                              CustomImageView(
                                                  imagePath: ImageConstant
                                                      .imgRectangle225,
                                                  height: 477.v,
                                                  width: 375.h,
                                                  alignment: Alignment.center),
                                              Padding(
                                                  padding: EdgeInsets.only(
                                                      left: 25.h, top: 10.v),
                                                  child: CustomIconButton(
                                                      height: 40.adaptSize,
                                                      width: 40.adaptSize,
                                                      padding:
                                                          EdgeInsets.all(14.h),
                                                      decoration:
                                                          IconButtonStyleHelper
                                                              .fillOnPrimaryContainer,
                                                      alignment:
                                                          Alignment.topLeft,
                                                      onTap: () {
                                                        onTapBtnArrowLeft();
                                                      },
                                                      child: CustomImageView(
                                                          imagePath: ImageConstant
                                                              .imgArrowLeft)))
                                            ]))),
                                _buildDoctorProfile(),
                                Padding(
                                    padding: EdgeInsets.only(left: 25.h),
                                    child: _buildTotalRating(
                                        ratingValue: "lbl_1000".tr,
                                        totalRating: "lbl_total_patients".tr)),
                                Padding(
                                    padding: EdgeInsets.only(right: 25.h),
                                    child: _buildTotalRating(
                                        ratingValue: "lbl_5_0".tr,
                                        totalRating: "lbl_total_rating".tr))
                              ])),
                      SizedBox(height: 20.v),
                      Padding(
                          padding: EdgeInsets.only(left: 25.h),
                          child: Row(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Container(
                                    margin: EdgeInsets.only(bottom: 4.v),
                                    padding: EdgeInsets.all(11.h),
                                    decoration: AppDecoration.fillLightBlue
                                        .copyWith(
                                            borderRadius: BorderRadiusStyle
                                                .roundedBorder10),
                                    child: Container(
                                        height: 15.adaptSize,
                                        width: 15.adaptSize,
                                        padding: EdgeInsets.symmetric(
                                            horizontal: 5.h, vertical: 2.v),
                                        decoration: AppDecoration.white
                                            .copyWith(
                                                borderRadius: BorderRadiusStyle
                                                    .roundedBorder7),
                                        child: CustomImageView(
                                            imagePath: ImageConstant
                                                .imgVectorOnprimarycontainer7x3,
                                            height: 7.v,
                                            width: 3.h,
                                            alignment: Alignment.topRight))),
                                Padding(
                                    padding: EdgeInsets.only(left: 15.h),
                                    child: Column(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          Text("msg_morning_8_am_night".tr,
                                              style: theme.textTheme.bodyLarge),
                                          SizedBox(height: 5.v),
                                          Opacity(
                                              opacity: 0.7,
                                              child: Text("lbl_meeting_time".tr,
                                                  style: CustomTextStyles
                                                      .bodySmallOnErrorContainer_2))
                                        ]))
                              ])),
                      SizedBox(height: 5.v)
                    ])),
            bottomNavigationBar: _buildGetAppointmentButton()));
  }

  /// Section Widget
  Widget _buildDoctorProfile() {
    return Align(
        alignment: Alignment.bottomCenter,
        child: Container(
            width: double.maxFinite,
            margin: EdgeInsets.only(top: 383.v, bottom: 56.v),
            padding: EdgeInsets.symmetric(horizontal: 24.h, vertical: 26.v),
            decoration: AppDecoration.outlineGreen
                .copyWith(borderRadius: BorderRadiusStyle.roundedBorder24),
            child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                      padding: EdgeInsets.only(bottom: 47.v),
                      child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text("lbl_dr_brown_hill".tr,
                                style: CustomTextStyles.titleLarge20),
                            SizedBox(height: 6.v),
                            Opacity(
                                opacity: 0.4,
                                child: Text("lbl_cardiologists2".tr,
                                    style: CustomTextStyles
                                        .bodyMediumOnErrorContainer_4))
                          ])),
                  Padding(
                      padding: EdgeInsets.only(top: 6.v, bottom: 59.v),
                      child: CustomIconButton(
                          height: 33.adaptSize,
                          width: 33.adaptSize,
                          padding: EdgeInsets.all(10.h),
                          decoration: IconButtonStyleHelper.fillGray,
                          child: CustomImageView(
                              imagePath: ImageConstant.imgGroup143)))
                ])));
  }

  /// Section Widget
  Widget _buildGetAppointmentButton() {
    return CustomElevatedButton(
        text: "lbl_get_appointment".tr,
        margin: EdgeInsets.only(left: 25.h, right: 25.h, bottom: 30.v),
        buttonStyle: CustomButtonStyles.fillPrimaryTL15,
        buttonTextStyle: CustomTextStyles.bodyMediumOnPrimaryContainer_2);
  }

  /// Common widget
  Widget _buildTotalRating({
    required String ratingValue,
    required String totalRating,
  }) {
    return SizedBox(
        height: 112.v,
        width: 155.h,
        child: Stack(alignment: Alignment.topLeft, children: [
          Align(
              alignment: Alignment.bottomCenter,
              child: Container(
                  padding: EdgeInsets.all(15.h),
                  decoration: AppDecoration.fillBlue5003.copyWith(
                      borderRadius: BorderRadiusStyle.roundedBorder15),
                  child: Column(
                      mainAxisSize: MainAxisSize.min,
                      crossAxisAlignment: CrossAxisAlignment.end,
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        SizedBox(height: 10.v),
                        Text(ratingValue,
                            style: CustomTextStyles.headlineSmallRegular
                                .copyWith(
                                    color: theme.colorScheme.onErrorContainer
                                        .withOpacity(1))),
                        SizedBox(height: 5.v),
                        Opacity(
                            opacity: 0.6,
                            child: Text(totalRating,
                                style: CustomTextStyles
                                    .bodySmallOnErrorContainer_4
                                    .copyWith(
                                        color: theme
                                            .colorScheme.onErrorContainer
                                            .withOpacity(0.56))))
                      ]))),
          Padding(
              padding: EdgeInsets.only(left: 15.h),
              child: CustomIconButton(
                  height: 54.adaptSize,
                  width: 54.adaptSize,
                  padding: EdgeInsets.all(14.h),
                  decoration: IconButtonStyleHelper.fillLightBlue,
                  alignment: Alignment.topLeft,
                  child: CustomImageView(imagePath: ImageConstant.imgGroup137)))
        ]));
  }

  /// Navigates to the previous screen.
  onTapBtnArrowLeft() {
    Get.back();
  }
}
