import 'package:nb_utils/nb_utils.dart';

import '../controller/home_controller.dart';
import '../models/emergencyservice_item_model.dart';
import '/core/app_export.dart';
import 'package:flutter/material.dart';

// ignore: must_be_immutable
class EmergencyserviceItemWidget extends StatelessWidget {
  EmergencyserviceItemWidget(
    this.emergencyserviceItemModelObj, {
    Key? key,
  }) : super(
          key: key,
        );

  EmergencyserviceItemModel emergencyserviceItemModelObj;

  var controller = Get.find<HomeController>();

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 99.h,
      child: Align(
        alignment: Alignment.centerRight,
        child: Container(
          padding: EdgeInsets.symmetric(
            horizontal: 17.h,
            vertical: 10.v,
          ),
          decoration: AppDecoration.fillLightBlue.copyWith(
            borderRadius: BorderRadiusStyle.roundedBorder24,
          ),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Obx(
                () => CustomImageView(
                  imagePath: emergencyserviceItemModelObj.quickHelp!.value,
                  height: 48.v,
                  width: 65.h,
                  // radius: BorderRadius.circular(
                  //   24.h,
                  // ),
                  alignment: Alignment.center,
                ),
              ),
              SizedBox(height: 7.v),
              Obx(
                () => Text(
                  emergencyserviceItemModelObj.quickHelp1!.value,
                  textAlign: TextAlign.center,
                  style: theme.textTheme.labelMedium!.copyWith(
                    color: theme.colorScheme.onPrimaryContainer.withOpacity(1),
                  ),
                ).center(),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
