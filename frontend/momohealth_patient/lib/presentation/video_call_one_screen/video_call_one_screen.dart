// import 'controller/video_call_one_controller.dart';
// import '/core/app_export.dart';
// import '/widgets/app_bar/appbar_image.dart';
// import '/widgets/app_bar/appbar_leading_iconbutton.dart';
// import '/widgets/app_bar/custom_app_bar.dart';
// import '/widgets/custom_floating_button.dart';
// import '/widgets/custom_icon_button.dart';
// import 'package:flutter/material.dart';

// class VideoCallOneScreen extends GetWidget<VideoCallOneController> {
//   const VideoCallOneScreen({Key? key}) : super(key: key);

//   @override
//   Widget build(BuildContext context) {
//     mediaQueryData = MediaQuery.of(context);
//     return SafeArea(
//         child: Scaffold(
//             extendBody: true,
//             extendBodyBehindAppBar: true,
//             backgroundColor:
//                 theme.colorScheme.onPrimaryContainer.withOpacity(1),
//             appBar: _buildAppBar(),
//             body: Container(
//                 width: mediaQueryData.size.width,
//                 height: mediaQueryData.size.height,
//                 padding: EdgeInsets.only(top: 120.v),
//                 decoration: BoxDecoration(
//                     color: theme.colorScheme.onPrimaryContainer.withOpacity(1),
//                     borderRadius:
//                         BorderRadius.vertical(bottom: Radius.circular(15.h)),
//                     gradient: LinearGradient(
//                         begin: const Alignment(0.5, 0.55),
//                         end: const Alignment(0.5, 1),
//                         colors: [
//                           theme.colorScheme.onPrimaryContainer.withOpacity(0),
//                           theme.colorScheme.onErrorContainer.withOpacity(0.6)
//                         ]),
//                     image: DecorationImage(
//                         image: AssetImage(ImageConstant.imgVideoCallOne),
//                         fit: BoxFit.cover)),
//                 child: Container(
//                     width: double.maxFinite,
//                     padding: EdgeInsets.symmetric(vertical: 17.v),
//                     child: Column(mainAxisSize: MainAxisSize.min, children: [
//                       const Spacer(),
//                       Opacity(
//                           opacity: 0.8,
//                           child: Text("lbl_10_002".tr,
//                               style: CustomTextStyles
//                                   .bodyMediumOnPrimaryContainer_1)),
//                       SizedBox(height: 15.v),
//                       Padding(
//                           padding: EdgeInsets.symmetric(horizontal: 50.h),
//                           child: Row(
//                               mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                               children: [
//                                 Padding(
//                                     padding:
//                                         EdgeInsets.symmetric(vertical: 5.v),
//                                     child: CustomIconButton(
//                                         height: 50.adaptSize,
//                                         width: 50.adaptSize,
//                                         padding: EdgeInsets.all(16.h),
//                                         decoration: IconButtonStyleHelper
//                                             .fillOnPrimaryContainerTL25,
//                                         child: CustomImageView(
//                                             imagePath:
//                                                 ImageConstant.imgLoudSpiker))),
//                                 CustomIconButton(
//                                     height: 60.adaptSize,
//                                     width: 60.adaptSize,
//                                     padding: EdgeInsets.all(20.h),
//                                     decoration:
//                                         IconButtonStyleHelper.fillRedATL30,
//                                     child: CustomImageView(
//                                         imagePath: ImageConstant.imgCallEnd)),
//                                 Padding(
//                                     padding:
//                                         EdgeInsets.symmetric(vertical: 5.v),
//                                     child: CustomIconButton(
//                                         height: 50.adaptSize,
//                                         width: 50.adaptSize,
//                                         padding: EdgeInsets.all(16.h),
//                                         decoration: IconButtonStyleHelper
//                                             .fillOnPrimaryContainerTL25,
//                                         child: CustomImageView(
//                                             imagePath: ImageConstant.imgVideo)))
//                               ])),
//                       SizedBox(height: 16.v),
//                       Opacity(
//                           opacity: 0.8,
//                           child: Text("msg_swipe_up_to_show".tr,
//                               style: CustomTextStyles
//                                   .bodySmallOnPrimaryContainer_1))
//                     ]))),
//             floatingActionButton: _buildFloatingActionButton()));
//   }

//   /// Section Widget
//   PreferredSizeWidget _buildAppBar() {
//     return CustomAppBar(
//         height: 146.v,
//         leadingWidth: 65.h,
//         leading: AppbarLeadingIconbutton(
//             imagePath: ImageConstant.imgArrowLeft,
//             margin: EdgeInsets.only(left: 25.h, bottom: 80.v),
//             onTap: () {
//               onTapArrowLeft();
//             }),
//         actions: [
//           Container(
//               margin: EdgeInsets.symmetric(horizontal: 25.h),
//               decoration: AppDecoration.fillGray200
//                   .copyWith(borderRadius: BorderRadiusStyle.roundedBorder24),
//               child: AppbarImage(imagePath: ImageConstant.imgRectangle17))
//         ]);
//   }

//   /// Section Widget
//   Widget _buildFloatingActionButton() {
//     return CustomFloatingButton(
//         height: 40,
//         width: 40,
//         backgroundColor: theme.colorScheme.onPrimaryContainer.withOpacity(1),
//         decoration: FloatingButtonStyleHelper.fillOnPrimaryContainer,
//         child: CustomImageView(
//             imagePath: ImageConstant.imgScreenshot,
//             height: 20.0.v,
//             width: 20.0.h));
//   }

//   /// Navigates to the previous screen.
//   onTapArrowLeft() {
//     Get.back();
//   }
// }
