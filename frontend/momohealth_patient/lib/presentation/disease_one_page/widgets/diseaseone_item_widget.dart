import '../controller/disease_one_controller.dart';
import '../models/diseaseone_item_model.dart';
import '/core/app_export.dart';
import 'package:flutter/material.dart';

// ignore: must_be_immutable
class DiseaseoneItemWidget extends StatelessWidget {
  DiseaseoneItemWidget(
    this.diseaseoneItemModelObj, {
    Key? key,
  }) : super(
          key: key,
        );

  DiseaseoneItemModel diseaseoneItemModelObj;

  var controller = Get.find<DiseaseOneController>();

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(
        horizontal: 32.h,
        vertical: 18.v,
      ),
      decoration: AppDecoration.white.copyWith(
        borderRadius: BorderRadiusStyle.roundedBorder15,
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(
            // height: 80.adaptSize,
            width: 80.adaptSize,
            padding: EdgeInsets.symmetric(
              horizontal: 20.h,
              vertical: 18.v,
            ),
            decoration: AppDecoration.gradientBlueToDeepOrangeA.copyWith(
              borderRadius: BorderRadiusStyle.circleBorder41,
            ),
            child: Obx(
              () => CustomImageView(
                imagePath: diseaseoneItemModelObj.heartDisease!.value,
                height: 40.adaptSize,
                width: 40.adaptSize,
                alignment: Alignment.bottomCenter,
              ),
            ),
          ),
          SizedBox(height: 18.v),
          Obx(
            () => Text(
              diseaseoneItemModelObj.heartDisease1!.value,
              style: theme.textTheme.titleSmall,
            ),
          ),
        ],
      ),
    );
  }
}
