import '../controller/google_calender_controller.dart';
import '../models/googlecalenderlist_item_model.dart';
import '/core/app_export.dart';
import '/widgets/custom_icon_button.dart';
import 'package:flutter/material.dart';

// ignore: must_be_immutable
class GooglecalenderlistItemWidget extends StatelessWidget {
  GooglecalenderlistItemWidget(
    this.googlecalenderlistItemModelObj, {
    Key? key,
  }) : super(
          key: key,
        );

  GooglecalenderlistItemModel googlecalenderlistItemModelObj;

  var controller = Get.find<GoogleCalenderController>();

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: AppDecoration.outlineOnErrorContainer2.copyWith(
        borderRadius: BorderRadiusStyle.roundedBorder10,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Container(
            height: 80.adaptSize,
            width: 80.adaptSize,
            padding: EdgeInsets.symmetric(
              horizontal: 16.h,
              vertical: 23.v,
            ),
            decoration: AppDecoration.fillCyan40001.copyWith(
              borderRadius: BorderRadiusStyle.customBorderTL101,
            ),
            child: Obx(
              () => CustomImageView(
                imagePath: googlecalenderlistItemModelObj.benefix!.value,
                height: 34.v,
                width: 48.h,
                alignment: Alignment.center,
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.only(
              top: 16.v,
              right: 10.h,
              bottom: 10.v,
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  children: [
                    Obx(
                      () => Text(
                        googlecalenderlistItemModelObj.benefix1!.value,
                        style: theme.textTheme.titleSmall,
                      ),
                    ),
                    Opacity(
                      opacity: 0.4,
                      child: Padding(
                        padding: EdgeInsets.only(
                          left: 5.h,
                          top: 4.v,
                        ),
                        child: Obx(
                          () => Text(
                            googlecalenderlistItemModelObj.weight!.value,
                            style: CustomTextStyles.labelMediumOnErrorContainer,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 9.v),
                SizedBox(
                  width: 220.h,
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: [
                      CustomImageView(
                        imagePath: ImageConstant.imgGroup752Onerrorcontainer,
                        height: 14.adaptSize,
                        width: 14.adaptSize,
                        margin: EdgeInsets.only(
                          top: 7.v,
                          bottom: 5.v,
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.only(
                          left: 5.h,
                          top: 6.v,
                          bottom: 3.v,
                        ),
                        child: Obx(
                          () => Text(
                            googlecalenderlistItemModelObj.time!.value,
                            style: theme.textTheme.labelLarge,
                          ),
                        ),
                      ),
                      CustomImageView(
                        imagePath: ImageConstant.imgGroup753Onerrorcontainer,
                        height: 14.adaptSize,
                        width: 14.adaptSize,
                        margin: EdgeInsets.only(
                          left: 15.h,
                          top: 7.v,
                          bottom: 5.v,
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.only(
                          left: 5.h,
                          top: 6.v,
                          bottom: 3.v,
                        ),
                        child: Obx(
                          () => Text(
                            googlecalenderlistItemModelObj.everyDay!.value,
                            style: theme.textTheme.labelLarge,
                          ),
                        ),
                      ),
                      const Spacer(),
                      Obx(
                        () => CustomIconButton(
                          height: 26.adaptSize,
                          width: 26.adaptSize,
                          padding: EdgeInsets.all(7.h),
                          decoration: IconButtonStyleHelper.fillRedATL13,
                          child: CustomImageView(
                            imagePath: googlecalenderlistItemModelObj
                                .iconButton!.value,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
