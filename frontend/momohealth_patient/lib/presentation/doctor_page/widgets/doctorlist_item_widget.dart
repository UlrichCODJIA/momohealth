import '../controller/doctor_controller.dart';
import '../models/doctorlist_item_model.dart';
import '/core/app_export.dart';
import '/widgets/custom_icon_button.dart';
import 'package:flutter/material.dart';

// ignore: must_be_immutable
class DoctorlistItemWidget extends StatelessWidget {
  DoctorlistItemWidget(
    this.doctorlistItemModelObj, {
    Key? key,
  }) : super(
          key: key,
        );

  DoctorlistItemModel doctorlistItemModelObj;

  var controller = Get.find<DoctorController>();

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 80.v,
      width: 325.h,
      child: Stack(
        alignment: Alignment.centerRight,
        children: [
          Align(
            alignment: Alignment.centerLeft,
            child: Container(
              margin: EdgeInsets.only(right: 20.h),
              decoration: AppDecoration.white.copyWith(
                borderRadius: BorderRadiusStyle.roundedBorder15,
              ),
              child: Row(
                children: [
                  Container(
                    height: 80.adaptSize,
                    width: 80.adaptSize,
                    decoration: AppDecoration.fillBlue100.copyWith(
                      borderRadius: BorderRadiusStyle.customBorderTL15,
                    ),
                    child: Obx(
                      () => CustomImageView(
                        imagePath: doctorlistItemModelObj.drJhonDeo!.value,
                        height: 80.adaptSize,
                        width: 80.adaptSize,
                        radius: BorderRadius.horizontal(
                          left: Radius.circular(15.h),
                        ),
                        alignment: Alignment.center,
                      ),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(
                      left: 15.h,
                      top: 8.v,
                      bottom: 8.v,
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Obx(
                                  () => Text(
                                    doctorlistItemModelObj.drJhonDeo1!.value,
                                    style: theme.textTheme.titleSmall,
                                  ),
                                ),
                                SizedBox(height: 4.v),
                                Opacity(
                                  opacity: 0.7,
                                  child: Obx(
                                    () => Text(
                                      doctorlistItemModelObj
                                          .cardiologist!.value,
                                      style: CustomTextStyles
                                          .labelLargeOnErrorContainer_1,
                                    ),
                                  ),
                                ),
                              ],
                            ),
                            Obx(
                              () => CustomImageView(
                                imagePath:
                                    doctorlistItemModelObj.drJhonDeo2!.value,
                                height: 7.adaptSize,
                                width: 7.adaptSize,
                                margin: EdgeInsets.only(
                                  left: 10.h,
                                  top: 4.v,
                                  bottom: 26.v,
                                ),
                              ),
                            ),
                          ],
                        ),
                        SizedBox(height: 9.v),
                        Row(
                          children: [
                            Opacity(
                              opacity: 0.5,
                              child: Container(
                                height: 10.adaptSize,
                                width: 10.adaptSize,
                                margin: EdgeInsets.only(
                                  top: 3.v,
                                  bottom: 2.v,
                                ),
                                padding: EdgeInsets.symmetric(
                                  horizontal: 3.h,
                                  vertical: 1.v,
                                ),
                                decoration:
                                    AppDecoration.fillOnErrorContainer.copyWith(
                                  borderRadius:
                                      BorderRadiusStyle.roundedBorder7,
                                ),
                                child: CustomImageView(
                                  imagePath: ImageConstant
                                      .imgVectorOnerrorcontainer4x2,
                                  height: 4.v,
                                  width: 2.h,
                                  alignment: Alignment.topRight,
                                ),
                              ),
                            ),
                            Padding(
                              padding: EdgeInsets.only(left: 5.h),
                              child: Obx(
                                () => Text(
                                  doctorlistItemModelObj.time!.value,
                                  style: theme.textTheme.labelLarge,
                                ),
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
          Obx(
            () => CustomIconButton(
              height: 40.adaptSize,
              width: 40.adaptSize,
              padding: EdgeInsets.all(14.h),
              decoration: IconButtonStyleHelper.fillPrimary,
              alignment: Alignment.centerRight,
              child: CustomImageView(
                imagePath: doctorlistItemModelObj.callBtn!.value,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
