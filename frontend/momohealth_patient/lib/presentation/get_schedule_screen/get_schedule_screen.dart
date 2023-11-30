import 'dart:ffi';

import 'package:intl/intl.dart';
import 'package:month_picker_dialog/month_picker_dialog.dart';
import 'package:numberpicker/numberpicker.dart';

import '../confirmation_screen/confirmation_screen.dart';
import 'controller/get_schedule_controller.dart';
import '/core/app_export.dart';
import '/widgets/app_bar/appbar_leading_image.dart';
import '/widgets/app_bar/appbar_subtitle.dart';
import '/widgets/app_bar/custom_app_bar.dart';
import '/widgets/custom_elevated_button.dart';
import '/widgets/custom_icon_button.dart';
import 'package:flutter/material.dart';

class GetScheduleScreen extends StatefulWidget {
  const GetScheduleScreen({Key? key}) : super(key: key);

  @override
  State<GetScheduleScreen> createState() => _GetScheduleScreenState();
}

class _GetScheduleScreenState extends State<GetScheduleScreen> {
  GetScheduleController controller = Get.put(GetScheduleController());
  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);

    return SafeArea(
        child: Scaffold(
            appBar: _buildAppBar(),
            body: Container(
                width: double.maxFinite,
                padding: EdgeInsets.symmetric(horizontal: 3.h, vertical: 14.v),
                child: SingleChildScrollView(
                  child: Column(children: [
                    _buildDoctorAndDate(),
                    _buildTimeCard(),
                  ]),
                )),
            bottomNavigationBar: _buildBookAppointment()));
  }

  /// Section Widget
  PreferredSizeWidget _buildAppBar() {
    return CustomAppBar(
        leadingWidth: 33.h,
        leading: AppbarLeadingImage(
            imagePath: ImageConstant.imgArrowLeft,
            margin: EdgeInsets.only(left: 27.h, top: 16.v, bottom: 16.v),
            onTap: () {
              onTapArrowLeft();
            }),
        centerTitle: true,
        title: AppbarSubtitle(text: "lbl_get_schedule".tr.toUpperCase()));
  }

  /// Section Widget
  Widget _buildTimeCard() {
    return Align(
        alignment: Alignment.bottomCenter,
        child: Container(
            margin: EdgeInsets.only(bottom: 5.v, left: 21.h, right: 21.h),
            decoration: AppDecoration.white
                .copyWith(borderRadius: BorderRadiusStyle.roundedBorder15),
            child: Stack(
              children: [
                Container(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
                  decoration:
                      BoxDecoration(borderRadius: BorderRadius.circular(10)),
                  child: Obx(() {
                    return Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        NumberPicker(
                          minValue: 0,
                          maxValue: 23,
                          infiniteLoop: true,
                          zeroPad: true,
                          itemWidth: 80,
                          itemHeight: 60,
                          value: int.parse(controller.hourSelected.value),
                          selectedTextStyle: const TextStyle(
                              color: Colors.blue,
                              fontWeight: FontWeight.bold,
                              fontSize: 22),
                          onChanged: (val) {
                            controller.hourSelected.value = val.toString();
                          },
                          decoration: const BoxDecoration(
                              border: Border(
                                  top: BorderSide(color: Colors.black54),
                                  bottom: BorderSide(color: Colors.black54))),
                        ),
                        NumberPicker(
                          minValue: 0,
                          maxValue: 59,
                          infiniteLoop: true,
                          zeroPad: true,
                          itemWidth: 80,
                          itemHeight: 60,
                          value: int.parse(controller.minuteSelected.value),
                          selectedTextStyle: const TextStyle(
                              color: Colors.blue,
                              fontWeight: FontWeight.bold,
                              fontSize: 22),
                          onChanged: (val) {
                            controller.minuteSelected.value = val.toString();
                          },
                          decoration: const BoxDecoration(
                              border: Border(
                                  top: BorderSide(color: Colors.black54),
                                  bottom: BorderSide(color: Colors.black54))),
                        )
                      ],
                    );
                  }),
                ),
                // TimePickerDialog(
                //     helpText: "",
                //     cancelText: "",
                //     confirmText: "",
                //     initialEntryMode: TimePickerEntryMode.dial,
                //     initialTime: TimeOfDay.now()),
                Positioned(
                    bottom: 25,
                    right: 1,
                    child: Container(
                      height: 60,
                      color: Colors.transparent,
                      width: 300,
                    ))
              ],
            )));
  }

  /// Section Widget
  Widget _buildDoctorAndDate() {
    return Align(
        alignment: Alignment.topCenter,
        child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 21.h),
            child: Column(mainAxisSize: MainAxisSize.min, children: [
              Container(
                  padding: EdgeInsets.all(15.h),
                  decoration: AppDecoration.white.copyWith(
                      borderRadius: BorderRadiusStyle.roundedBorder15),
                  child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        Container(
                            height: 60.adaptSize,
                            width: 60.adaptSize,
                            decoration: AppDecoration.outlineOnPrimaryContainer1
                                .copyWith(
                                    borderRadius:
                                        BorderRadiusStyle.circleBorder30),
                            child: CustomImageView(
                                imagePath:
                                    ImageConstant.imgUnnamedRemovebgPreview,
                                height: 53.v,
                                width: 60.h,
                                radius: BorderRadius.circular(30.h),
                                alignment: Alignment.bottomCenter)),
                        Padding(
                            padding: EdgeInsets.only(
                                left: 12.h, top: 10.v, bottom: 10.v),
                            child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text("lbl_dr_brown_hill".tr,
                                      style: theme.textTheme.titleSmall),
                                  SizedBox(height: 5.v),
                                  Opacity(
                                      opacity: 0.4,
                                      child: Text("lbl_cardiologists2".tr,
                                          style: CustomTextStyles
                                              .labelLargeOnErrorContainer_6))
                                ])),
                        Padding(
                            padding: EdgeInsets.fromLTRB(97.h, 13.v, 5.h, 14.v),
                            child: CustomIconButton(
                                height: 33.adaptSize,
                                width: 33.adaptSize,
                                padding: EdgeInsets.all(10.h),
                                decoration: IconButtonStyleHelper.fillGray,
                                child: CustomImageView(
                                    imagePath: ImageConstant.imgGroup143)))
                      ])),
              Container(
                padding: EdgeInsets.symmetric(vertical: 26.v),
                margin: const EdgeInsets.symmetric(vertical: 10),
                decoration: AppDecoration.outlineBlueGray
                    .copyWith(borderRadius: BorderRadiusStyle.roundedBorder15),
                child: Stack(alignment: Alignment.bottomCenter, children: [
                  // Align(
                  //     alignment: Alignment.center,
                  //     child: Container(
                  // padding: EdgeInsets.symmetric(
                  //     horizontal: 20.h, vertical: 26.v),
                  // decoration: AppDecoration.outlineBlueGray.copyWith(
                  //     borderRadius:
                  //         BorderRadiusStyle.roundedBorder15),
                  //         child: Column(
                  //             mainAxisSize: MainAxisSize.min,
                  //             crossAxisAlignment: CrossAxisAlignment.end,
                  //             children: [
                  //               SizedBox(height: 62.v),
                  //               CustomImageView(
                  //                   imagePath: ImageConstant.imgGroup944,
                  //                   height: 10.v,
                  //                   width: 30.h)
                  //             ]))),
                  Align(
                      alignment: Alignment.bottomCenter,
                      child: Padding(
                          padding: EdgeInsets.only(
                              left: 16.h, right: 13.h, bottom: 10.v),
                          child: Column(
                              mainAxisSize: MainAxisSize.min,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Padding(
                                    padding: EdgeInsets.only(left: 3.h),
                                    child: Obx(() {
                                      return GestureDetector(
                                        onTap: () {
                                          showMonthPicker(
                                            context: context,
                                            initialDate: DateTime.now(),
                                          ).then((date) {
                                            if (date != null) {
                                              controller.selectedDate.value =
                                                  date;
                                            }
                                          });
                                        },
                                        child: Row(
                                          children: [
                                            Expanded(
                                              child: Text(
                                                  DateFormat("MMMM, y").format(
                                                      controller
                                                          .selectedDate.value),
                                                  style: CustomTextStyles
                                                      .titleMedium18),
                                            ),
                                            const Icon(
                                              Icons.arrow_back_ios,
                                              size: 15,
                                            ),
                                            const Icon(
                                              Icons.arrow_forward_ios,
                                              size: 15,
                                            )
                                          ],
                                        ),
                                      );
                                    })),
                                SizedBox(height: 11.v),
                                SizedBox(
                                    height: 80,
                                    child: ListView(
                                      scrollDirection: Axis.horizontal,
                                      children: List.generate(
                                          DateTime(
                                                  controller
                                                      .selectedDate.value.year,
                                                  controller.selectedDate.value
                                                          .month +
                                                      1,
                                                  0)
                                              .day,
                                          (index) => Obx(() {
                                                return GestureDetector(
                                                  onTap: () {
                                                    controller.selectedDay
                                                        .value = index;
                                                  },
                                                  child: Container(
                                                    margin: EdgeInsets.only(
                                                        right: 20.h),
                                                    padding:
                                                        const EdgeInsets.all(6),
                                                    decoration: BoxDecoration(
                                                        color: controller
                                                                    .selectedDay
                                                                    .value ==
                                                                index
                                                            ? Colors.blue
                                                            : null,
                                                        borderRadius:
                                                            BorderRadius
                                                                .circular(28)),
                                                    child: Column(
                                                      mainAxisSize:
                                                          MainAxisSize.min,
                                                      mainAxisAlignment:
                                                          MainAxisAlignment
                                                              .spaceEvenly,
                                                      crossAxisAlignment:
                                                          CrossAxisAlignment
                                                              .center,
                                                      children: [
                                                        Text(
                                                          DateFormat("E")
                                                              .format(DateTime(
                                                                  DateTime.now()
                                                                      .year,
                                                                  DateTime.now()
                                                                      .month,
                                                                  index + 1)),
                                                          textAlign:
                                                              TextAlign.center,
                                                          style:
                                                              const TextStyle(
                                                                  color: Colors
                                                                      .white),
                                                        ),
                                                        Container(
                                                          padding:
                                                              const EdgeInsets
                                                                  .all(6),
                                                          decoration:
                                                              const BoxDecoration(
                                                                  color: Colors
                                                                      .white,
                                                                  shape: BoxShape
                                                                      .circle),
                                                          child: Text(
                                                            "${index + 1}"
                                                                .padLeft(
                                                                    2, '0'),
                                                            textAlign: TextAlign
                                                                .center,
                                                            style: CustomTextStyles
                                                                .titleSmallBold,
                                                          ),
                                                        )
                                                      ],
                                                    ),
                                                  ),
                                                );
                                              })),
                                    ))
                                // Row(
                                //     mainAxisAlignment:
                                //         MainAxisAlignment.spaceBetween,
                                //     crossAxisAlignment:
                                //         CrossAxisAlignment.end,
                                //     children: [
                                //       CustomImageView(
                                //           imagePath:
                                //               ImageConstant.imgVector31x23,
                                //           height: 31.v,
                                //           width: 23.h,
                                //           margin: EdgeInsets.only(
                                //               top: 15.v, bottom: 11.v)),
                                //       Padding(
                                //           padding: EdgeInsets.only(
                                //               top: 11.v, bottom: 7.v),
                                //           child: Column(
                                //               crossAxisAlignment:
                                //                   CrossAxisAlignment.start,
                                //               children: [
                                //                 SizedBox(
                                //                     width: 71.h,
                                //                     child: Row(
                                //                         mainAxisAlignment:
                                //                             MainAxisAlignment
                                //                                 .spaceBetween,
                                //                         children: [
                                //                           Opacity(
                                //                               opacity: 0.6,
                                //                               child: Text(
                                //                                   "lbl_tue"
                                //                                       .tr,
                                //                                   style: CustomTextStyles
                                //                                       .labelLargeOnErrorContainer_3)),
                                //                           Opacity(
                                //                               opacity: 0.6,
                                //                               child: Text(
                                //                                   "lbl_wed"
                                //                                       .tr,
                                //                                   style: CustomTextStyles
                                //                                       .labelLargeOnErrorContainer_3))
                                //                         ])),
                                //                 SizedBox(height: 5.v),
                                //                 Container(
                                //                     width: 62.h,
                                //                     margin: EdgeInsets.only(
                                //                         left: 3.h,
                                //                         right: 6.h),
                                //                     child: Row(
                                //                         mainAxisAlignment:
                                //                             MainAxisAlignment
                                //                                 .spaceBetween,
                                //                         children: [
                                //                           Text("lbl_16".tr,
                                //                               style: theme
                                //                                   .textTheme
                                //                                   .titleSmall),
                                //                           Text("lbl_17".tr,
                                //                               style: theme
                                //                                   .textTheme
                                //                                   .titleSmall)
                                //                         ]))
                                //               ])),
                                //       Container(
                                //           padding: EdgeInsets.all(3.h),
                                //           decoration: AppDecoration
                                //               .fillLightBlue
                                //               .copyWith(
                                //                   borderRadius:
                                //                       BorderRadiusStyle
                                //                           .roundedBorder15),
                                //           child: Column(
                                //               mainAxisSize: MainAxisSize.min,
                                //               mainAxisAlignment:
                                //                   MainAxisAlignment.end,
                                //               children: [
                                //                 SizedBox(height: 8.v),
                                //                 Text("lbl_thu".tr,
                                //                     style: CustomTextStyles
                                //                         .labelLargeOnPrimaryContainer_1),
                                //                 SizedBox(height: 1.v),
                                //                 Container(
                                //                     width: 27.adaptSize,
                                //                     padding:
                                //                         EdgeInsets.symmetric(
                                //                             horizontal: 6.h,
                                //                             vertical: 4.v),
                                //                     decoration: AppDecoration
                                //                         .outlineOnErrorContainer
                                //                         .copyWith(
                                //                             borderRadius:
                                //                                 BorderRadiusStyle
                                //                                     .roundedBorder15),
                                //                     child: Text("lbl_18".tr,
                                //                         style: theme.textTheme
                                //                             .titleSmall))
                                //               ])),
                                //       Padding(
                                //           padding: EdgeInsets.only(
                                //               top: 11.v, bottom: 7.v),
                                //           child: Column(children: [
                                //             SizedBox(
                                //                 width: 58.h,
                                //                 child: Row(
                                //                     mainAxisAlignment:
                                //                         MainAxisAlignment
                                //                             .spaceBetween,
                                //                     children: [
                                //                       Opacity(
                                //                           opacity: 0.6,
                                //                           child: Text(
                                //                               "lbl_fri".tr,
                                //                               style: CustomTextStyles
                                //                                   .labelLargeOnErrorContainer_3)),
                                //                       Opacity(
                                //                           opacity: 0.6,
                                //                           child: Text(
                                //                               "lbl_sat".tr,
                                //                               style: CustomTextStyles
                                //                                   .labelLargeOnErrorContainer_3))
                                //                     ])),
                                //             SizedBox(height: 5.v),
                                //             SizedBox(
                                //                 width: 57.h,
                                //                 child: Row(
                                //                     mainAxisAlignment:
                                //                         MainAxisAlignment
                                //                             .spaceBetween,
                                //                     children: [
                                //                       Text("lbl_19".tr,
                                //                           style: theme
                                //                               .textTheme
                                //                               .titleSmall),
                                //                       Text("lbl_20".tr,
                                //                           style: theme
                                //                               .textTheme
                                //                               .titleSmall)
                                //                     ]))
                                //           ])),
                                //       CustomImageView(
                                //           imagePath:
                                //               ImageConstant.imgVector31x19,
                                //           height: 31.v,
                                //           width: 19.h,
                                //           margin: EdgeInsets.only(
                                //               top: 15.v, bottom: 11.v))
                                //     ])
                              ]))),
                  Opacity(
                      opacity: 0.1,
                      child: Align(
                          alignment: Alignment.topCenter,
                          child:
                              SizedBox(width: 294.h, child: const Divider())))
                ]),
              )
            ])));
  }

  /// Section Widget
  Widget _buildBookAppointment() {
    return CustomElevatedButton(
        text: "msg_book_appointment".tr,
        onPressed: () {
          Get.bottomSheet(
              GestureDetector(
                behavior: HitTestBehavior.opaque,
                onTap: () => Get.back(),
                child: DraggableScrollableSheet(
                    initialChildSize: 0.54,
                    maxChildSize: 0.65,
                    minChildSize: 0.4,
                    builder: (_, scrollController) {
                      return scheduleConfirm(scrollController);
                    }),
              ),
              isScrollControlled: true,
              isDismissible: true);
        },
        margin: EdgeInsets.only(left: 25.h, right: 25.h, bottom: 25.v),
        buttonStyle: CustomButtonStyles.fillPrimaryTL15,
        buttonTextStyle: CustomTextStyles.bodyMediumOnPrimaryContainer_2);
  }

  scheduleConfirm(scrollController) {
    return Container(
      width: double.maxFinite,
      padding: EdgeInsets.symmetric(
        horizontal: 23.h,
        vertical: 20.v,
      ),
      decoration: AppDecoration.white.copyWith(
        borderRadius: BorderRadiusStyle.customBorderTL10,
      ),
      child: ListView(
        controller: scrollController,
        children: [
          Align(
            alignment: Alignment.centerLeft,
            child: Padding(
              padding: EdgeInsets.only(left: 5.h),
              child: Text(
                "lbl_confirmation".tr,
                style: theme.textTheme.bodyLarge,
              ),
            ),
          ),
          SizedBox(height: 20.v),
          Center(
            child: Container(
              height: 90.adaptSize,
              width: 90.adaptSize,
              decoration: AppDecoration.fillGreen.copyWith(
                borderRadius: BorderRadiusStyle.circleBorder45,
              ),
              child: CustomImageView(
                imagePath: ImageConstant.imgBeautifulYoung,
                height: 76.v,
                width: 90.h,
                radius: BorderRadius.circular(
                  45.h,
                ),
                alignment: Alignment.bottomCenter,
              ),
            ),
          ),
          SizedBox(height: 14.v),
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                "lbl_dr_brown_hill".tr,
                style: theme.textTheme.bodyLarge,
              ),
              SizedBox(height: 7.v),
              Opacity(
                opacity: 0.6,
                child: Text(
                  "lbl_cardiologists2".tr,
                  style: CustomTextStyles.bodySmallOnErrorContainer_4,
                ),
              ),
            ],
          ),
          SizedBox(height: 21.v),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 20.h),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Expanded(
                  child: SizedBox(
                    height: 113.v,
                    // width: 106.h,
                    child: Stack(
                      clipBehavior: Clip.none,
                      alignment: Alignment.topCenter,
                      children: [
                        _buildSixtyFour(
                          time:
                              "${(controller.selectedDay.value + 1).toString().padLeft(2, '0')}\n${DateFormat('MMMM').format(controller.selectedDate.value)}",
                          timePeriod: "${controller.selectedDate.value.year}",
                        ),
                        Positioned(
                          top: -10,
                          child: CustomImageView(
                            imagePath: ImageConstant.imgGroup871,
                            height: 26.v,
                            width: 24.h,
                            alignment: Alignment.topCenter,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                Expanded(
                  child: Container(
                    height: 112.v,
                    // width: 106.h,
                    margin: EdgeInsets.only(left: 30.h),
                    child: Stack(
                      clipBehavior: Clip.none,
                      alignment: Alignment.topCenter,
                      children: [
                        _buildSixtyFour(
                          time:
                              "${controller.hourSelected.value.padLeft(2, '0')}:${controller.minuteSelected.value.padLeft(2, '0')}",
                          timePeriod: "",
                        ),
                        Positioned(
                          top: -10,
                          child: CustomImageView(
                            imagePath: ImageConstant.imgGroup870,
                            height: 26.adaptSize,
                            width: 26.adaptSize,
                            alignment: Alignment.topCenter,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
          SizedBox(height: 21.v),
          CustomElevatedButton(
            text: "lbl_confirm".tr,
            buttonStyle: CustomButtonStyles.fillPrimaryTL15,
            onPressed: () {
              Get.to(const ConfirmationScreen());
            },
          ),
          SizedBox(height: 16.v),
        ],
      ),
    );
  }

  Widget _buildSixtyFour({
    required String time,
    required String timePeriod,
  }) {
    return Container(
      width: double.maxFinite,
      height: 120.v,
      padding: EdgeInsets.symmetric(
        vertical: 22.v,
      ),
      decoration: BoxDecoration(
        color: Colors.blue.withOpacity(.1),
        borderRadius: BorderRadiusStyle.roundedBorder20,
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            time,
            textAlign: TextAlign.center,
            style: theme.textTheme.titleMedium!.copyWith(
              fontSize: 14.fSize,
              color: theme.colorScheme.onErrorContainer.withOpacity(1),
            ),
          ),
          Text(
            timePeriod,
            style: CustomTextStyles.titleMedium18.copyWith(
              color: theme.colorScheme.onErrorContainer.withOpacity(1),
            ),
          ),
        ],
      ),
    );
  }

  /// Navigates to the previous screen.
  onTapArrowLeft() {
    Get.back();
  }
}
