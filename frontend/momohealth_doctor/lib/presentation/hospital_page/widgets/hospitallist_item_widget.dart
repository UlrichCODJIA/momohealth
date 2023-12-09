import '../controller/hospital_controller.dart';
import '../models/hospitallist_item_model.dart';
import '/core/app_export.dart';
import '/widgets/custom_icon_button.dart';
import 'package:flutter/material.dart';

// ignore: must_be_immutable
class HospitallistItemWidget extends StatelessWidget {
  HospitallistItemWidget(
    this.hospitallistItemModelObj, {
    Key? key,
  }) : super(
          key: key,
        );

  HospitallistItemModel hospitallistItemModelObj;

  var controller = Get.find<HospitalController>();

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
                    decoration: AppDecoration.fillBlue5004.copyWith(
                      borderRadius: BorderRadiusStyle.customBorderTL15,
                    ),
                    child: Obx(
                      () => CustomImageView(
                        imagePath:
                            hospitallistItemModelObj.hopkinsHospital!.value,
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
                      bottom: 5.v,
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Opacity(
                          opacity: 0.8,
                          child: Obx(
                            () => Text(
                              hospitallistItemModelObj.hopkinsHospital1!.value,
                              style:
                                  CustomTextStyles.titleSmallOnErrorContainer,
                            ),
                          ),
                        ),
                        SizedBox(height: 6.v),
                        Row(
                          children: [
                            CustomImageView(
                              imagePath: ImageConstant.imgGroup27,
                              height: 9.v,
                              width: 7.h,
                              margin: EdgeInsets.only(
                                top: 1.v,
                                bottom: 2.v,
                              ),
                            ),
                            Opacity(
                              opacity: 0.7,
                              child: Padding(
                                padding: EdgeInsets.only(left: 5.h),
                                child: Obx(
                                  () => Text(
                                    hospitallistItemModelObj
                                        .baltimoreUSA!.value,
                                    style: CustomTextStyles
                                        .bodySmallOnErrorContainer10_3,
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                        SizedBox(height: 12.v),
                        Row(
                          children: [
                            CustomImageView(
                              imagePath: ImageConstant.imgVector,
                              height: 8.adaptSize,
                              width: 8.adaptSize,
                              margin: EdgeInsets.only(
                                top: 3.v,
                                bottom: 4.v,
                              ),
                            ),
                            Opacity(
                              opacity: 0.8,
                              child: Padding(
                                padding: EdgeInsets.only(left: 6.h),
                                child: Obx(
                                  () => Text(
                                    hospitallistItemModelObj.kCounter!.value,
                                    style: CustomTextStyles
                                        .labelLargeOnErrorContainer_2,
                                  ),
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
                imagePath: hospitallistItemModelObj.callBtn!.value,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
