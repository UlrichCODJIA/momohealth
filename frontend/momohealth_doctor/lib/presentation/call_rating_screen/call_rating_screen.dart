import 'controller/call_rating_controller.dart';
import '/core/app_export.dart';
import '/widgets/custom_elevated_button.dart';
import '/widgets/custom_icon_button.dart';
import '/widgets/custom_outlined_button.dart';
import 'package:flutter/material.dart';

// ignore_for_file: must_be_immutable
class CallRatingScreen extends GetWidget<CallRatingController> {
  const CallRatingScreen({Key? key})
      : super(
          key: key,
        );

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);

    return SafeArea(
      child: Scaffold(
        body: Container(
          width: double.maxFinite,
          padding: EdgeInsets.symmetric(
            horizontal: 25.h,
            vertical: 15.v,
          ),
          child: Column(
            children: [
              CustomImageView(
                imagePath: ImageConstant.imgVectorOnerrorcontainer,
                height: 12.v,
                width: 6.h,
                alignment: Alignment.centerLeft,
                margin: EdgeInsets.only(left: 18.h),
              ),
              const Spacer(
                flex: 38,
              ),
              Container(
                height: 84.adaptSize,
                width: 84.adaptSize,
                decoration: AppDecoration.fillLightBlue.copyWith(
                  borderRadius: BorderRadiusStyle.roundedBorder24,
                ),
                child: CustomImageView(
                  imagePath: ImageConstant.imgRectangle73,
                  height: 84.adaptSize,
                  width: 84.adaptSize,
                  radius: BorderRadius.circular(
                    25.h,
                  ),
                  alignment: Alignment.center,
                ),
              ),
              SizedBox(height: 19.v),
              Text(
                "lbl_dr_jhon_deo".tr,
                style: theme.textTheme.bodyLarge,
              ),
              SizedBox(height: 7.v),
              Opacity(
                opacity: 0.5,
                child: Text(
                  "msg_dontist_spocialist".tr,
                  style: CustomTextStyles.bodySmallOnErrorContainer_1,
                ),
              ),
              SizedBox(height: 40.v),
              _buildRatingRow(),
              const Spacer(
                flex: 61,
              ),
            ],
          ),
        ),
        bottomNavigationBar: _buildCtaRow(),
      ),
    );
  }

  /// Section Widget
  Widget _buildRatingRow() {
    return Container(
      padding: EdgeInsets.symmetric(vertical: 30.v),
      decoration: AppDecoration.white.copyWith(
        borderRadius: BorderRadiusStyle.roundedBorder24,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Padding(
            padding: EdgeInsets.only(
              right: 9.h,
              bottom: 1.v,
            ),
            child: _buildGood(
              ratingText: "lbl_not_bad".tr,
            ),
          ),
          Padding(
            padding: EdgeInsets.only(
              left: 9.h,
              right: 9.h,
              bottom: 1.v,
            ),
            child: _buildGood(
              ratingText: "lbl_good".tr,
            ),
          ),
          Padding(
            padding: EdgeInsets.only(
              left: 9.h,
              right: 9.h,
              bottom: 1.v,
            ),
            child: _buildGood(
              ratingText: "lbl_best".tr,
            ),
          ),
          Padding(
            padding: EdgeInsets.only(left: 9.h),
            child: _buildGood(
              ratingText: "lbl_excellent".tr,
            ),
          ),
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildCtaRow() {
    return Padding(
      padding: EdgeInsets.only(
        left: 25.h,
        right: 25.h,
        bottom: 29.v,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          CustomOutlinedButton(
            height: 50.v,
            width: 152.h,
            text: "lbl_not_now".tr,
            buttonTextStyle: CustomTextStyles.bodyMediumPrimary,
          ),
          CustomElevatedButton(
            width: 152.h,
            text: "lbl_submit".tr,
            margin: EdgeInsets.only(left: 19.h),
            buttonTextStyle: CustomTextStyles.bodyMediumOnPrimaryContainer_2,
          ),
        ],
      ),
    );
  }

  /// Common widget
  Widget _buildGood({required String ratingText}) {
    return Expanded(
      child: SizedBox(
        width: double.maxFinite,
        child: Column(
          children: [
            CustomIconButton(
              height: 60.adaptSize,
              width: 60.adaptSize,
              padding: EdgeInsets.all(16.h),
              decoration: IconButtonStyleHelper.fillAmberA,
              child: CustomImageView(
                imagePath: ImageConstant.imgGroup151,
              ),
            ),
            SizedBox(height: 12.v),
            Opacity(
              opacity: 0.7,
              child: Text(
                ratingText,
                style: CustomTextStyles.bodySmallOnErrorContainer_2.copyWith(
                  color: theme.colorScheme.onErrorContainer.withOpacity(0.6),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
