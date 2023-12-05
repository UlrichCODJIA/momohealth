import 'controller/hospital_tab_container_controller.dart';
import '/core/app_export.dart';
import '/presentation/hospital_page/hospital_page.dart';
import '/widgets/app_bar/appbar_leading_image.dart';
import '/widgets/app_bar/appbar_subtitle.dart';
import '/widgets/app_bar/custom_app_bar.dart';
import '/widgets/custom_floating_button.dart';
import 'package:flutter/material.dart';

class HospitalTabContainerScreen
    extends GetWidget<HospitalTabContainerController> {
  const HospitalTabContainerScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);
    return SafeArea(
        child: Scaffold(
            appBar: _buildAppBar(),
            body: Container(
                width: double.maxFinite,
                margin: EdgeInsets.only(top: 14.v),
                child: Column(children: [
                  _buildTabview(),
                  Expanded(
                      child: SizedBox(
                          height: 641.v,
                          child: TabBarView(
                              controller: controller.tabviewController,
                              children: [
                                HospitalPage(),
                                HospitalPage(),
                                HospitalPage()
                              ])))
                ])),
            floatingActionButton: _buildFloatingActionButton()));
  }

  /// Section Widget
  PreferredSizeWidget _buildAppBar() {
    return CustomAppBar(
        height: 42.v,
        leadingWidth: 49.h,
        leading: AppbarLeadingImage(
            imagePath: ImageConstant.imgArrowLeft,
            margin: EdgeInsets.only(top: 15.v, bottom: 15.v),
            onTap: () {
              onTapArrowLeft();
            }),
        centerTitle: true,
        title: AppbarSubtitle(text: "lbl_emergency".tr));
  }

  /// Section Widget
  Widget _buildTabview() {
    return Container(
        height: 70.v,
        width: 325.h,
        decoration: BoxDecoration(
            color: theme.colorScheme.onPrimaryContainer.withOpacity(1),
            borderRadius: BorderRadius.circular(15.h),
            border: Border.all(
                color: theme.colorScheme.onPrimaryContainer.withOpacity(1),
                width: 1.h)),
        child: TabBar(
            controller: controller.tabviewController,
            labelPadding: EdgeInsets.zero,
            labelColor: theme.colorScheme.onErrorContainer.withOpacity(0.56),
            unselectedLabelColor:
                theme.colorScheme.onPrimaryContainer.withOpacity(1),
            indicatorPadding: EdgeInsets.all(5.0.h),
            indicator: BoxDecoration(
                color: theme.colorScheme.primary,
                borderRadius:
                    BorderRadius.horizontal(left: Radius.circular(15.h))),
            tabs: [
              Tab(
                  child: Column(children: [
                CustomImageView(
                    imagePath: ImageConstant.imgVectorOnprimarycontainer,
                    height: 17.adaptSize,
                    width: 17.adaptSize),
                Padding(
                    padding: EdgeInsets.only(top: 5.v),
                    child: Text("lbl_hospital".tr))
              ])),
              Tab(
                  child: Column(children: [
                Opacity(
                    opacity: 0.6,
                    child: CustomImageView(
                        imagePath: ImageConstant.imgGroup774Onerrorcontainer,
                        height: 12.v,
                        width: 17.h)),
                Opacity(
                    opacity: 0.6,
                    child: Padding(
                        padding: EdgeInsets.only(top: 7.v),
                        child: Text("lbl_ambulance".tr)))
              ])),
              Tab(
                  child: Column(children: [
                Opacity(
                    opacity: 0.6,
                    child: CustomImageView(
                        imagePath: ImageConstant.imgGroupOnerrorcontainer17x16,
                        height: 17.v,
                        width: 16.h)),
                Opacity(
                    opacity: 0.6,
                    child: Padding(
                        padding: EdgeInsets.only(top: 4.v),
                        child: Text("lbl_doctors".tr)))
              ]))
            ]));
  }

  /// Section Widget
  Widget _buildFloatingActionButton() {
    return CustomFloatingButton(
        height: 40,
        width: 40,
        backgroundColor: theme.colorScheme.primary,
        child: CustomImageView(
            imagePath: ImageConstant.imgCallBtn,
            height: 20.0.v,
            width: 20.0.h));
  }

  /// Navigates to the previous screen.
  onTapArrowLeft() {
    Get.back();
  }
}
