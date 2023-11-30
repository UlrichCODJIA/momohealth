import 'controller/help_tab_container_controller.dart';
import '/core/app_export.dart';
import '/presentation/disease_one_page/disease_one_page.dart';
import '/presentation/help_page/help_page.dart';
import '/widgets/app_bar/appbar_leading_image.dart';
import '/widgets/app_bar/appbar_subtitle_one.dart';
import '/widgets/app_bar/custom_app_bar.dart';
import '/widgets/custom_floating_button.dart';
import 'package:flutter/material.dart';

class HelpTabContainerScreen extends GetWidget<HelpTabContainerController> {
  const HelpTabContainerScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);
    return SafeArea(
        child: Scaffold(
            body: SizedBox(
                height: 768.v,
                width: double.maxFinite,
                child: Stack(alignment: Alignment.center, children: [
                  _buildFloatingActionButton(),
                  SizedBox(
                      width: double.maxFinite,
                      child: Align(
                          alignment: Alignment.center,
                          child: Container(
                              decoration: AppDecoration.white,
                              child: Column(
                                  mainAxisSize: MainAxisSize.min,
                                  children: [
                                    _buildAppBar(),
                                    SizedBox(height: 14.v),
                                    _buildTabview(),
                                    Expanded(
                                        child: SizedBox(
                                            height: 665.v,
                                            child: TabBarView(
                                                controller: controller
                                                    .tabviewController,
                                                children: [
                                                  HelpPage(),
                                                  DiseaseOnePage()
                                                ])))
                                  ]))))
                ]))));
  }

  /// Section Widget
  Widget _buildFloatingActionButton() {
    return CustomFloatingButton(
        height: 50,
        width: 50,
        backgroundColor: appTheme.lightBlue300,
        decoration: FloatingButtonStyleHelper.fillLightBlue,
        alignment: Alignment.bottomRight,
        child: CustomImageView(
            imagePath: ImageConstant.imgHelp, height: 25.0.v, width: 25.0.h));
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
        title: AppbarSubtitleOne(text: "lbl_help".tr.toUpperCase()));
  }

  /// Section Widget
  Widget _buildTabview() {
    return SizedBox(
        height: 44.v,
        width: 325.h,
        child: TabBar(
            controller: controller.tabviewController,
            labelPadding: EdgeInsets.zero,
            labelColor: theme.colorScheme.onPrimaryContainer.withOpacity(1),
            labelStyle: TextStyle(
                fontSize: 14.fSize,
                fontFamily: 'Circular Std',
                fontWeight: FontWeight.w500),
            unselectedLabelColor:
                theme.colorScheme.onErrorContainer.withOpacity(0.6),
            unselectedLabelStyle: TextStyle(
                fontSize: 14.fSize,
                fontFamily: 'Circular Std',
                fontWeight: FontWeight.w500),
            indicator: BoxDecoration(
                color: theme.colorScheme.primary,
                borderRadius:
                    BorderRadius.horizontal(left: Radius.circular(15.h))),
            tabs: [
              Tab(child: Text("lbl_faq".tr)),
              Tab(child: Opacity(opacity: 0.7, child: Text("lbl_disease".tr)))
            ]));
  }

  /// Navigates to the previous screen.
  onTapArrowLeft() {
    Get.back();
  }
}
