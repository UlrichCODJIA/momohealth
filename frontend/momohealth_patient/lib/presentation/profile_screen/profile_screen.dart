import 'package:nb_utils/nb_utils.dart';

import '../profile_screen/widgets/profilesection_item_widget.dart';
import 'controller/profile_controller.dart';
import 'models/profilesection_item_model.dart';
import '/core/app_export.dart';
import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';

// ignore_for_file: must_be_immutable
class ProfileScreen extends GetWidget<ProfileController> {
  const ProfileScreen({Key? key})
      : super(
          key: key,
        );

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);

    return SafeArea(
      child: Scaffold(
        backgroundColor: theme.colorScheme.onPrimaryContainer.withOpacity(1),
        body: Container(
          width: double.maxFinite,
          padding: EdgeInsets.symmetric(horizontal: 20.h),
          child: SingleChildScrollView(
            child: Column(
              children: [
                Container(
                  margin: EdgeInsets.symmetric(horizontal: 96.h),
                  padding: EdgeInsets.symmetric(
                    horizontal: 26.h,
                    vertical: 11.v,
                  ),
                  decoration: BoxDecoration(
                      color: appTheme.lightBlueA200.withOpacity(.1),
                      borderRadius: const BorderRadius.vertical(
                          bottom: Radius.circular(
                              71)) //BorderRadiusStyle.roundedBorder71,
                      ),
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      SizedBox(height: 36.v),
                      Text(
                        "lbl_profile".tr.toUpperCase(),
                        style: theme.textTheme.titleMedium,
                      ),
                      SizedBox(height: 36.v),
                      SizedBox(
                        height: 91.v,
                        width: 90.h,
                        child: Stack(
                          alignment: Alignment.bottomRight,
                          clipBehavior: Clip.none,
                          children: [
                            Align(
                              alignment: Alignment.center,
                              child: Container(
                                height: 90.adaptSize,
                                width: 90.adaptSize,
                                decoration:
                                    AppDecoration.fillLightBlue.copyWith(
                                  borderRadius:
                                      BorderRadiusStyle.circleBorder45,
                                ),
                                child: CustomImageView(
                                  imagePath: ImageConstant.imgEllipse62,
                                  height: 90.adaptSize,
                                  width: 90.adaptSize,
                                  radius: BorderRadius.circular(
                                    45.h,
                                  ),
                                  alignment: Alignment.center,
                                ),
                              ),
                            ),
                            Positioned(
                              right: -20,
                              bottom: -25,
                              child: CustomImageView(
                                imagePath: ImageConstant.imgEdit,
                                height: 63.v,
                                width: 60.h,
                                alignment: Alignment.bottomRight,
                                margin: EdgeInsets.only(right: 8.h),
                              ),
                            ),
                          ],
                        ),
                      ),
                      SizedBox(height: 13.v),
                    ],
                  ),
                ),
                SizedBox(height: 15.v),
                Text(
                  "lbl_paul_m_timmer".tr,
                  style: theme.textTheme.titleMedium,
                ),
                SizedBox(height: 4.v),
                Opacity(
                  opacity: 0.5,
                  child: Text(
                    "lbl_general_manager".tr,
                    style: CustomTextStyles.labelLargeOnErrorContainer,
                  ),
                ),
                SizedBox(height: 25.v),
                _buildIconRow(),
                SizedBox(height: 15.v),
              ],
            ),
          ),
        ),
      ),
    );
  }

  /// Section Widget
  Widget _buildIconRow() {
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Expanded(
              child: infoWidget(
                  iconPath: ImageConstant.imgIcon,
                  bgColor: appTheme.lightBlueA200.withOpacity(.1),
                  title: "lbl_name".tr,
                  subTitle: "lbl_paul_m_timmer".tr),
            ),
            12.width,
            Expanded(
              child: infoWidget(
                  iconPath: ImageConstant.imgIconOnerror,
                  bgColor: appTheme.red200.withOpacity(.1),
                  title: "lbl_age".tr,
                  subTitle: "lbl_25_year".tr),
            )
          ],
        ),
        20.height,
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Expanded(
              child: infoWidget(
                  iconPath: ImageConstant.imgIcon,
                  bgColor: appTheme.lightBlueA200.withOpacity(.1),
                  title: "lbl_name".tr,
                  subTitle: "lbl_paul_m_timmer".tr),
            ),
            12.width,
            Expanded(
              child: infoWidget(
                  iconPath: ImageConstant.imgIconOnerror,
                  bgColor: appTheme.red200.withOpacity(.1),
                  title: "lbl_age".tr,
                  subTitle: "lbl_25_year".tr),
            )
          ],
        ),
        20.height,
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Expanded(
              child: infoWidget(
                  iconPath: ImageConstant.imgIcon,
                  bgColor: appTheme.lightBlueA200.withOpacity(.1),
                  title: "lbl_name".tr,
                  subTitle: "lbl_paul_m_timmer".tr),
            ),
            12.width,
            Expanded(
              child: infoWidget(
                  iconPath: ImageConstant.imgIconOnerror,
                  bgColor: appTheme.red200.withOpacity(.1),
                  title: "lbl_age".tr,
                  subTitle: "lbl_25_year".tr),
            )
          ],
        ),
      ],
    );
  }

  Container infoWidget(
      {required String iconPath,
      required Color bgColor,
      required String title,
      required String subTitle}) {
    return Container(
      padding: EdgeInsets.all(12.h),
      decoration: BoxDecoration(
        color: bgColor,
        borderRadius: BorderRadiusStyle.roundedBorder10,
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          CustomImageView(
            imagePath: iconPath,
            height: 14.adaptSize,
            width: 14.adaptSize,
          ),
          SizedBox(height: 8.v),
          Text(
            title,
            style: theme.textTheme.titleSmall,
          ),
          SizedBox(height: 1.v),
          Opacity(
            opacity: 0.8,
            child: Text(
              subTitle,
              style: CustomTextStyles.labelLargeOnErrorContainer_2,
            ),
          ),
        ],
      ),
    );
  }
}
