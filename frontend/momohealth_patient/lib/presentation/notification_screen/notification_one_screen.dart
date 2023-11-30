import 'controller/notification_one_controller.dart';
import '/core/app_export.dart';
import '/widgets/app_bar/appbar_leading_image.dart';
import '/widgets/app_bar/appbar_subtitle_one.dart';
import '/widgets/app_bar/custom_app_bar.dart';
import '/widgets/custom_elevated_button.dart';
import '/widgets/custom_icon_button.dart';
import '/widgets/custom_outlined_button.dart';
import 'package:flutter/material.dart';

// ignore_for_file: must_be_immutable
class NotificationScreen extends GetWidget<NotificationOneController> {
  const NotificationScreen({Key? key})
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
              child: Stack(
                alignment: Alignment.bottomCenter,
                children: [
                  Align(
                    alignment: Alignment.topCenter,
                    child: Container(
                      decoration: AppDecoration.outlineOnPrimary1,
                      child: Column(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          _buildImSeeingPeopleRow(),
                          SizedBox(height: 10.v),
                          _buildCard8(
                            newsTitle: "lbl_health_news2".tr,
                            newsDescription: "msg_discovered_had_get".tr,
                            newsTime: "lbl_12_05_am".tr,
                          ),
                          SizedBox(height: 10.v),
                          _buildCancelRow(),
                          SizedBox(height: 10.v),
                          _buildBiggestDropAfterRow(),
                          SizedBox(height: 10.v),
                          _buildHowToWorkOutRow(),
                          SizedBox(height: 10.v),
                          _buildWhenSelfCareCommunityCareRow(),
                          SizedBox(height: 10.v),
                          _buildPfizerOrModernaRow(),
                        ],
                      ),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(top: 658.v),
                    child: _buildCard8(
                      newsTitle: "lbl_health_news2".tr,
                      newsDescription: "msg_discovered_had_get".tr,
                      newsTime: "lbl_11_10_am".tr,
                    ),
                  ),
                ],
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

  /// Section Widget
  Widget _buildCancelRow() {
    return Container(
      padding: EdgeInsets.symmetric(
        horizontal: 15.h,
        vertical: 14.v,
      ),
      decoration: AppDecoration.white.copyWith(
        borderRadius: BorderRadiusStyle.roundedBorder15,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: EdgeInsets.only(bottom: 98.v),
            child: CustomIconButton(
              height: 40.adaptSize,
              width: 40.adaptSize,
              padding: EdgeInsets.all(9.h),
              decoration: IconButtonStyleHelper.fillCyan,
              child: CustomImageView(
                imagePath: ImageConstant.imgGroup82,
              ),
            ),
          ),
          Expanded(
            child: Padding(
              padding: EdgeInsets.only(
                left: 15.h,
                bottom: 5.v,
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        "msg_benefix_pill_remainder".tr,
                        style: theme.textTheme.titleSmall,
                      ),
                      Opacity(
                        opacity: 0.5,
                        child: Padding(
                          padding: EdgeInsets.only(top: 3.v),
                          child: Text(
                            "lbl_11_45_am".tr,
                            style: theme.textTheme.labelMedium,
                          ),
                        ),
                      ),
                    ],
                  ),
                  SizedBox(height: 8.v),
                  Opacity(
                    opacity: 0.5,
                    child: Container(
                      width: 225.h,
                      margin: EdgeInsets.only(right: 11.h),
                      child: Text(
                        "msg_discovered_had_get2".tr,
                        maxLines: 3,
                        overflow: TextOverflow.ellipsis,
                        style: CustomTextStyles.labelLargeOnErrorContainer,
                      ),
                    ),
                  ),
                  SizedBox(height: 14.v),
                  Padding(
                    padding: EdgeInsets.only(right: 16.h),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Expanded(
                          child: CustomOutlinedButton(
                            text: "lbl_cancel".tr,
                            margin: EdgeInsets.only(right: 10.h),
                          ),
                        ),
                        Expanded(
                          child: CustomElevatedButton(
                            height: 45.v,
                            text: "lbl_stop".tr,
                            margin: EdgeInsets.only(left: 10.h),
                            buttonTextStyle:
                                CustomTextStyles.bodySmallOnPrimaryContainer_2,
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildBiggestDropAfterRow() {
    return Container(
      padding: EdgeInsets.symmetric(vertical: 15.v),
      decoration: AppDecoration.white.copyWith(
        borderRadius: BorderRadiusStyle.roundedBorder15,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          CustomIconButton(
            height: 40.adaptSize,
            width: 40.adaptSize,
            padding: EdgeInsets.all(11.h),
            child: CustomImageView(
              imagePath: ImageConstant.imgGroup78,
            ),
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              RichText(
                text: TextSpan(
                  children: [
                    TextSpan(
                      text: "msg_biggest_drop_after2".tr,
                      style: CustomTextStyles.bodyMediumOnErrorContainer_3,
                    ),
                    TextSpan(
                      text: "lbl_covid_19".tr,
                      style: CustomTextStyles.bodyMediumOnErrorContainer_3,
                    ),
                  ],
                ),
                textAlign: TextAlign.left,
              ),
              SizedBox(height: 4.v),
              Opacity(
                opacity: 0.5,
                child: Text(
                  "msg_heilbron_is_a_board2".tr,
                  style: CustomTextStyles.labelLargeOnErrorContainer,
                ),
              ),
            ],
          ),
          Opacity(
            opacity: 0.5,
            child: Padding(
              padding: EdgeInsets.only(top: 26.v),
              child: Text(
                "lbl_12_05_am".tr,
                style: theme.textTheme.labelMedium,
              ),
            ),
          ),
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildHowToWorkOutRow() {
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
            padding: EdgeInsets.all(11.h),
            child: CustomImageView(
              imagePath: ImageConstant.imgGroup79,
            ),
          ),
          Padding(
            padding: EdgeInsets.only(left: 15.h),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                RichText(
                  text: TextSpan(
                    children: [
                      TextSpan(
                        text: "lbl_how_to".tr,
                        style: CustomTextStyles.bodyMediumOnErrorContainer_3,
                      ),
                      TextSpan(
                        text: "msg_work_out_covid_19".tr,
                        style: CustomTextStyles.bodyMediumOnErrorContainer_3,
                      ),
                    ],
                  ),
                  textAlign: TextAlign.left,
                ),
                SizedBox(height: 5.v),
                Opacity(
                  opacity: 0.5,
                  child: Text(
                    "msg_despite_the_hopeful".tr,
                    style: CustomTextStyles.labelLargeOnErrorContainer,
                  ),
                ),
              ],
            ),
          ),
          Opacity(
            opacity: 0.5,
            child: Padding(
              padding: EdgeInsets.only(
                left: 7.h,
                top: 25.v,
              ),
              child: Text(
                "lbl_12_00_pm".tr,
                style: theme.textTheme.labelMedium,
              ),
            ),
          ),
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildWhenSelfCareCommunityCareRow() {
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
            padding: EdgeInsets.all(12.h),
            child: CustomImageView(
              imagePath: ImageConstant.imgGroup77,
            ),
          ),
          Container(
            height: 38.v,
            width: 236.h,
            margin: EdgeInsets.only(left: 15.h),
            child: Stack(
              alignment: Alignment.bottomRight,
              children: [
                Align(
                  alignment: Alignment.centerLeft,
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      RichText(
                        text: TextSpan(
                          children: [
                            TextSpan(
                              text: "lbl_when".tr,
                              style: theme.textTheme.titleSmall,
                            ),
                            TextSpan(
                              text: "msg_self_care_community".tr,
                              style: theme.textTheme.titleSmall,
                            ),
                          ],
                        ),
                        textAlign: TextAlign.left,
                      ),
                      SizedBox(height: 4.v),
                      Opacity(
                        opacity: 0.5,
                        child: Text(
                          "msg_board_certified".tr,
                          style: CustomTextStyles.labelLargeOnErrorContainer,
                        ),
                      ),
                    ],
                  ),
                ),
                Align(
                  alignment: Alignment.bottomRight,
                  child: Opacity(
                    opacity: 0.5,
                    child: Padding(
                      padding: EdgeInsets.only(bottom: 1.v),
                      child: Text(
                        "lbl_11_45_pm".tr,
                        style: theme.textTheme.labelMedium,
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildPfizerOrModernaRow() {
    return Container(
      padding: EdgeInsets.symmetric(
        horizontal: 15.h,
        vertical: 14.v,
      ),
      decoration: AppDecoration.white.copyWith(
        borderRadius: BorderRadiusStyle.roundedBorder15,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          CustomIconButton(
            height: 40.adaptSize,
            width: 40.adaptSize,
            padding: EdgeInsets.all(12.h),
            child: CustomImageView(
              imagePath: ImageConstant.imgGroup76,
            ),
          ),
          Padding(
            padding: EdgeInsets.only(left: 15.h),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "msg_pfizer_or_moderna".tr,
                  style: theme.textTheme.titleSmall,
                ),
                SizedBox(height: 5.v),
                Opacity(
                  opacity: 0.5,
                  child: Text(
                    "msg_the_biggest_disadvantage".tr,
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
                top: 25.v,
                right: 2.h,
              ),
              child: Text(
                "lbl_11_30_pm".tr,
                style: theme.textTheme.labelMedium,
              ),
            ),
          ),
        ],
      ),
    );
  }

  /// Common widget
  Widget _buildCard8({
    required String newsTitle,
    required String newsDescription,
    required String newsTime,
  }) {
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
            padding: EdgeInsets.all(12.h),
            child: CustomImageView(
              imagePath: ImageConstant.imgGroup83,
            ),
          ),
          Padding(
            padding: EdgeInsets.only(left: 15.h),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  newsTitle,
                  style: theme.textTheme.titleSmall!.copyWith(
                    color: theme.colorScheme.onErrorContainer.withOpacity(1),
                  ),
                ),
                SizedBox(height: 5.v),
                Opacity(
                  opacity: 0.5,
                  child: Text(
                    newsDescription,
                    style: CustomTextStyles.labelLargeOnErrorContainer.copyWith(
                      color:
                          theme.colorScheme.onErrorContainer.withOpacity(0.53),
                    ),
                  ),
                ),
              ],
            ),
          ),
          Opacity(
            opacity: 0.5,
            child: Padding(
              padding: EdgeInsets.only(
                left: 23.h,
                top: 26.v,
              ),
              child: Text(
                newsTime,
                style: theme.textTheme.labelMedium!.copyWith(
                  color: theme.colorScheme.onErrorContainer.withOpacity(0.53),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
