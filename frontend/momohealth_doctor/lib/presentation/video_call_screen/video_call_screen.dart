// import 'controller/video_call_controller.dart';
// import '/core/app_export.dart';
// import '/widgets/app_bar/appbar_leading_image.dart';
// import '/widgets/app_bar/custom_app_bar.dart';
// import '/widgets/custom_icon_button.dart';
// import '/widgets/custom_text_form_field.dart';
// import 'package:flutter/material.dart';

// // ignore_for_file: must_be_immutable
// class VideoCallScreen extends StatefulWidget {
//   const VideoCallScreen({Key? key})
//       : super(
//           key: key,
//         );

//   @override
//   State<VideoCallScreen> createState() => _VideoCallScreenState();
// }

// class _VideoCallScreenState extends State<VideoCallScreen> {
//   VideoCallController controller = Get.put(VideoCallController());
//   @override
//   Widget build(BuildContext context) {
//     mediaQueryData = MediaQuery.of(context);

//     return SafeArea(
//       child: Scaffold(
//         resizeToAvoidBottomInset: false,
//         backgroundColor: theme.colorScheme.onPrimaryContainer.withOpacity(1),
//         body: SizedBox(
//           height: mediaQueryData.size.height,
//           width: double.maxFinite,
//           child: Stack(
//             alignment: Alignment.topCenter,
//             children: [
//               CustomImageView(
//                 imagePath: ImageConstant.imgDoctorImage,
//                 height: 650.v,
//                 width: 375.h,
//                 radius: BorderRadius.vertical(
//                   bottom: Radius.circular(15.h),
//                 ),
//                 alignment: Alignment.topCenter,
//               ),
//               Align(
//                 alignment: Alignment.topCenter,
//                 child: Container(
//                   decoration: AppDecoration.fillOnPrimaryContainer.copyWith(
//                     borderRadius: BorderRadiusStyle.customBorderBL15,
//                   ),
//                   child: Column(
//                     mainAxisSize: MainAxisSize.min,
//                     mainAxisAlignment: MainAxisAlignment.center,
//                     children: [
//                       SizedBox(height: 1.v),
//                       Expanded(
//                         child: Container(
//                           padding: EdgeInsets.symmetric(vertical: 44.v),
//                           decoration: AppDecoration
//                               .gradientOnPrimaryContainerToOnErrorContainer1
//                               .copyWith(
//                             borderRadius: BorderRadiusStyle.customBorderBL15,
//                           ),
//                           child: Column(
//                             mainAxisSize: MainAxisSize.min,
//                             children: [
//                               _buildAppBar(),
//                               const Spacer(),
//                               SizedBox(
//                                 height: 120.adaptSize,
//                                 width: 120.adaptSize,
//                                 child: Stack(
//                                   alignment: Alignment.center,
//                                   children: [
//                                     Align(
//                                       alignment: Alignment.center,
//                                       child: Container(
//                                         height: 120.v,
//                                         width: 112.h,
//                                         decoration: BoxDecoration(
//                                           color: appTheme.gray200,
//                                           borderRadius: BorderRadius.circular(
//                                             25.h,
//                                           ),
//                                         ),
//                                       ),
//                                     ),
//                                     CustomImageView(
//                                       imagePath: ImageConstant.imgRectangle18,
//                                       height: 120.adaptSize,
//                                       width: 120.adaptSize,
//                                       radius: BorderRadius.circular(
//                                         25.h,
//                                       ),
//                                       alignment: Alignment.center,
//                                     ),
//                                   ],
//                                 ),
//                               ),
//                               SizedBox(height: 88.v),
//                               Align(
//                                 alignment: Alignment.centerRight,
//                                 child: Padding(
//                                   padding: EdgeInsets.only(right: 25.h),
//                                   child: Row(
//                                     mainAxisAlignment: MainAxisAlignment.end,
//                                     crossAxisAlignment:
//                                         CrossAxisAlignment.start,
//                                     children: [
//                                       Padding(
//                                         padding: EdgeInsets.only(top: 29.v),
//                                         child: Text(
//                                           "lbl_10_002".tr,
//                                           style: theme.textTheme.titleSmall,
//                                         ),
//                                       ),
//                                       Padding(
//                                         padding: EdgeInsets.only(
//                                           left: 105.h,
//                                           bottom: 7.v,
//                                         ),
//                                         child: CustomIconButton(
//                                           height: 40.adaptSize,
//                                           width: 40.adaptSize,
//                                           padding: EdgeInsets.all(14.h),
//                                           decoration: IconButtonStyleHelper
//                                               .fillOnPrimaryContainer,
//                                           child: CustomImageView(
//                                             imagePath:
//                                                 ImageConstant.imgScreenshot,
//                                           ),
//                                         ),
//                                       ),
//                                     ],
//                                   ),
//                                 ),
//                               ),
//                               SizedBox(height: 15.v),
//                               Padding(
//                                 padding: EdgeInsets.symmetric(horizontal: 50.h),
//                                 child: Row(
//                                   mainAxisAlignment:
//                                       MainAxisAlignment.spaceBetween,
//                                   children: [
//                                     Padding(
//                                       padding:
//                                           EdgeInsets.symmetric(vertical: 5.v),
//                                       child: CustomIconButton(
//                                         height: 50.adaptSize,
//                                         width: 50.adaptSize,
//                                         padding: EdgeInsets.all(16.h),
//                                         decoration: IconButtonStyleHelper
//                                             .fillOnPrimaryContainerTL25,
//                                         child: CustomImageView(
//                                           imagePath:
//                                               ImageConstant.imgLoudSpiker,
//                                         ),
//                                       ),
//                                     ),
//                                     CustomIconButton(
//                                       height: 60.adaptSize,
//                                       width: 60.adaptSize,
//                                       padding: EdgeInsets.all(20.h),
//                                       decoration:
//                                           IconButtonStyleHelper.fillRedATL30,
//                                       child: CustomImageView(
//                                         imagePath: ImageConstant.imgCallEnd,
//                                       ),
//                                     ),
//                                     Padding(
//                                       padding:
//                                           EdgeInsets.symmetric(vertical: 5.v),
//                                       child: CustomIconButton(
//                                         height: 50.adaptSize,
//                                         width: 50.adaptSize,
//                                         padding: EdgeInsets.all(16.h),
//                                         decoration: IconButtonStyleHelper
//                                             .fillOnPrimaryContainerTL25,
//                                         child: CustomImageView(
//                                           imagePath: ImageConstant.imgVideo,
//                                         ),
//                                       ),
//                                     ),
//                                   ],
//                                 ),
//                               ),
//                               SizedBox(height: 17.v),
//                               Opacity(
//                                 opacity: 0.8,
//                                 child: Text(
//                                   "msg_swipe_down_to_hide".tr,
//                                   style: CustomTextStyles
//                                       .bodySmallOnPrimaryContainer_1,
//                                 ),
//                               ),
//                               SizedBox(height: 10.v),
//                             ],
//                           ),
//                         ),
//                       ),
//                     ],
//                   ),
//                 ),
//               ),
//               _buildVideoCall(),
//             ],
//           ),
//         ),
//       ),
//     );
//   }

//   /// Section Widget
//   PreferredSizeWidget _buildAppBar() {
//     return CustomAppBar(
//       height: 40.v,
//       leadingWidth: double.maxFinite,
//       leading: AppbarLeadingImage(
//         imagePath: ImageConstant.imgBackBttn,
//         margin: EdgeInsets.only(
//           left: 25.h,
//           right: 310.h,
//         ),
//       ),
//     );
//   }

//   /// Section Widget
//   Widget _buildVideoCall() {
//     return Align(
//       alignment: Alignment.bottomCenter,
//       child: Container(
//         padding: EdgeInsets.symmetric(
//           horizontal: 25.h,
//           vertical: 30.v,
//         ),
//         decoration: BoxDecoration(
//           borderRadius: BorderRadiusStyle.customBorderTL25,
//         ),
//         child: Column(
//           mainAxisSize: MainAxisSize.min,
//           crossAxisAlignment: CrossAxisAlignment.start,
//           children: [
//             Row(
//               children: [
//                 Expanded(
//                   child: Container(
//                     padding: EdgeInsets.symmetric(
//                       horizontal: 15.h,
//                       vertical: 12.v,
//                     ),
//                     decoration: AppDecoration.gray.copyWith(
//                       borderRadius: BorderRadiusStyle.roundedBorder15,
//                     ),
//                     child: Row(
//                       crossAxisAlignment: CrossAxisAlignment.start,
//                       children: [
//                         Padding(
//                           padding: EdgeInsets.only(
//                             top: 8.v,
//                             bottom: 6.v,
//                           ),
//                           child: CustomTextFormField(
//                             width: 188.h,
//                             controller: controller.messageController,
//                             hintText: "msg_enter_your_message".tr,
//                             hintStyle:
//                                 CustomTextStyles.labelLargeOnErrorContainer,
//                             textInputAction: TextInputAction.done,
//                           ),
//                         ),
//                         Container(
//                           height: 30.adaptSize,
//                           width: 30.adaptSize,
//                           margin: EdgeInsets.only(left: 12.h),
//                           child: Stack(
//                             alignment: Alignment.topCenter,
//                             children: [
//                               CustomImageView(
//                                 imagePath: ImageConstant.imgBg,
//                                 height: 30.adaptSize,
//                                 width: 30.adaptSize,
//                                 alignment: Alignment.center,
//                               ),
//                               CustomImageView(
//                                 imagePath: ImageConstant.img,
//                                 height: 19.v,
//                                 width: 16.h,
//                                 alignment: Alignment.topCenter,
//                                 margin: EdgeInsets.only(top: 5.v),
//                               ),
//                             ],
//                           ),
//                         ),
//                       ],
//                     ),
//                   ),
//                 ),
//                 Padding(
//                   padding: EdgeInsets.only(left: 10.h),
//                   child: CustomIconButton(
//                     height: 55.adaptSize,
//                     width: 55.adaptSize,
//                     padding: EdgeInsets.all(18.h),
//                     decoration: IconButtonStyleHelper.fillPrimaryTL27,
//                     child: CustomImageView(
//                       imagePath: ImageConstant.imgSendBttn,
//                     ),
//                   ),
//                 ),
//               ],
//             ),
//             SizedBox(height: 20.v),
//             Padding(
//               padding: EdgeInsets.only(right: 15.h),
//               child: Row(
//                 mainAxisAlignment: MainAxisAlignment.center,
//                 children: [
//                   Expanded(
//                     child: Padding(
//                       padding: EdgeInsets.only(right: 15.h),
//                       child: CustomIconButton(
//                         height: 55.adaptSize,
//                         width: 55.adaptSize,
//                         padding: EdgeInsets.all(18.h),
//                         child: CustomImageView(
//                           imagePath: ImageConstant.imgGroup958,
//                         ),
//                       ),
//                     ),
//                   ),
//                   Expanded(
//                     child: Padding(
//                       padding: EdgeInsets.symmetric(horizontal: 15.h),
//                       child: CustomIconButton(
//                         height: 55.adaptSize,
//                         width: 55.adaptSize,
//                         padding: EdgeInsets.all(19.h),
//                         decoration: IconButtonStyleHelper.fillLightBlueTL15,
//                         child: CustomImageView(
//                           imagePath: ImageConstant.imgGroup959,
//                         ),
//                       ),
//                     ),
//                   ),
//                   Expanded(
//                     child: Padding(
//                       padding: EdgeInsets.symmetric(horizontal: 15.h),
//                       child: CustomIconButton(
//                         height: 55.adaptSize,
//                         width: 55.adaptSize,
//                         padding: EdgeInsets.all(19.h),
//                         decoration: IconButtonStyleHelper.fillRed,
//                         child: CustomImageView(
//                           imagePath: ImageConstant.imgGroup960,
//                         ),
//                       ),
//                     ),
//                   ),
//                   Expanded(
//                     child: Padding(
//                       padding: EdgeInsets.only(left: 15.h),
//                       child: CustomIconButton(
//                         height: 55.adaptSize,
//                         width: 55.adaptSize,
//                         padding: EdgeInsets.all(18.h),
//                         child: CustomImageView(
//                           imagePath: ImageConstant.imgGroup961,
//                         ),
//                       ),
//                     ),
//                   ),
//                 ],
//               ),
//             ),
//           ],
//         ),
//       ),
//     );
//   }
// }
