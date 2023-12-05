import '../health_news_screen/widgets/healthnewslist_item_widget.dart';
import 'controller/health_news_controller.dart';
import 'models/healthnewslist_item_model.dart';
import '/core/app_export.dart';
import '/widgets/app_bar/appbar_leading_image.dart';
import '/widgets/app_bar/appbar_subtitle_one.dart';
import '/widgets/app_bar/custom_app_bar.dart';
import 'package:flutter/material.dart';

class HealthNewsScreen extends GetWidget<HealthNewsController> {
  const HealthNewsScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);
    return SafeArea(
        child: Scaffold(
            appBar: _buildAppBar(),
            body: SizedBox(
                width: double.maxFinite,
                child: Column(children: [
                  SizedBox(height: 14.v),
                  _buildHealthNewsList(),
                  _buildDateSelection()
                ]))));
  }

  /// Section Widget
  PreferredSizeWidget _buildAppBar() {
    return CustomAppBar(
        height: 42.v,
        leadingWidth: 31.h,
        leading: AppbarLeadingImage(
            imagePath: ImageConstant.imgArrowLeft,
            margin: EdgeInsets.only(top: 15.v, bottom: 15.v),
            onTap: () {
              onTapArrowLeft();
            }),
        centerTitle: true,
        title: AppbarSubtitleOne(text: "lbl_health_news".tr));
  }

  /// Section Widget
  Widget _buildHealthNewsList() {
    return Expanded(
        child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 25.h),
            child: Obx(() => ListView.separated(
                physics: const BouncingScrollPhysics(),
                shrinkWrap: true,
                separatorBuilder: (context, index) {
                  return SizedBox(height: 15.v);
                },
                itemCount: controller.healthNewsModelObj.value
                    .healthnewslistItemList.value.length,
                itemBuilder: (context, index) {
                  HealthnewslistItemModel model = controller.healthNewsModelObj
                      .value.healthnewslistItemList.value[index];
                  return HealthnewslistItemWidget(model);
                }))));
  }

  /// Section Widget
  Widget _buildDateSelection() {
    return Container(
        height: 240.v,
        width: double.maxFinite,
        padding: EdgeInsets.symmetric(vertical: 39.v),
        child: Stack(alignment: Alignment.bottomCenter, children: [
          Align(
              alignment: Alignment.bottomCenter,
              child: Container(
                  padding:
                      EdgeInsets.symmetric(horizontal: 158.h, vertical: 10.v),
                  decoration: AppDecoration.outlineOnErrorContainer1,
                  child: Container(
                      height: 58.v,
                      width: 59.h,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(5.h),
                          border: Border.all(
                              color: theme.colorScheme.primary, width: 1.h),
                          gradient: LinearGradient(
                              begin: const Alignment(0.5, 0),
                              end: const Alignment(0.5, 1),
                              colors: [
                                appTheme.blueA200.withOpacity(0.13),
                                appTheme.gray400.withOpacity(0)
                              ]))))),
          Align(
              alignment: Alignment.bottomCenter,
              child: Padding(
                  padding: EdgeInsets.only(top: 105.v, bottom: 14.v),
                  child: Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        const Spacer(),
                        Opacity(
                            opacity: 0.76,
                            child: SizedBox(
                                width: 29.h,
                                child: Text("lbl_19_dec".tr,
                                    maxLines: 2,
                                    overflow: TextOverflow.ellipsis,
                                    textAlign: TextAlign.center,
                                    style: CustomTextStyles
                                        .bodyMediumOnErrorContainer
                                        .copyWith(height: 1.50)))),
                        Opacity(
                            opacity: 0.76,
                            child: Container(
                                width: 29.h,
                                margin: EdgeInsets.only(left: 30.h),
                                child: Text("lbl_20_dec".tr,
                                    maxLines: 2,
                                    overflow: TextOverflow.ellipsis,
                                    textAlign: TextAlign.center,
                                    style: CustomTextStyles
                                        .bodyMediumOnErrorContainer
                                        .copyWith(height: 1.50)))),
                        Container(
                            width: 29.h,
                            margin: EdgeInsets.only(left: 30.h),
                            child: Text("lbl_21_dec".tr,
                                maxLines: 2,
                                overflow: TextOverflow.ellipsis,
                                textAlign: TextAlign.center,
                                style: CustomTextStyles.titleSmallPrimary
                                    .copyWith(height: 1.50))),
                        Opacity(
                            opacity: 0.3,
                            child: Container(
                                width: 29.h,
                                margin: EdgeInsets.only(left: 30.h),
                                child: Text("lbl_22_dec".tr,
                                    maxLines: 2,
                                    overflow: TextOverflow.ellipsis,
                                    textAlign: TextAlign.center,
                                    style: CustomTextStyles
                                        .bodyMediumOnErrorContainer_2
                                        .copyWith(height: 1.50)))),
                        Opacity(
                            opacity: 0.3,
                            child: Container(
                                width: 29.h,
                                margin: EdgeInsets.only(left: 30.h),
                                child: Text("lbl_23_dec".tr,
                                    maxLines: 2,
                                    overflow: TextOverflow.ellipsis,
                                    textAlign: TextAlign.center,
                                    style: CustomTextStyles
                                        .bodyMediumOnErrorContainer_2
                                        .copyWith(height: 1.50)))),
                        Opacity(
                            opacity: 0.3,
                            child: Container(
                                width: 29.h,
                                margin: EdgeInsets.only(left: 30.h),
                                child: Text("lbl_24_dec".tr,
                                    maxLines: 2,
                                    overflow: TextOverflow.ellipsis,
                                    textAlign: TextAlign.center,
                                    style: CustomTextStyles
                                        .bodyMediumOnErrorContainer_2
                                        .copyWith(height: 1.50))))
                      ])))
        ]));
  }

  /// Navigates to the previous screen.
  onTapArrowLeft() {
    Get.back();
  }
}
