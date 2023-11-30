import '../controller/subscription_controller.dart';
import '../models/freeambulancelist_item_model.dart';
import '/core/app_export.dart';
import 'package:flutter/material.dart';

// ignore: must_be_immutable
class FreeambulancelistItemWidget extends StatelessWidget {
  FreeambulancelistItemWidget(
    this.freeambulancelistItemModelObj, {
    Key? key,
  }) : super(
          key: key,
        );

  FreeambulancelistItemModel freeambulancelistItemModelObj;

  var controller = Get.find<SubscriptionController>();

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.centerRight,
      child: SizedBox(
        height: 31.v,
        width: 163.h,
        child: Stack(
          alignment: Alignment.centerLeft,
          children: [
            Align(
              alignment: Alignment.centerLeft,
              child: Container(
                margin: EdgeInsets.only(right: 159.h),
                padding: EdgeInsets.symmetric(
                  horizontal: 11.h,
                  vertical: 9.v,
                ),
                decoration: AppDecoration.gray.copyWith(
                  borderRadius: BorderRadiusStyle.roundedBorder7,
                ),
                child: Row(
                  children: [
                    CustomImageView(
                      imagePath: ImageConstant.imgGroup497,
                      height: 9.adaptSize,
                      width: 9.adaptSize,
                      margin: EdgeInsets.symmetric(vertical: 1.v),
                    ),
                    Padding(
                      padding: EdgeInsets.only(left: 7.h),
                      child: Obx(
                        () => Text(
                          freeambulancelistItemModelObj.freeAmbulance!.value,
                          style: theme.textTheme.labelSmall,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Align(
              alignment: Alignment.centerLeft,
              child: Container(
                height: 17.adaptSize,
                width: 17.adaptSize,
                padding: EdgeInsets.symmetric(
                  horizontal: 5.h,
                  vertical: 6.v,
                ),
                decoration: AppDecoration.fillGreenA.copyWith(
                  borderRadius: BorderRadiusStyle.roundedBorder7,
                ),
                child: CustomImageView(
                  imagePath: ImageConstant.imgVectorOnprimarycontainer3x6,
                  height: 3.v,
                  width: 6.h,
                  alignment: Alignment.bottomCenter,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
