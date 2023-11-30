import 'controller/disease_controller.dart';
import '/core/app_export.dart';
import '/widgets/app_bar/appbar_leading_image.dart';
import '/widgets/app_bar/appbar_subtitle_one.dart';
import '/widgets/app_bar/custom_app_bar.dart';
import 'package:flutter/material.dart';

class DiseaseScreen extends GetWidget<DiseaseController> {
  const DiseaseScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);
    return SafeArea(
        child: Scaffold(
            backgroundColor:
                theme.colorScheme.onPrimaryContainer.withOpacity(1),
            appBar: _buildAppBar(),
            body: Container(
                width: double.maxFinite,
                padding: EdgeInsets.symmetric(horizontal: 25.h, vertical: 14.v),
                child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      CustomImageView(
                          imagePath: ImageConstant.imgImage225x325,
                          height: 225.v,
                          width: 325.h,
                          radius: BorderRadius.circular(10.h)),
                      SizedBox(height: 23.v),
                      Text("msg_heart_attack_symptoms".tr,
                          style: theme.textTheme.titleSmall),
                      SizedBox(height: 15.v),
                      _buildTextOne(),
                      SizedBox(height: 15.v),
                      Padding(
                          padding: EdgeInsets.only(right: 35.h),
                          child: Row(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Opacity(
                                    opacity: 0.5,
                                    child: Container(
                                        height: 10.adaptSize,
                                        width: 10.adaptSize,
                                        margin: EdgeInsets.only(
                                            top: 2.v, bottom: 3.v),
                                        decoration: BoxDecoration(
                                            color: appTheme.redA200
                                                .withOpacity(0.53),
                                            borderRadius:
                                                BorderRadius.circular(5.h)))),
                                Opacity(
                                    opacity: 0.6,
                                    child: Padding(
                                        padding: EdgeInsets.only(left: 10.h),
                                        child: Text("msg_nausea_indigestion".tr,
                                            style: CustomTextStyles
                                                .labelLargeOnErrorContainer_3)))
                              ])),
                      SizedBox(height: 15.v),
                      Row(children: [
                        Opacity(
                            opacity: 0.5,
                            child: Container(
                                height: 10.adaptSize,
                                width: 10.adaptSize,
                                margin: EdgeInsets.only(top: 3.v, bottom: 2.v),
                                decoration: BoxDecoration(
                                    color: appTheme.redA200.withOpacity(0.53),
                                    borderRadius: BorderRadius.circular(5.h)))),
                        Opacity(
                            opacity: 0.6,
                            child: Padding(
                                padding: EdgeInsets.only(left: 10.h),
                                child: Text("msg_shortness_of_breath".tr,
                                    style: CustomTextStyles
                                        .labelLargeOnErrorContainer_3)))
                      ]),
                      SizedBox(height: 17.v),
                      Row(children: [
                        Opacity(
                            opacity: 0.5,
                            child: Container(
                                height: 10.adaptSize,
                                width: 10.adaptSize,
                                margin: EdgeInsets.only(top: 3.v, bottom: 2.v),
                                decoration: BoxDecoration(
                                    color: appTheme.redA200.withOpacity(0.53),
                                    borderRadius: BorderRadius.circular(5.h)))),
                        Opacity(
                            opacity: 0.6,
                            child: Padding(
                                padding: EdgeInsets.only(left: 10.h),
                                child: Text("lbl_cold_sweat".tr,
                                    style: CustomTextStyles
                                        .labelLargeOnErrorContainer_3)))
                      ]),
                      SizedBox(height: 18.v),
                      Row(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Opacity(
                                opacity: 0.5,
                                child: Container(
                                    height: 10.adaptSize,
                                    width: 10.adaptSize,
                                    margin:
                                        EdgeInsets.only(top: 2.v, bottom: 3.v),
                                    decoration: BoxDecoration(
                                        color:
                                            appTheme.redA200.withOpacity(0.53),
                                        borderRadius:
                                            BorderRadius.circular(5.h)))),
                            Opacity(
                                opacity: 0.6,
                                child: Padding(
                                    padding: EdgeInsets.only(left: 10.h),
                                    child: Text("lbl_fatigue".tr,
                                        style: CustomTextStyles
                                            .labelLargeOnErrorContainer_3)))
                          ]),
                      SizedBox(height: 17.v),
                      Row(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Opacity(
                                opacity: 0.5,
                                child: Container(
                                    height: 10.adaptSize,
                                    width: 10.adaptSize,
                                    margin:
                                        EdgeInsets.only(top: 2.v, bottom: 3.v),
                                    decoration: BoxDecoration(
                                        color:
                                            appTheme.redA200.withOpacity(0.53),
                                        borderRadius:
                                            BorderRadius.circular(5.h)))),
                            Opacity(
                                opacity: 0.6,
                                child: Padding(
                                    padding: EdgeInsets.only(left: 10.h),
                                    child: Text("msg_lightheadedness".tr,
                                        style: CustomTextStyles
                                            .labelLargeOnErrorContainer_3)))
                          ]),
                      SizedBox(height: 22.v),
                      Container(
                          width: 314.h,
                          margin: EdgeInsets.only(right: 10.h),
                          child: Text("msg_what_to_do_if_you".tr,
                              maxLines: 2,
                              overflow: TextOverflow.ellipsis,
                              style: theme.textTheme.titleSmall!
                                  .copyWith(height: 1.50))),
                      SizedBox(height: 14.v),
                      Padding(
                          padding: EdgeInsets.only(right: 85.h),
                          child: Row(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Opacity(
                                    opacity: 0.5,
                                    child: Container(
                                        height: 10.adaptSize,
                                        width: 10.adaptSize,
                                        margin: EdgeInsets.only(
                                            top: 2.v, bottom: 3.v),
                                        decoration: BoxDecoration(
                                            color: appTheme.green800
                                                .withOpacity(0.53),
                                            borderRadius:
                                                BorderRadius.circular(5.h)))),
                                Opacity(
                                    opacity: 0.7,
                                    child: Padding(
                                        padding: EdgeInsets.only(left: 10.h),
                                        child: Text("msg_call_911_or_your".tr,
                                            style: CustomTextStyles
                                                .labelLargeOnErrorContainer_1)))
                              ])),
                      SizedBox(height: 16.v),
                      Row(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Opacity(
                                opacity: 0.5,
                                child: Container(
                                    height: 10.adaptSize,
                                    width: 10.adaptSize,
                                    margin:
                                        EdgeInsets.only(top: 2.v, bottom: 3.v),
                                    decoration: BoxDecoration(
                                        color:
                                            appTheme.green800.withOpacity(0.53),
                                        borderRadius:
                                            BorderRadius.circular(5.h)))),
                            Opacity(
                                opacity: 0.7,
                                child: Padding(
                                    padding: EdgeInsets.only(left: 10.h),
                                    child: Text("msg_chew_and_swallow".tr,
                                        style: CustomTextStyles
                                            .labelLargeOnErrorContainer_1)))
                          ]),
                      SizedBox(height: 17.v),
                      Row(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Opacity(
                                opacity: 0.5,
                                child: Container(
                                    height: 10.adaptSize,
                                    width: 10.adaptSize,
                                    margin:
                                        EdgeInsets.only(top: 2.v, bottom: 3.v),
                                    decoration: BoxDecoration(
                                        color:
                                            appTheme.green800.withOpacity(0.53),
                                        borderRadius:
                                            BorderRadius.circular(5.h)))),
                            Opacity(
                                opacity: 0.7,
                                child: Padding(
                                    padding: EdgeInsets.only(left: 10.h),
                                    child: Text("msg_take_nitroglycerin".tr,
                                        style: CustomTextStyles
                                            .labelLargeOnErrorContainer_1)))
                          ]),
                      SizedBox(height: 17.v),
                      Padding(
                          padding: EdgeInsets.only(right: 92.h),
                          child: Row(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Opacity(
                                    opacity: 0.5,
                                    child: Container(
                                        height: 10.adaptSize,
                                        width: 10.adaptSize,
                                        margin: EdgeInsets.only(
                                            top: 2.v, bottom: 3.v),
                                        decoration: BoxDecoration(
                                            color: appTheme.green800
                                                .withOpacity(0.53),
                                            borderRadius:
                                                BorderRadius.circular(5.h)))),
                                Opacity(
                                    opacity: 0.7,
                                    child: Padding(
                                        padding: EdgeInsets.only(left: 10.h),
                                        child: Text("msg_begin_cpr_if_the".tr,
                                            style: CustomTextStyles
                                                .labelLargeOnErrorContainer_1)))
                              ]))
                    ]))));
  }

  /// Section Widget
  PreferredSizeWidget _buildAppBar() {
    return CustomAppBar(
        leadingWidth: 31.h,
        leading: AppbarLeadingImage(
            imagePath: ImageConstant.imgArrowLeft,
            margin: EdgeInsets.only(left: 25.h, top: 15.v, bottom: 17.v),
            onTap: () {
              onTapArrowLeft();
            }),
        centerTitle: true,
        title: AppbarSubtitleOne(text: "lbl_disease2".tr.toUpperCase()));
  }

  /// Section Widget
  Widget _buildTextOne() {
    return Padding(
        padding: EdgeInsets.only(right: 6.h),
        child: Row(crossAxisAlignment: CrossAxisAlignment.start, children: [
          Opacity(
              opacity: 0.5,
              child: Container(
                  height: 10.adaptSize,
                  width: 10.adaptSize,
                  margin: EdgeInsets.only(top: 2.v, bottom: 41.v),
                  decoration: BoxDecoration(
                      color: appTheme.redA200.withOpacity(0.53),
                      borderRadius: BorderRadius.circular(5.h)))),
          Expanded(
              child: Opacity(
                  opacity: 0.6,
                  child: Container(
                      width: 298.h,
                      margin: EdgeInsets.only(left: 10.h),
                      child: Text("msg_pressure_tightness".tr,
                          maxLines: 3,
                          overflow: TextOverflow.ellipsis,
                          style: CustomTextStyles.labelLargeOnErrorContainer_3
                              .copyWith(height: 1.50)))))
        ]));
  }

  /// Navigates to the previous screen.
  onTapArrowLeft() {
    Get.back();
  }
}
