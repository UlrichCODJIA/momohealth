import '../controller/subscription_controller.dart';
import '../models/freeambulancelist1_item_model.dart';
import '/core/app_export.dart';
import '/widgets/custom_icon_button.dart';
import 'package:flutter/material.dart';

// ignore: must_be_immutable
class Freeambulancelist1ItemWidget extends StatelessWidget {
  Freeambulancelist1ItemWidget(
    this.freeambulancelist1ItemModelObj, {
    Key? key,
  }) : super(
          key: key,
        );

  Freeambulancelist1ItemModel freeambulancelist1ItemModelObj;

  var controller = Get.find<SubscriptionController>();

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 40.v,
      width: 206.h,
      child: Stack(
        alignment: Alignment.centerRight,
        children: [
          Align(
            alignment: Alignment.centerLeft,
            child: Container(
              margin: EdgeInsets.only(right: 9.h),
              padding: EdgeInsets.symmetric(
                horizontal: 14.h,
                vertical: 11.v,
              ),
              decoration: AppDecoration.gray.copyWith(
                borderRadius: BorderRadiusStyle.roundedBorder10,
              ),
              child: Row(
                children: [
                  CustomImageView(
                    imagePath: ImageConstant.imgGroup497,
                    height: 12.adaptSize,
                    width: 12.adaptSize,
                    margin: EdgeInsets.symmetric(vertical: 2.v),
                  ),
                  Padding(
                    padding: EdgeInsets.only(left: 10.h),
                    child: Obx(
                      () => Text(
                        freeambulancelist1ItemModelObj.freeAmbulance!.value,
                        style: theme.textTheme.labelLarge,
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
          CustomIconButton(
            height: 22.adaptSize,
            width: 22.adaptSize,
            padding: EdgeInsets.all(7.h),
            decoration: IconButtonStyleHelper.fillGreenA,
            alignment: Alignment.centerRight,
            child: CustomImageView(
              imagePath: ImageConstant.imgVectorOnprimarycontainer3x6,
            ),
          ),
        ],
      ),
    );
  }
}
