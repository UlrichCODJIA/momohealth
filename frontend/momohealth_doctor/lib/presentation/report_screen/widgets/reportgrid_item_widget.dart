import '../controller/report_controller.dart';
import '../models/reportgrid_item_model.dart';
import '/core/app_export.dart';
import 'package:flutter/material.dart';

// ignore: must_be_immutable
class ReportgridItemWidget extends StatelessWidget {
  ReportgridItemWidget(
    this.reportgridItemModelObj, {
    Key? key,
  }) : super(
          key: key,
        );

  ReportgridItemModel reportgridItemModelObj;

  var controller = Get.find<ReportController>();

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.bottomCenter,
      child: Obx(
        () => CustomImageView(
          imagePath: reportgridItemModelObj.rectangle!.value,
          height: 190.v,
          width: 155.h,
          radius: BorderRadius.circular(
            10.h,
          ),
        ),
      ),
    );
  }
}
