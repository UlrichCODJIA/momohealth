import '../controller/report_controller.dart';
import '../models/reportlist_item_model.dart';
import '/core/app_export.dart';
import 'package:flutter/material.dart';

// ignore: must_be_immutable
class ReportlistItemWidget extends StatelessWidget {
  ReportlistItemWidget(
    this.reportlistItemModelObj, {
    Key? key,
  }) : super(
          key: key,
        );

  ReportlistItemModel reportlistItemModelObj;

  var controller = Get.find<ReportController>();

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 188.h,
      child: Align(
        alignment: Alignment.centerRight,
        child: Container(
          margin: EdgeInsets.only(top: 1.v),
          padding: EdgeInsets.symmetric(
            horizontal: 20.h,
            vertical: 14.v,
          ),
          decoration: AppDecoration.fillBlue5009.copyWith(
            borderRadius: BorderRadiusStyle.roundedBorder10,
          ),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(
                    height: 56.v,
                    width: 70.h,
                    child: Stack(
                      alignment: Alignment.center,
                      children: [
                        Obx(
                          () => CustomImageView(
                            imagePath: reportlistItemModelObj.xrayReport!.value,
                            height: 51.v,
                            width: 65.h,
                            alignment: Alignment.topCenter,
                            margin: EdgeInsets.only(top: 1.v),
                          ),
                        ),
                        Align(
                          alignment: Alignment.center,
                          child: Container(
                            height: 56.v,
                            width: 70.h,
                            decoration: BoxDecoration(
                              color: theme.colorScheme.primary,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Opacity(
                    opacity: 0.4,
                    child: Obx(
                      () => CustomImageView(
                        imagePath: reportlistItemModelObj.dot!.value,
                        height: 13.v,
                        width: 3.h,
                        margin: EdgeInsets.only(
                          left: 75.h,
                          top: 6.v,
                          bottom: 37.v,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
              SizedBox(height: 24.v),
              Align(
                alignment: Alignment.centerLeft,
                child: Obx(
                  () => Text(
                    reportlistItemModelObj.xRayReport!.value,
                    style: CustomTextStyles.titleSmallPrimary,
                  ),
                ),
              ),
              SizedBox(height: 5.v),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Opacity(
                    opacity: 0.7,
                    child: Padding(
                      padding: EdgeInsets.only(bottom: 1.v),
                      child: Obx(
                        () => Text(
                          reportlistItemModelObj.fileCounter!.value,
                          style: CustomTextStyles.labelLargePrimary,
                        ),
                      ),
                    ),
                  ),
                  Opacity(
                    opacity: 0.4,
                    child: Obx(
                      () => CustomImageView(
                        imagePath: reportlistItemModelObj.file!.value,
                        height: 12.v,
                        width: 11.h,
                        margin: EdgeInsets.only(
                          left: 108.h,
                          top: 5.v,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
