import 'controller/search_one_tab_container_controller.dart';
import '/core/app_export.dart';
import '/presentation/search_one_page/search_one_page.dart';
import '/widgets/app_bar/appbar_leading_image.dart';
import '/widgets/app_bar/appbar_subtitle_one.dart';
import '/widgets/app_bar/custom_app_bar.dart';
import 'package:flutter/material.dart';

class SearchOneTabContainerScreen
    extends GetWidget<SearchOneTabContainerController> {
  const SearchOneTabContainerScreen({Key? key}) : super(key: key);

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
                  _buildTabview(),
                  Expanded(
                      child: SizedBox(
                          height: 506.v,
                          child: TabBarView(
                              controller: controller.tabviewController,
                              children: [
                                SearchOnePage(),
                                SearchOnePage(),
                                SearchOnePage()
                              ])))
                ])),
            bottomNavigationBar: _buildBottomBar()));
  }

  /// Section Widget
  PreferredSizeWidget _buildAppBar() {
    return CustomAppBar(
        leadingWidth: 33.h,
        leading: AppbarLeadingImage(
            imagePath: ImageConstant.imgArrowLeft,
            margin: EdgeInsets.only(left: 27.h, top: 16.v, bottom: 16.v),
            onTap: () {
              onTapArrowLeft();
            }),
        centerTitle: true,
        title: AppbarSubtitleOne(text: "lbl_search".tr.toUpperCase()));
  }

  /// Section Widget
  Widget _buildTabview() {
    return SizedBox(
        height: 109.v,
        width: 333.h,
        child: TabBar(
            controller: controller.tabviewController,
            labelPadding: EdgeInsets.zero,
            tabs: [
              Tab(
                  child: Container(
                      padding: EdgeInsets.all(13.h),
                      decoration: AppDecoration.white.copyWith(
                          borderRadius: BorderRadiusStyle.roundedBorder24),
                      child: Column(
                          mainAxisSize: MainAxisSize.min,
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: [
                            CustomImageView(
                                imagePath:
                                    ImageConstant.imgLayer1Onerrorcontainer,
                                height: 37.v,
                                width: 29.h,
                                margin: EdgeInsets.only(top: 6.v)),
                            Padding(
                                padding: EdgeInsets.only(top: 14.v),
                                child: Text("lbl_cardiologists".tr))
                          ]))),
              Tab(
                  child: SizedBox(
                      height: 109.v,
                      width: 101.h,
                      child: Stack(alignment: Alignment.topCenter, children: [
                        Opacity(
                            opacity: 0.3,
                            child: Align(
                                alignment: Alignment.bottomLeft,
                                child: Container(
                                    height: 30.v,
                                    width: 76.h,
                                    margin: EdgeInsets.only(left: 9.h),
                                    decoration: BoxDecoration(
                                        color:
                                            appTheme.blue400.withOpacity(0.46),
                                        borderRadius:
                                            BorderRadius.circular(10.h))))),
                        Align(
                            alignment: Alignment.topCenter,
                            child: Container(
                                padding: EdgeInsets.symmetric(
                                    horizontal: 20.h, vertical: 13.v),
                                decoration: AppDecoration.fillBlue.copyWith(
                                    borderRadius:
                                        BorderRadiusStyle.roundedBorder24),
                                child: Column(
                                    mainAxisSize: MainAxisSize.min,
                                    mainAxisAlignment: MainAxisAlignment.end,
                                    children: [
                                      CustomImageView(
                                          imagePath: ImageConstant
                                              .imgGroupOnprimarycontainer,
                                          height: 30.v,
                                          width: 36.h,
                                          margin: EdgeInsets.only(top: 9.v)),
                                      Padding(
                                          padding: EdgeInsets.only(top: 18.v),
                                          child: Text("lbl_gastrology".tr))
                                    ])))
                      ]))),
              Tab(
                  child: Container(
                      padding: EdgeInsets.symmetric(
                          horizontal: 22.h, vertical: 13.v),
                      decoration: AppDecoration.white.copyWith(
                          borderRadius: BorderRadiusStyle.roundedBorder24),
                      child: Column(
                          mainAxisSize: MainAxisSize.min,
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: [
                            CustomImageView(
                                imagePath:
                                    ImageConstant.imgGroupOnerrorcontainer33x38,
                                height: 33.v,
                                width: 38.h,
                                margin: EdgeInsets.only(top: 7.v)),
                            Padding(
                                padding: EdgeInsets.only(top: 17.v),
                                child: Text("lbl_urologists".tr))
                          ])))
            ]));
  }

  /// Section Widget
  Widget _buildBottomBar() {
    return Container(
        margin: EdgeInsets.symmetric(horizontal: 25.h),
        decoration: BoxDecoration(
            color: theme.colorScheme.onPrimaryContainer.withOpacity(1),
            borderRadius: BorderRadius.circular(29.h),
            boxShadow: [
              BoxShadow(
                  color: theme.colorScheme.onErrorContainer.withOpacity(0.35),
                  spreadRadius: 2.h,
                  blurRadius: 2.h,
                  offset: const Offset(0, 0))
            ]),
        child: Container(
            height: 39.v,
            width: 265.h,
            margin: EdgeInsets.fromLTRB(32.h, 14.v, 27.h, 14.v),
            child: Stack(alignment: Alignment.center, children: [
              Align(
                  alignment: Alignment.centerRight,
                  child: Container(
                      height: 39.adaptSize,
                      width: 39.adaptSize,
                      margin: EdgeInsets.only(right: 73.h),
                      decoration: BoxDecoration(
                          color: theme.colorScheme.primary,
                          borderRadius: BorderRadius.circular(19.h),
                          boxShadow: [
                            BoxShadow(
                                color: appTheme.blueA20047,
                                spreadRadius: 2.h,
                                blurRadius: 2.h,
                                offset: const Offset(0, 4))
                          ]))),
              CustomImageView(
                  imagePath: ImageConstant.imgFrame771,
                  height: 18.v,
                  width: 265.h,
                  alignment: Alignment.center)
            ])));
  }

  /// Navigates to the previous screen.
  onTapArrowLeft() {
    Get.back();
  }
}
