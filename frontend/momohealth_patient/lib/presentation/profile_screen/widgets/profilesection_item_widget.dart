import '../controller/profile_controller.dart';
import '../models/profilesection_item_model.dart';
import '/core/app_export.dart';
import 'package:flutter/material.dart';

// ignore: must_be_immutable
class ProfilesectionItemWidget extends StatelessWidget {
  ProfilesectionItemWidget(
    this.profilesectionItemModelObj, {
    Key? key,
  }) : super(
          key: key,
        );

  ProfilesectionItemModel profilesectionItemModelObj;

  var controller = Get.find<ProfileController>();

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(12.h),
      decoration: AppDecoration.fillPink500.copyWith(
        borderRadius: BorderRadiusStyle.roundedBorder10,
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Obx(
            () => CustomImageView(
              imagePath: profilesectionItemModelObj.icon!.value,
              height: 15.adaptSize,
              width: 15.adaptSize,
            ),
          ),
          SizedBox(height: 8.v),
          Obx(
            () => Text(
              profilesectionItemModelObj.gender!.value,
              style: CustomTextStyles.bodyMediumOnErrorContainer_1,
            ),
          ),
          Opacity(
            opacity: 0.8,
            child: Obx(
              () => Text(
                profilesectionItemModelObj.male!.value,
                style: CustomTextStyles.labelLargeOnErrorContainer_2,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
