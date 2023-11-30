import '../controller/message_one_controller.dart';
import '../models/messageone_item_model.dart';
import '/core/app_export.dart';
import 'package:flutter/material.dart';

// ignore: must_be_immutable
class MessageoneItemWidget extends StatelessWidget {
  MessageoneItemWidget(
    this.messageoneItemModelObj, {
    Key? key,
  }) : super(
          key: key,
        );

  MessageoneItemModel messageoneItemModelObj;

  var controller = Get.find<MessageOneController>();

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(15.h),
      decoration: AppDecoration.white.copyWith(
        borderRadius: BorderRadiusStyle.roundedBorder15,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(
            height: 40.adaptSize,
            width: 40.adaptSize,
            decoration: AppDecoration.fillPrimary.copyWith(
              borderRadius: BorderRadiusStyle.roundedBorder15,
            ),
            child: Obx(
              () => CustomImageView(
                imagePath: messageoneItemModelObj.drJhonDeo!.value,
                height: 40.adaptSize,
                width: 40.adaptSize,
                radius: BorderRadius.circular(
                  15.h,
                ),
                alignment: Alignment.center,
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.only(left: 15.h),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Obx(
                  () => Text(
                    messageoneItemModelObj.drJhonDeo1!.value,
                    style: theme.textTheme.titleSmall,
                  ),
                ),
                SizedBox(height: 5.v),
                Opacity(
                  opacity: 0.5,
                  child: Obx(
                    () => Text(
                      messageoneItemModelObj.thanksDrJhon!.value,
                      style: CustomTextStyles.labelLargeOnErrorContainer,
                    ),
                  ),
                ),
              ],
            ),
          ),
          const Spacer(),
          Opacity(
            opacity: 0.5,
            child: Padding(
              padding: EdgeInsets.only(
                top: 19.v,
                bottom: 7.v,
              ),
              child: Obx(
                () => Text(
                  messageoneItemModelObj.time!.value,
                  style: theme.textTheme.labelMedium,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
