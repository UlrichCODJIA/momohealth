import 'controller/app_navigation_controller.dart';
import '/core/app_export.dart';
import 'package:flutter/material.dart';

// ignore_for_file: must_be_immutable
class AppNavigationScreen extends GetWidget<AppNavigationController> {
  const AppNavigationScreen({Key? key})
      : super(
          key: key,
        );

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);

    return SafeArea(
      child: Scaffold(
        backgroundColor: const Color(0XFFFFFFFF),
        body: SizedBox(
          width: double.maxFinite,
          child: Column(
            children: [
              _buildAppNavigation(),
              Expanded(
                child: SingleChildScrollView(
                  child: Container(
                    decoration: const BoxDecoration(
                      color: Color(0XFFFFFFFF),
                    ),
                    child: Column(
                      children: [
                        _buildScreenTitle(
                          screenTitle: "Home".tr,
                          onTapScreenTitle: () =>
                              onTapScreenTitle(AppRoutes.homeScreen),
                        ),
                        _buildScreenTitle(
                          screenTitle: "Search - Tab Container".tr,
                          onTapScreenTitle: () => onTapScreenTitle(
                              AppRoutes.searchTabContainerScreen),
                        ),
                        _buildScreenTitle(
                          screenTitle: "Search One - Tab Container".tr,
                          onTapScreenTitle: () => onTapScreenTitle(
                              AppRoutes.searchOneTabContainerScreen),
                        ),
                        _buildScreenTitle(
                          screenTitle: "Get Schedule".tr,
                          onTapScreenTitle: () =>
                              onTapScreenTitle(AppRoutes.getScheduleScreen),
                        ),
                        _buildScreenTitle(
                          screenTitle: "Confirmation".tr,
                          onTapScreenTitle: () =>
                              onTapScreenTitle(AppRoutes.confirmationScreen),
                        ),
                        _buildScreenTitle(
                          screenTitle: "Subscription".tr,
                          onTapScreenTitle: () =>
                              onTapScreenTitle(AppRoutes.subscriptionScreen),
                        ),
                        _buildScreenTitle(
                          screenTitle: "Health News One".tr,
                          onTapScreenTitle: () =>
                              onTapScreenTitle(AppRoutes.healthNewsOneScreen),
                        ),
                        _buildScreenTitle(
                          screenTitle: "Health News".tr,
                          onTapScreenTitle: () =>
                              onTapScreenTitle(AppRoutes.healthNewsScreen),
                        ),
                        _buildScreenTitle(
                          screenTitle: "Hospital - Tab Container".tr,
                          onTapScreenTitle: () => onTapScreenTitle(
                              AppRoutes.hospitalTabContainerScreen),
                        ),
                        _buildScreenTitle(
                          screenTitle: "Sign In".tr,
                          onTapScreenTitle: () =>
                              onTapScreenTitle(AppRoutes.signInScreen),
                        ),
                        _buildScreenTitle(
                          screenTitle: "Sign up Two".tr,
                          onTapScreenTitle: () =>
                              onTapScreenTitle(AppRoutes.signUpTwoScreen),
                        ),
                        _buildScreenTitle(
                          screenTitle: "Sign up One".tr,
                          onTapScreenTitle: () =>
                              onTapScreenTitle(AppRoutes.signUpOneScreen),
                        ),
                        _buildScreenTitle(
                          screenTitle: "Pill Remainder".tr,
                          onTapScreenTitle: () =>
                              onTapScreenTitle(AppRoutes.pillRemainderScreen),
                        ),
                        _buildScreenTitle(
                          screenTitle: "Help - Tab Container".tr,
                          onTapScreenTitle: () => onTapScreenTitle(
                              AppRoutes.helpTabContainerScreen),
                        ),
                        _buildScreenTitle(
                          screenTitle: "Disease".tr,
                          onTapScreenTitle: () =>
                              onTapScreenTitle(AppRoutes.diseaseScreen),
                        ),
                        _buildScreenTitle(
                          screenTitle: "Health Condition".tr,
                          onTapScreenTitle: () =>
                              onTapScreenTitle(AppRoutes.healthConditionScreen),
                        ),
                        _buildScreenTitle(
                          screenTitle: "Profile".tr,
                          onTapScreenTitle: () =>
                              onTapScreenTitle(AppRoutes.profileScreen),
                        ),
                        _buildScreenTitle(
                          screenTitle: "Video call One".tr,
                          onTapScreenTitle: () =>
                              onTapScreenTitle(AppRoutes.videoCallOneScreen),
                        ),
                        _buildScreenTitle(
                          screenTitle: "Video call Two".tr,
                          onTapScreenTitle: () =>
                              onTapScreenTitle(AppRoutes.videoCallTwoScreen),
                        ),
                        _buildScreenTitle(
                          screenTitle: "Video call".tr,
                          onTapScreenTitle: () =>
                              onTapScreenTitle(AppRoutes.videoCallScreen),
                        ),
                        _buildScreenTitle(
                          screenTitle: "Message".tr,
                          onTapScreenTitle: () =>
                              onTapScreenTitle(AppRoutes.messageScreen),
                        ),
                        _buildScreenTitle(
                          screenTitle: "call rating".tr,
                          onTapScreenTitle: () =>
                              onTapScreenTitle(AppRoutes.callRatingScreen),
                        ),
                        _buildScreenTitle(
                          screenTitle: "Report".tr,
                          onTapScreenTitle: () =>
                              onTapScreenTitle(AppRoutes.reportScreen),
                        ),
                        _buildScreenTitle(
                          screenTitle: "Notification".tr,
                          onTapScreenTitle: () =>
                              onTapScreenTitle(AppRoutes.notificationScreen),
                        ),
                        _buildScreenTitle(
                          screenTitle: "Message One".tr,
                          onTapScreenTitle: () =>
                              onTapScreenTitle(AppRoutes.messageOneScreen),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  /// Section Widget
  Widget _buildAppNavigation() {
    return Container(
      decoration: const BoxDecoration(
        color: Color(0XFFFFFFFF),
      ),
      child: Column(
        children: [
          SizedBox(height: 10.v),
          Align(
            alignment: Alignment.centerLeft,
            child: Padding(
              padding: EdgeInsets.symmetric(horizontal: 20.h),
              child: Text(
                "App Navigation".tr,
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: const Color(0XFF000000),
                  fontSize: 20.fSize,
                  fontFamily: 'Roboto',
                  fontWeight: FontWeight.w400,
                ),
              ),
            ),
          ),
          SizedBox(height: 10.v),
          Align(
            alignment: Alignment.centerLeft,
            child: Padding(
              padding: EdgeInsets.only(left: 20.h),
              child: Text(
                "Check your app's UI from the below demo screens of your app."
                    .tr,
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: const Color(0XFF888888),
                  fontSize: 16.fSize,
                  fontFamily: 'Roboto',
                  fontWeight: FontWeight.w400,
                ),
              ),
            ),
          ),
          SizedBox(height: 5.v),
          Divider(
            height: 1.v,
            thickness: 1.v,
            color: const Color(0XFF000000),
          ),
        ],
      ),
    );
  }

  /// Common widget
  Widget _buildScreenTitle({
    required String screenTitle,
    Function? onTapScreenTitle,
  }) {
    return GestureDetector(
      onTap: () {
        onTapScreenTitle!.call();
      },
      child: Container(
        decoration: const BoxDecoration(
          color: Color(0XFFFFFFFF),
        ),
        child: Column(
          children: [
            SizedBox(height: 10.v),
            Align(
              alignment: Alignment.centerLeft,
              child: Padding(
                padding: EdgeInsets.symmetric(horizontal: 20.h),
                child: Text(
                  screenTitle,
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    color: const Color(0XFF000000),
                    fontSize: 20.fSize,
                    fontFamily: 'Roboto',
                    fontWeight: FontWeight.w400,
                  ),
                ),
              ),
            ),
            SizedBox(height: 10.v),
            SizedBox(height: 5.v),
            Divider(
              height: 1.v,
              thickness: 1.v,
              color: const Color(0XFF888888),
            ),
          ],
        ),
      ),
    );
  }

  /// Common click event
  void onTapScreenTitle(String routeName) {
    Get.toNamed(routeName);
  }
}
