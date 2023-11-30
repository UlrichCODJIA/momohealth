import '../disease_screen/disease_screen.dart';
import 'controller/info_list_controller.dart';
import '/core/app_export.dart';
import '/widgets/app_bar/appbar_leading_image.dart';
import '/widgets/app_bar/appbar_subtitle_one.dart';
import '/widgets/app_bar/custom_app_bar.dart';
import '/widgets/custom_elevated_button.dart';
import '/widgets/custom_icon_button.dart';
import '/widgets/custom_outlined_button.dart';
import 'package:flutter/material.dart';

// ignore_for_file: must_be_immutable
class InfoListScreen extends GetWidget<InfoListController> {
  const InfoListScreen({Key? key})
      : super(
          key: key,
        );

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);

    return SafeArea(
      child: Scaffold(
        appBar: _buildAppBar(),
        body: SizedBox(
          width: mediaQueryData.size.width,
          child: SingleChildScrollView(
            padding: EdgeInsets.only(top: 17.v),
            child: Container(
              height: 728.v,
              width: 325.h,
              margin: EdgeInsets.symmetric(horizontal: 25.h),
              child: Container(
                decoration: AppDecoration.outlineOnPrimary1,
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    GestureDetector(
                        onTap: () {
                          Get.to(() => const DiseaseScreen());
                        },
                        child: _buildImSeeingPeopleRow()),
                    SizedBox(height: 10.v),
                  ],
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }

  /// Section Widget
  PreferredSizeWidget _buildAppBar() {
    return CustomAppBar(
      height: 40.v,
      leadingWidth: 31.h,
      leading: AppbarLeadingImage(
        imagePath: ImageConstant.imgVectorOnerrorcontainer,
        margin: EdgeInsets.only(
          left: 25.h,
          top: 13.v,
          bottom: 15.v,
        ),
      ),
      centerTitle: true,
      title: AppbarSubtitleOne(
        text: "lbl_notification".tr.toUpperCase(),
      ),
    );
  }

  /// Section Widget
  Widget _buildImSeeingPeopleRow() {
    return Container(
      padding: EdgeInsets.all(15.h),
      decoration: AppDecoration.white.copyWith(
        borderRadius: BorderRadiusStyle.roundedBorder15,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          CustomIconButton(
            height: 40.adaptSize,
            width: 40.adaptSize,
            padding: EdgeInsets.all(10.h),
            child: CustomImageView(
              imagePath: ImageConstant.imgGroup84,
            ),
          ),
          Padding(
            padding: EdgeInsets.only(left: 15.h),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "msg_i_m_seeing_people".tr,
                  style: theme.textTheme.titleSmall,
                ),
                SizedBox(height: 3.v),
                Opacity(
                  opacity: 0.5,
                  child: Text(
                    "msg_heilbron_is_a_board".tr,
                    style: CustomTextStyles.labelLargeOnErrorContainer,
                  ),
                ),
              ],
            ),
          ),
          const Spacer(),
          Opacity(
            opacity: 0.5,
            child: Padding(
              padding: EdgeInsets.only(
                top: 19.v,
                bottom: 7.v,
              ),
              child: Text(
                "lbl_12_10_am".tr,
                style: theme.textTheme.labelMedium,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
