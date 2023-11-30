import '../controller/health_news_controller.dart';
import '../models/healthnewslist_item_model.dart';
import '/core/app_export.dart';
import '/widgets/custom_elevated_button.dart';
import 'package:flutter/material.dart';

// ignore: must_be_immutable
class HealthnewslistItemWidget extends StatelessWidget {
  HealthnewslistItemWidget(
    this.healthnewslistItemModelObj, {
    Key? key,
  }) : super(
          key: key,
        );

  HealthnewslistItemModel healthnewslistItemModelObj;

  var controller = Get.find<HealthNewsController>();

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(25.h),
      decoration: AppDecoration.white.copyWith(
        borderRadius: BorderRadiusStyle.roundedBorder24,
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          CustomElevatedButton(
            height: 26.v,
            width: 64.h,
            text: "lbl_health".tr,
            buttonStyle: CustomButtonStyles.fillGreen,
            buttonTextStyle: CustomTextStyles.labelMediumOnPrimaryContainer_1,
          ),
          SizedBox(height: 17.v),
          Opacity(
            opacity: 0.8,
            child: Container(
              width: 245.h,
              margin: EdgeInsets.only(right: 29.h),
              child: Obx(
                () => Text(
                  healthnewslistItemModelObj.description!.value,
                  maxLines: 4,
                  overflow: TextOverflow.ellipsis,
                  style: CustomTextStyles.titleSmallOnErrorContainer.copyWith(
                    height: 1.50,
                  ),
                ),
              ),
            ),
          ),
          SizedBox(height: 12.v),
          Row(
            children: [
              Obx(
                () => CustomImageView(
                  imagePath: healthnewslistItemModelObj.image!.value,
                  height: 50.adaptSize,
                  width: 50.adaptSize,
                ),
              ),
              Padding(
                padding: EdgeInsets.only(
                  left: 15.h,
                  top: 5.v,
                  bottom: 3.v,
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Obx(
                      () => Text(
                        healthnewslistItemModelObj.drBradleyBlock!.value,
                        style: theme.textTheme.titleMedium,
                      ),
                    ),
                    SizedBox(height: 4.v),
                    Opacity(
                      opacity: 0.6,
                      child: Obx(
                        () => Text(
                          healthnewslistItemModelObj.weburl!.value,
                          style: CustomTextStyles.labelLargeOnErrorContainer_3,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
