import 'controller/message_controller.dart';
import '/core/app_export.dart';
import '/widgets/app_bar/appbar_leading_image.dart';
import '/widgets/app_bar/appbar_subtitle_four.dart';
import '/widgets/app_bar/appbar_subtitle_two.dart';
import '/widgets/app_bar/appbar_title_image.dart';
import '/widgets/app_bar/appbar_trailing_image.dart';
import '/widgets/app_bar/custom_app_bar.dart';
import '/widgets/custom_elevated_button.dart';
import '/widgets/custom_icon_button.dart';
import '/widgets/custom_text_form_field.dart';
import 'package:flutter/material.dart';

// ignore_for_file: must_be_immutable
class MessageScreen extends GetWidget<MessageController> {
  const MessageScreen({Key? key})
      : super(
          key: key,
        );

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);

    return SafeArea(
      child: Scaffold(
        resizeToAvoidBottomInset: false,
        appBar: _buildAppBar(),
        body: Container(
          width: double.maxFinite,
          margin: EdgeInsets.only(top: 8.v),
          padding: EdgeInsets.symmetric(
            horizontal: 25.h,
            vertical: 20.v,
          ),
          decoration: AppDecoration.outlineOnPrimary.copyWith(
            borderRadius: BorderRadiusStyle.customBorderBL25,
          ),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Align(
                alignment: Alignment.center,
                child: Opacity(
                  opacity: 0.3,
                  child: Text(
                    "lbl_today".tr,
                    style: CustomTextStyles.labelMediumOnErrorContainer_2,
                  ),
                ),
              ),
              SizedBox(height: 31.v),
              Container(
                margin: EdgeInsets.only(right: 120.h),
                padding: EdgeInsets.symmetric(
                  horizontal: 20.h,
                  vertical: 10.v,
                ),
                decoration: AppDecoration.fillPrimary.copyWith(
                  borderRadius: BorderRadiusStyle.roundedBorder15,
                ),
                child: SizedBox(
                  width: 164.h,
                  child: Text(
                    "msg_on_a_recent_test".tr,
                    maxLines: 3,
                    overflow: TextOverflow.ellipsis,
                    style: CustomTextStyles.bodySmallPoppinsOnPrimaryContainer
                        .copyWith(
                      height: 1.50,
                    ),
                  ),
                ),
              ),
              SizedBox(height: 10.v),
              Opacity(
                opacity: 0.3,
                child: Text(
                  "lbl_12_00_pm".tr,
                  style: CustomTextStyles.labelMediumOnErrorContainer_2,
                ),
              ),
              SizedBox(height: 33.v),
              Padding(
                padding: EdgeInsets.only(right: 66.h),
                child: Row(
                  children: [
                    CustomImageView(
                      imagePath: ImageConstant.imgRectangle4,
                      height: 80.adaptSize,
                      width: 80.adaptSize,
                      radius: BorderRadius.circular(
                        15.h,
                      ),
                    ),
                    CustomImageView(
                      imagePath: ImageConstant.imgRectangle5,
                      height: 80.adaptSize,
                      width: 80.adaptSize,
                      radius: BorderRadius.circular(
                        15.h,
                      ),
                      margin: EdgeInsets.only(left: 9.h),
                    ),
                    CustomImageView(
                      imagePath: ImageConstant.imgRectangle6,
                      height: 80.adaptSize,
                      width: 80.adaptSize,
                      radius: BorderRadius.circular(
                        15.h,
                      ),
                      margin: EdgeInsets.only(left: 10.h),
                    ),
                  ],
                ),
              ),
              SizedBox(height: 7.v),
              Opacity(
                opacity: 0.3,
                child: Text(
                  "lbl_9_30_pm2".tr,
                  style: CustomTextStyles.labelMediumOnErrorContainer_2,
                ),
              ),
              SizedBox(height: 31.v),
              CustomElevatedButton(
                height: 40.v,
                width: 102.h,
                text: "lbl_let_me_check".tr,
                buttonStyle: CustomButtonStyles.fillLightBlueTL17,
                buttonTextStyle:
                    CustomTextStyles.bodySmallPoppinsOnPrimaryContainer,
                alignment: Alignment.centerRight,
              ),
              SizedBox(height: 9.v),
              Align(
                alignment: Alignment.centerRight,
                child: Opacity(
                  opacity: 0.3,
                  child: Padding(
                    padding: EdgeInsets.only(right: 58.h),
                    child: Text(
                      "lbl_10_05_pm".tr,
                      style: CustomTextStyles.bodySmallOnErrorContainer10_1,
                    ),
                  ),
                ),
              ),
              SizedBox(height: 29.v),
              Container(
                margin: EdgeInsets.only(right: 131.h),
                padding: EdgeInsets.symmetric(
                  horizontal: 15.h,
                  vertical: 10.v,
                ),
                decoration: AppDecoration.fillPrimary.copyWith(
                  borderRadius: BorderRadiusStyle.roundedBorder15,
                ),
                child: SizedBox(
                  width: 164.h,
                  child: Text(
                    "msg_on_a_recent_test2".tr,
                    maxLines: 2,
                    overflow: TextOverflow.ellipsis,
                    style: CustomTextStyles.bodySmallPoppinsOnPrimaryContainer
                        .copyWith(
                      height: 1.50,
                    ),
                  ),
                ),
              ),
              SizedBox(height: 9.v),
              Opacity(
                opacity: 0.3,
                child: Padding(
                  padding: EdgeInsets.only(left: 2.h),
                  child: Text(
                    "lbl_10_10_pm".tr,
                    style: CustomTextStyles.bodySmallOnErrorContainer10_1,
                  ),
                ),
              ),
              SizedBox(height: 29.v),
              CustomElevatedButton(
                height: 40.v,
                width: 102.h,
                text: "lbl_let_me_check".tr,
                buttonStyle: CustomButtonStyles.fillLightBlueTL17,
                buttonTextStyle:
                    CustomTextStyles.bodySmallPoppinsOnPrimaryContainer,
                alignment: Alignment.centerRight,
              ),
              SizedBox(height: 9.v),
              Align(
                alignment: Alignment.centerRight,
                child: Opacity(
                  opacity: 0.3,
                  child: Padding(
                    padding: EdgeInsets.only(right: 58.h),
                    child: Text(
                      "lbl_10_20_pm".tr,
                      style: CustomTextStyles.bodySmallOnErrorContainer10_1,
                    ),
                  ),
                ),
              ),
              SizedBox(height: 28.v),
              _buildMessageRow(),
              SizedBox(height: 5.v),
            ],
          ),
        ),
      ),
    );
  }

  /// Section Widget
  PreferredSizeWidget _buildAppBar() {
    return CustomAppBar(
      height: 58.v,
      leadingWidth: 31.h,
      leading: AppbarLeadingImage(
        imagePath: ImageConstant.imgVectorOnerrorcontainer,
        margin: EdgeInsets.only(
          left: 25.h,
          top: 21.v,
          bottom: 22.v,
        ),
      ),
      title: Padding(
        padding: EdgeInsets.only(left: 43.h),
        child: Row(
          children: [
            AppbarTitleImage(
              imagePath: ImageConstant.imgGroup850,
            ),
            Padding(
              padding: EdgeInsets.only(
                left: 10.h,
                top: 3.v,
                bottom: 1.v,
              ),
              child: Column(
                children: [
                  AppbarSubtitleTwo(
                    text: "lbl_dr_jhon_deo".tr,
                  ),
                  SizedBox(height: 5.v),
                  AppbarSubtitleFour(
                    text: "msg_dontist_spocialist".tr,
                    margin: EdgeInsets.only(right: 5.h),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
      actions: [
        AppbarTrailingImage(
          imagePath: ImageConstant.imgVoiceCall,
          margin: EdgeInsets.only(
            left: 25.h,
            top: 8.v,
            right: 7.h,
          ),
        ),
        AppbarTrailingImage(
          imagePath: ImageConstant.imgVideoCall,
          margin: EdgeInsets.only(
            left: 20.h,
            top: 8.v,
            right: 32.h,
          ),
        ),
      ],
    );
  }

  /// Section Widget
  Widget _buildMessageRow() {
    return Row(
      children: [
        Expanded(
          child: CustomTextFormField(
            controller: controller.messageController,
            hintText: "msg_enter_your_message".tr,
            hintStyle: CustomTextStyles.bodySmallOnErrorContainer_1,
            textInputAction: TextInputAction.done,
            suffix: Container(
              margin: EdgeInsets.fromLTRB(12.h, 12.v, 15.h, 13.v),
              child: CustomImageView(
                imagePath: ImageConstant.imgBgOnprimarycontainer,
                height: 30.adaptSize,
                width: 30.adaptSize,
              ),
            ),
            suffixConstraints: BoxConstraints(
              maxHeight: 55.v,
            ),
            contentPadding: EdgeInsets.only(
              left: 15.h,
              top: 18.v,
              bottom: 18.v,
            ),
            borderDecoration: TextFormFieldStyleHelper.fillGrayTL15,
          ),
        ),
        Padding(
          padding: EdgeInsets.only(left: 10.h),
          child: CustomIconButton(
            height: 55.adaptSize,
            width: 55.adaptSize,
            padding: EdgeInsets.all(18.h),
            decoration: IconButtonStyleHelper.fillPrimaryTL27,
            child: CustomImageView(
              imagePath: ImageConstant.imgSentBttn,
            ),
          ),
        ),
      ],
    );
  }
}
