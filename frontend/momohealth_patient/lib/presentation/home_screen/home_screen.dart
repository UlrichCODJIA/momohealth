import 'package:nb_utils/nb_utils.dart';

import '../appointment_screen/appointment_screen.dart';
import '../home_screen/widgets/emergencyservice_item_widget.dart';
import '../search_tab_container_screen/search_tab_container_screen.dart';
import 'controller/home_controller.dart';
import 'models/emergencyservice_item_model.dart';
import '/core/app_export.dart';
import '/widgets/app_bar/appbar_subtitle_three.dart';
import '/widgets/app_bar/appbar_title.dart';
import '/widgets/app_bar/appbar_trailing_image.dart';
import '/widgets/app_bar/custom_app_bar.dart';
import '/widgets/custom_elevated_button.dart';
import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  HomeController controller = Get.put(HomeController());

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);

    return SafeArea(
      child: Obx(() {
        return Scaffold(
          resizeToAvoidBottomInset: false,
          body: [
            const HomeContainer(),
            const SearchTabContainerScreen(),
            const AppointmentScreen()
          ][controller.currentBottomItem.value],
          bottomNavigationBar: Container(child: _buildBottomBar()),
        );
      }),
    );
  }

  List bottomItem = [
    ImageConstant.bottomImg1,
    ImageConstant.bottomImg2,
    ImageConstant.bottomImg3,
    // ImageConstant.bottomImg4,
  ];

  /// Section Widget
  Widget _buildBottomBar() {
    return Container(
        margin: EdgeInsets.symmetric(horizontal: 25.h, vertical: 10.v),
        decoration: BoxDecoration(
            color: theme.colorScheme.onPrimaryContainer.withOpacity(.8),
            borderRadius: BorderRadius.circular(
              29.h,
            ),
            boxShadow: [
              BoxShadow(
                  color: theme.colorScheme.onErrorContainer.withOpacity(0.35),
                  spreadRadius: 2.h,
                  blurRadius: 2.h,
                  offset: const Offset(0, 0))
            ]),
        child: SizedBox(
          height: 60.v,
          child: Obx(() {
            return Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: bottomItem
                  .map((item) => InkWell(
                        onTap: () {
                          controller.currentBottomItem.value =
                              bottomItem.indexOf(item);
                        },
                        child: Container(
                          height: 34,
                          width: 34,
                          decoration: BoxDecoration(
                              color: controller.currentBottomItem.value ==
                                      bottomItem.indexOf(item)
                                  ? theme.colorScheme.primary
                                  : Colors.white,
                              shape: BoxShape.circle),
                          child: CustomImageView(
                            imagePath: item,
                            height: 18.v,
                            width: 18.h,
                            color: controller.currentBottomItem.value ==
                                    bottomItem.indexOf(item)
                                ? Colors.white
                                : theme.colorScheme.primary,
                            alignment: Alignment.center,
                          ),
                        ),
                      ))
                  .toList(),
            );
          }),
        )
        // Container(
        //   height: 39.v,
        //   width: 276.h,
        //   margin: EdgeInsets.fromLTRB(21.h, 14.v, 27.h, 14.v),
        //   child: Stack(
        //     alignment: Alignment.center,
        //     children: [
        //       // Align(
        //       //   alignment: Alignment.centerLeft,
        //       //   child: Container(
        //       //     height: 39.adaptSize,
        //       //     width: 39.adaptSize,
        //       //     decoration: BoxDecoration(
        //       //       color: theme.colorScheme.primary,
        //       //       borderRadius: BorderRadius.circular(
        //       //         19.h,
        //       //       ),
        //       //       boxShadow: [
        //       //         BoxShadow(
        //       //           color: appTheme.blueA20047,
        //       //           spreadRadius: 2.h,
        //       //           blurRadius: 2.h,
        //       //           offset: Offset(
        //       //             0,
        //       //             4,
        //       //           ),
        //       //         ),
        //       //       ],
        //       //     ),
        //       //   ),
        //       // ),
        //       // CustomImageView(
        //       //   imagePath: ImageConstant.imgFrame2,
        //       //   height: 18.v,
        //       //   width: 265.h,
        //       //   alignment: Alignment.center,
        //       // ),
        //     ],
        //   ),
        // ),
        );
  }
}

class HomeContainer extends StatefulWidget {
  const HomeContainer({Key? key}) : super(key: key);

  @override
  State<HomeContainer> createState() => _HomeContainerState();
}

class _HomeContainerState extends State<HomeContainer> {
  HomeController controller = Get.put(HomeController());
  TextEditingController searchController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.maxFinite,
      height: double.maxFinite,
      padding: EdgeInsets.only(top: 6.v),
      child: Column(
        children: [
          _buildBackground(),
          Expanded(
            child: Container(
              padding: EdgeInsets.only(top: 28.v),
              child: SingleChildScrollView(
                child: Column(
                  children: [
                    _buildEmergencyService(),
                    SizedBox(height: 32.v),
                    _buildTopDoctors(),
                    SizedBox(height: 23.v),
                    _buildGetAppointment(),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildBackground() {
    return Align(
      alignment: Alignment.centerRight,
      child: SizedBox(
        height: 248.v,
        width: 345.h,
        child: Stack(
          alignment: Alignment.topLeft,
          children: [
            Align(
              alignment: Alignment.bottomCenter,
              child: SizedBox(
                height: 227.v,
                width: 345.h,
                child: Stack(
                  alignment: Alignment.topRight,
                  children: [
                    Align(
                      alignment: Alignment.bottomLeft,
                      child: Container(
                        height: 173.v,
                        width: 315.h,
                        decoration: BoxDecoration(
                          color: theme.colorScheme.onPrimaryContainer
                              .withOpacity(1),
                          borderRadius: BorderRadius.circular(
                            24.h,
                          ),
                          boxShadow: [
                            BoxShadow(
                              color: theme.colorScheme.onErrorContainer
                                  .withOpacity(0.05),
                              spreadRadius: 2.h,
                              blurRadius: 2.h,
                              offset: const Offset(
                                0,
                                60,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    CustomImageView(
                      imagePath: ImageConstant.imgImage46,
                      height: 216.v,
                      width: 215.h,
                      alignment: Alignment.topRight,
                    ),
                    Align(
                      alignment: Alignment.centerLeft,
                      child: Container(
                        width: 135.h,
                        padding: EdgeInsets.only(top: 10.h),
                        margin: EdgeInsets.only(left: 20.h),
                        child: Text(
                          "msg_lets_find_your_specialist".tr,
                          maxLines: 2,
                          overflow: TextOverflow.ellipsis,
                          style: CustomTextStyles.titleLargeRegular.copyWith(
                            height: 1.40,
                          ),
                        ),
                      ),
                    ),
                    // Align(
                    //   alignment: Alignment.bottomLeft,
                    //   child: Padding(
                    //     padding: EdgeInsets.only(
                    //       left: 20.h,
                    //       bottom: 20.v,
                    //     ),
                    //     child: CustomSearchView(
                    //       width: 275.h,
                    //       controller: searchController,
                    //       hintText: "lbl_search".tr,
                    //       autofocus: false,
                    //       hintStyle:
                    //           CustomTextStyles.labelLargeOnErrorContainer_6,
                    //       alignment: Alignment.bottomLeft,
                    //       contentPadding: EdgeInsets.only(
                    //         top: 15.v,
                    //         right: 30.h,
                    //         bottom: 15.v,
                    //       ),
                    //     ),
                    //   ),
                    // ),
                  ],
                ),
              ),
            ),
            CustomAppBar(
              height: 60.v,
              title: Padding(
                padding: EdgeInsets.only(left: 1.h),
                child: Column(
                  children: [
                    AppbarSubtitleThree(
                      text: "msg_good_morning".tr,
                      margin: EdgeInsets.only(right: 27.h),
                    ),
                    SizedBox(height: 2.v),
                    AppbarTitle(
                      text: "lbl_alexandar".tr,
                    ),
                  ],
                ),
              ),
              actions: [
                AppbarTrailingImage(
                  imagePath: ImageConstant.imgGroup915,
                  height: 50,
                  width: 60,
                  margin: EdgeInsets.only(
                    left: 29.h,
                    top: 2.v,
                    right: 29.h,
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }

  /// Section Widget
  Widget _buildEmergencyService() {
    return Align(
      alignment: Alignment.centerRight,
      child: SizedBox(
        height: 99.v,
        child: Obx(
          () => ListView.separated(
            padding: EdgeInsets.only(left: 30.h),
            scrollDirection: Axis.horizontal,
            separatorBuilder: (
              context,
              index,
            ) {
              return SizedBox(
                width: 15.h,
              );
            },
            itemCount: controller
                .homeModelObj.value.emergencyserviceItemList.value.length,
            itemBuilder: (context, index) {
              EmergencyserviceItemModel model = controller
                  .homeModelObj.value.emergencyserviceItemList.value[index];
              return GestureDetector(
                onTap: () {
                  launchUrl(
                    model.url!.value.isInt
                        ? Uri.parse("tel://${model.url}")
                        : Uri.parse("${model.url}"),
                    mode: LaunchMode.inAppWebView,
                  );
                },
                child: EmergencyserviceItemWidget(
                  model,
                ),
              );
            },
          ),
        ),
      ),
    );
  }

  /// Section Widget
  Widget _buildTopDoctors() {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 30.h),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            "lbl_top_doctors".tr,
            style: CustomTextStyles.bodyLarge18,
          ),
          Padding(
            padding: EdgeInsets.symmetric(vertical: 3.v),
            child: Text(
              "lbl_see_all".tr,
              style: CustomTextStyles.bodySmallLightblue300,
            ),
          ),
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildGetAppointment() {
    return Column(
      children: List.generate(
        3,
        (index) => Container(
          padding: EdgeInsets.only(bottom: 10.v),
          child: Stack(
            alignment: Alignment.centerRight,
            children: [
              CustomImageView(
                imagePath: ImageConstant.imgMaskGroup,
                height: 173.v,
                width: 325.h,
                alignment: Alignment.center,
              ),
              Align(
                alignment: Alignment.centerRight,
                child: Padding(
                  padding: EdgeInsets.only(right: 20.h),
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: [
                      Text(
                        "lbl_cardialogist".tr,
                        style: CustomTextStyles.bodySmallDeeporange300,
                      ),
                      SizedBox(height: 9.v),
                      Text(
                        "msg_dr_maria_watson".tr,
                        style: theme.textTheme.bodyLarge,
                      ),
                      SizedBox(height: 4.v),
                      Opacity(
                        opacity: 0.5,
                        child: Text(
                          "msg_10_00_am_12_00".tr,
                          style: CustomTextStyles.bodySmallOnErrorContainer,
                        ),
                      ),
                      SizedBox(height: 22.v),
                      CustomElevatedButton(
                        height: 39.v,
                        width: 136.h,
                        text: "lbl_get_appointment".tr,
                        buttonTextStyle:
                            CustomTextStyles.bodySmallOnPrimaryContainer10,
                        alignment: Alignment.centerRight,
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
    // SingleChildScrollView(
    //   scrollDirection: Axis.horizontal,
    //   padding: EdgeInsets.only(
    //     left: 30.h,
    //     right: 20.h,
    //   ),
    //   child: IntrinsicWidth(
    //     child: Container(
    //       decoration: AppDecoration.white.copyWith(
    //         borderRadius: BorderRadiusStyle.roundedBorder24,
    //       ),
    //       child: Column(
    //         mainAxisAlignment: MainAxisAlignment.center,
    //         children: [
    //           SizedBox(
    // height: 173.v,
    // width: 325.h,
    //             child: Stack(
    //               alignment: Alignment.centerRight,
    //               children: [
    //                 CustomImageView(
    //                   imagePath: ImageConstant.imgMaskGroup,
    //                   height: 173.v,
    //                   width: 325.h,
    //                   alignment: Alignment.center,
    //                 ),
    //                 Align(
    //                   alignment: Alignment.centerRight,
    //                   child: Padding(
    //                     padding: EdgeInsets.only(right: 20.h),
    //                     child: Column(
    //                       mainAxisSize: MainAxisSize.min,
    //                       crossAxisAlignment: CrossAxisAlignment.end,
    //                       children: [
    //                         Text(
    //                           "lbl_cardialogist".tr,
    //                           style: CustomTextStyles.bodySmallDeeporange300,
    //                         ),
    //                         SizedBox(height: 9.v),
    //                         Text(
    //                           "msg_dr_maria_watson".tr,
    //                           style: theme.textTheme.bodyLarge,
    //                         ),
    //                         SizedBox(height: 4.v),
    //                         Opacity(
    //                           opacity: 0.5,
    //                           child: Text(
    //                             "msg_10_00_am_12_00".tr,
    //                             style:
    //                                 CustomTextStyles.bodySmallOnErrorContainer,
    //                           ),
    //                         ),
    //                         SizedBox(height: 22.v),
    //                         CustomElevatedButton(
    //                           height: 39.v,
    //                           width: 136.h,
    //                           text: "lbl_get_appointment".tr,
    //                           buttonTextStyle: CustomTextStyles
    //                               .bodySmallOnPrimaryContainer10,
    //                           alignment: Alignment.centerRight,
    //                         ),
    //                       ],
    //                     ),
    //                   ),
    //                 ),
    //               ],
    //             ),
    //           ),
    //           SizedBox(
    //             height: 10,
    //           ),
    //           Container(
    //             height: 173.v,
    //             width: 325.h,
    //             decoration: AppDecoration.white.copyWith(
    //               borderRadius: BorderRadiusStyle.roundedBorder24,
    //             ),
    //             child: Stack(
    //               alignment: Alignment.topRight,
    //               children: [
    //                 Align(
    //                   alignment: Alignment.bottomLeft,
    //                   child: SizedBox(
    //                     height: 161.v,
    //                     width: 222.h,
    //                     child: Stack(
    //                       alignment: Alignment.topRight,
    //                       children: [
    //                         CustomImageView(
    //                           imagePath:
    //                               ImageConstant.imgImage30RemovebgPreview,
    //                           height: 161.v,
    //                           width: 222.h,
    //                           radius: BorderRadius.circular(
    //                             24.h,
    //                           ),
    //                           alignment: Alignment.center,
    //                         ),
    //                         Align(
    //                           alignment: Alignment.topRight,
    //                           child: Padding(
    //                             padding: EdgeInsets.only(
    //                               top: 13.v,
    //                               right: 18.h,
    //                             ),
    //                             child: Text(
    //                               "lbl_cardialogist".tr,
    //                               style: CustomTextStyles
    //                                   .bodySmallOnErrorContainer10_4,
    //                             ),
    //                           ),
    //                         ),
    //                       ],
    //                     ),
    //                   ),
    //                 ),
    //                 Align(
    //                   alignment: Alignment.topRight,
    //                   child: Padding(
    //                     padding: EdgeInsets.only(
    //                       top: 45.v,
    //                       right: 60.h,
    //                     ),
    //                     child: Text(
    //                       "msg_dr_maria_watson".tr,
    //                       style: theme.textTheme.bodyLarge,
    //                     ),
    //                   ),
    //                 ),
    //                 Align(
    //                   alignment: Alignment.topRight,
    //                   child: Opacity(
    //                     opacity: 0.5,
    //                     child: Padding(
    //                       padding: EdgeInsets.only(
    //                         top: 69.v,
    //                         right: 76.h,
    //                       ),
    //                       child: Text(
    //                         "msg_10_00_am_12_00".tr,
    //                         style: CustomTextStyles.bodySmallOnErrorContainer,
    //                       ),
    //                     ),
    //                   ),
    //                 ),
    //                 CustomElevatedButton(
    //                   height: 39.v,
    //                   width: 136.h,
    //                   text: "lbl_get_appointment".tr,
    //                   margin: EdgeInsets.only(
    //                     right: 20.h,
    //                     bottom: 20.v,
    //                   ),
    //                   buttonStyle: CustomButtonStyles.fillGray,
    //                   buttonTextStyle:
    //                       CustomTextStyles.bodySmallOnErrorContainer10,
    //                   alignment: Alignment.bottomRight,
    //                 ),
    //               ],
    //             ),
    //           ),
    //         ],
    //       ),
    //     ),
    //   ),
    // );
  }
}
