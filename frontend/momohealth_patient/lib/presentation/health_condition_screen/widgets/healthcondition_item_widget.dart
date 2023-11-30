import '../controller/health_condition_controller.dart';
import '../models/healthcondition_item_model.dart';
import '/core/app_export.dart';
import 'package:flutter/material.dart';

// ignore: must_be_immutable
class HealthconditionItemWidget extends StatelessWidget {
  HealthconditionItemWidget(
    this.healthconditionItemModelObj, {
    Key? key,
  }) : super(
          key: key,
        );

  HealthconditionItemModel healthconditionItemModelObj;

  var controller = Get.find<HealthConditionController>();

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(8.h),
      decoration: AppDecoration.outlineGray5003.copyWith(
        borderRadius: BorderRadiusStyle.roundedBorder10,
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              Obx(
                () => Text(
                  healthconditionItemModelObj.seventyFive!.value,
                  style: theme.textTheme.headlineLarge,
                ),
              ),
              Opacity(
                opacity: 0.7,
                child: Padding(
                  padding: EdgeInsets.only(
                    left: 4.h,
                    top: 16.v,
                    bottom: 8.v,
                  ),
                  child: Obx(
                    () => Text(
                      healthconditionItemModelObj.bpm!.value,
                      style: CustomTextStyles.labelMediumOnErrorContainer_1,
                    ),
                  ),
                ),
              ),
            ],
          ),
          SizedBox(height: 53.v),
          Obx(
            () => CustomImageView(
              imagePath: healthconditionItemModelObj.heartbeat!.value,
              height: 26.v,
              width: 125.h,
            ),
          ),
          SizedBox(height: 20.v),
          Padding(
            padding: EdgeInsets.only(left: 30.h),
            child: Obx(
              () => Text(
                healthconditionItemModelObj.heartbeat1!.value,
                style: CustomTextStyles.bodyMediumOnErrorContainer_1,
              ),
            ),
          ),
          SizedBox(height: 5.v),
        ],
      ),
    );
  }
}
