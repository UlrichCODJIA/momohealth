import '../../../core/app_export.dart';

/// This class is used in the [reportgrid_item_widget] screen.
class ReportgridItemModel {
  ReportgridItemModel({
    this.rectangle,
    this.id,
  }) {
    rectangle = rectangle ?? Rx(ImageConstant.imgRectangle214190x155);
    id = id ?? Rx("");
  }

  Rx<String>? rectangle;

  Rx<String>? id;
}
