import '../health_condition_screen/widgets/healthcondition_item_widget.dart';
import 'controller/health_condition_controller.dart';
import 'models/healthcondition_item_model.dart';
import '/core/app_export.dart';
import '/widgets/app_bar/appbar_leading_image.dart';
import '/widgets/app_bar/appbar_subtitle_one.dart';
import '/widgets/app_bar/custom_app_bar.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg_provider/flutter_svg_provider.dart' as fs;

class HealthConditionScreen extends GetWidget<HealthConditionController> {
  const HealthConditionScreen({Key? key}) : super(key: key);

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
                child: Column(children: [
                  _buildHealthCondition(),
                  SizedBox(height: 25.v),
                  _buildCard(),
                  SizedBox(height: 5.v)
                ]))));
  }

  /// Section Widget
  PreferredSizeWidget _buildAppBar() {
    return CustomAppBar(
        leadingWidth: 31.h,
        leading: AppbarLeadingImage(
            imagePath: ImageConstant.imgArrowLeft,
            margin: EdgeInsets.only(left: 25.h, top: 16.v, bottom: 16.v),
            onTap: () {
              onTapArrowLeft();
            }),
        centerTitle: true,
        title:
            AppbarSubtitleOne(text: "msg_health_condition".tr.toUpperCase()));
  }

  /// Section Widget
  Widget _buildHealthCondition() {
    return Obx(() => GridView.builder(
        shrinkWrap: true,
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            mainAxisExtent: 181.v,
            crossAxisCount: 2,
            mainAxisSpacing: 15.h,
            crossAxisSpacing: 15.h),
        physics: const NeverScrollableScrollPhysics(),
        itemCount: controller
            .healthConditionModelObj.value.healthconditionItemList.value.length,
        itemBuilder: (context, index) {
          HealthconditionItemModel model = controller.healthConditionModelObj
              .value.healthconditionItemList.value[index];
          return HealthconditionItemWidget(model);
        }));
  }

  /// Section Widget
  Widget _buildCard() {
    return Container(
        padding: EdgeInsets.all(14.h),
        decoration: AppDecoration.outlineGray5003
            .copyWith(borderRadius: BorderRadiusStyle.roundedBorder10),
        child: Column(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SizedBox(height: 3.v),
              Padding(
                  padding: EdgeInsets.only(left: 3.h),
                  child: Text("lbl_health_status".tr,
                      style: CustomTextStyles.bodyLargeBlack900)),
              SizedBox(height: 23.v),
              Row(crossAxisAlignment: CrossAxisAlignment.start, children: [
                Padding(
                    padding: EdgeInsets.only(bottom: 12.v),
                    child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Opacity(
                              opacity: 0.2,
                              child: Text("lbl_5".tr,
                                  style: CustomTextStyles
                                      .labelLargeOnErrorContainer_5)),
                          SizedBox(height: 15.v),
                          Opacity(
                              opacity: 0.2,
                              child: Text("lbl_4".tr,
                                  style: CustomTextStyles
                                      .labelLargeOnErrorContainer_5)),
                          SizedBox(height: 16.v),
                          Opacity(
                              opacity: 0.2,
                              child: Text("lbl_3".tr,
                                  style: CustomTextStyles
                                      .labelLargeOnErrorContainer_5)),
                          SizedBox(height: 15.v),
                          Opacity(
                              opacity: 0.2,
                              child: Text("lbl_2".tr,
                                  style: CustomTextStyles
                                      .labelLargeOnErrorContainer_5)),
                          SizedBox(height: 16.v),
                          Opacity(
                              opacity: 0.2,
                              child: Text("lbl_1".tr,
                                  style: CustomTextStyles
                                      .labelLargeOnErrorContainer_5)),
                          SizedBox(height: 16.v),
                          Align(
                              alignment: Alignment.center,
                              child: Opacity(
                                  opacity: 0.2,
                                  child: Text("lbl_0".tr,
                                      style: theme.textTheme.bodySmall)))
                        ])),
                Expanded(
                    child: Padding(
                        padding: EdgeInsets.only(left: 10.h, top: 7.v),
                        child: Column(children: [
                          Container(
                              height: 160.v,
                              width: 277.h,
                              decoration: BoxDecoration(
                                  image: DecorationImage(
                                      image: fs.Svg(ImageConstant.imgGroup13),
                                      fit: BoxFit.cover)),
                              child: CustomImageView(
                                  imagePath: ImageConstant.imgAnalyticsGreen800,
                                  height: 133.v,
                                  width: 277.h,
                                  alignment: Alignment.bottomCenter)),
                          SizedBox(height: 4.v),
                          Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Opacity(
                                    opacity: 0.2,
                                    child: Text("lbl_mon".tr,
                                        style: theme.textTheme.bodySmall)),
                                Opacity(
                                    opacity: 0.2,
                                    child: Text("lbl_tue".tr,
                                        style: theme.textTheme.bodySmall)),
                                Opacity(
                                    opacity: 0.2,
                                    child: Text("lbl_wed".tr,
                                        style: theme.textTheme.bodySmall)),
                                Opacity(
                                    opacity: 0.2,
                                    child: Text("lbl_thu".tr,
                                        style: theme.textTheme.bodySmall)),
                                Opacity(
                                    opacity: 0.2,
                                    child: Text("lbl_fri".tr,
                                        style: theme.textTheme.bodySmall)),
                                Opacity(
                                    opacity: 0.2,
                                    child: Text("lbl_sat".tr,
                                        style: theme.textTheme.bodySmall)),
                                Opacity(
                                    opacity: 0.2,
                                    child: Text("lbl_sun".tr,
                                        style: theme.textTheme.bodySmall))
                              ])
                        ])))
              ])
            ]));
  }

  /// Navigates to the previous screen.
  onTapArrowLeft() {
    Get.back();
  }
}
