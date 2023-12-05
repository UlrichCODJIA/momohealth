import '../report_screen/widgets/reportgrid_item_widget.dart';
import '../report_screen/widgets/reportlist_item_widget.dart';
import 'controller/report_controller.dart';
import 'models/reportgrid_item_model.dart';
import 'models/reportlist_item_model.dart';
import '/core/app_export.dart';
import '/widgets/app_bar/appbar_leading_image.dart';
import '/widgets/app_bar/appbar_subtitle_one.dart';
import '/widgets/app_bar/custom_app_bar.dart';
import 'package:flutter/material.dart';

class ReportScreen extends GetWidget<ReportController> {
  const ReportScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);
    return SafeArea(
        child: Scaffold(
            backgroundColor:
                theme.colorScheme.onPrimaryContainer.withOpacity(1),
            appBar: _buildAppBar(),
            body: SizedBox(
                width: double.maxFinite,
                child: Column(children: [
                  SizedBox(height: 9.v),
                  _buildAddFolder(),
                  SizedBox(height: 18.v),
                  _buildReportList(),
                  SizedBox(
                      height: 666.v,
                      width: double.maxFinite,
                      child:
                          Stack(alignment: Alignment.bottomCenter, children: [
                        Align(
                            alignment: Alignment.topCenter,
                            child: Container(
                                width: double.maxFinite,
                                margin: EdgeInsets.only(bottom: 144.v),
                                padding: EdgeInsets.symmetric(
                                    horizontal: 25.h, vertical: 26.v),
                                decoration: BoxDecoration(
                                    borderRadius:
                                        BorderRadiusStyle.customBorderTL25),
                                child: Row(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Padding(
                                          padding:
                                              EdgeInsets.only(bottom: 450.v),
                                          child: Text("lbl_recent_file".tr,
                                              style:
                                                  theme.textTheme.titleSmall)),
                                      const Spacer(),
                                      Opacity(
                                          opacity: 0.5,
                                          child: Padding(
                                              padding: EdgeInsets.only(
                                                  bottom: 450.v),
                                              child: Text("lbl_date".tr,
                                                  style: CustomTextStyles
                                                      .labelLargeOnErrorContainer))),
                                      Opacity(
                                          opacity: 0.5,
                                          child: CustomImageView(
                                              imagePath: ImageConstant.imgArrow,
                                              height: 4.v,
                                              width: 8.h,
                                              margin: EdgeInsets.only(
                                                  left: 10.h,
                                                  top: 6.v,
                                                  bottom: 458.v)))
                                    ]))),
                        _buildReportGrid()
                      ]))
                ]))));
  }

  /// Section Widget
  PreferredSizeWidget _buildAppBar() {
    return CustomAppBar(
        leadingWidth: 31.h,
        leading: AppbarLeadingImage(
            imagePath: ImageConstant.imgArrowLeft,
            margin: EdgeInsets.only(top: 16.v, bottom: 16.v),
            onTap: () {
              onTapArrowLeft();
            }),
        centerTitle: true,
        title: AppbarSubtitleOne(text: "lbl_report".tr.toUpperCase()));
  }

  /// Section Widget
  Widget _buildAddFolder() {
    return Padding(
        padding: EdgeInsets.symmetric(horizontal: 25.h),
        child:
            Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
          Padding(
              padding: EdgeInsets.only(top: 8.v, bottom: 6.v),
              child: Text("lbl_folder".tr, style: theme.textTheme.titleSmall)),
          Container(
              width: 33.adaptSize,
              padding: EdgeInsets.symmetric(horizontal: 11.h, vertical: 5.v),
              decoration: AppDecoration.outlineLightBlue
                  .copyWith(borderRadius: BorderRadiusStyle.roundedBorder15),
              child: Text("lbl".tr,
                  style: CustomTextStyles.titleMediumOnPrimaryContainer_1))
        ]));
  }

  /// Section Widget
  Widget _buildReportList() {
    return Expanded(
        child: Align(
            alignment: Alignment.centerRight,
            child: SizedBox(
                height: 151.v,
                child: Obx(() => ListView.separated(
                    padding: EdgeInsets.only(left: 25.h),
                    scrollDirection: Axis.horizontal,
                    separatorBuilder: (context, index) {
                      return SizedBox(width: 13.h);
                    },
                    itemCount: controller
                        .reportModelObj.value.reportlistItemList.value.length,
                    itemBuilder: (context, index) {
                      ReportlistItemModel model = controller
                          .reportModelObj.value.reportlistItemList.value[index];
                      return ReportlistItemWidget(model);
                    })))));
  }

  /// Section Widget
  Widget _buildReportGrid() {
    return Align(
        alignment: Alignment.bottomCenter,
        child: Padding(
            padding: EdgeInsets.only(left: 25.h, top: 66.v, right: 25.h),
            child: Obx(() => GridView.builder(
                shrinkWrap: true,
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                    mainAxisExtent: 191.v,
                    crossAxisCount: 2,
                    mainAxisSpacing: 15.h,
                    crossAxisSpacing: 15.h),
                physics: const NeverScrollableScrollPhysics(),
                itemCount: controller
                    .reportModelObj.value.reportgridItemList.value.length,
                itemBuilder: (context, index) {
                  ReportgridItemModel model = controller
                      .reportModelObj.value.reportgridItemList.value[index];
                  return ReportgridItemWidget(model);
                }))));
  }

  /// Navigates to the previous screen.
  onTapArrowLeft() {
    Get.back();
  }
}
