import '../../../core/app_export.dart';

/// This class is used in the [reportlist_item_widget] screen.
class ReportlistItemModel {
  ReportlistItemModel({
    this.xrayReport,
    this.dot,
    this.xRayReport,
    this.fileCounter,
    this.file,
    this.id,
  }) {
    xrayReport = xrayReport ?? Rx(ImageConstant.imgPinclipart1);
    dot = dot ?? Rx(ImageConstant.img3Dot);
    xRayReport = xRayReport ?? Rx("X-ray Report");
    fileCounter = fileCounter ?? Rx("1 file");
    file = file ?? Rx(ImageConstant.imgShare);
    id = id ?? Rx("");
  }

  Rx<String>? xrayReport;

  Rx<String>? dot;

  Rx<String>? xRayReport;

  Rx<String>? fileCounter;

  Rx<String>? file;

  Rx<String>? id;
}
