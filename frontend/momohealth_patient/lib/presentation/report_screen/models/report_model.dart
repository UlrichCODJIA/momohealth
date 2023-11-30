import '../../../core/app_export.dart';
import 'reportlist_item_model.dart';
import 'reportgrid_item_model.dart';

/// This class defines the variables used in the [report_screen],
/// and is typically used to hold data that is passed between different parts of the application.
class ReportModel {
  Rx<List<ReportlistItemModel>> reportlistItemList = Rx([
    ReportlistItemModel(
        xrayReport: ImageConstant.imgPinclipart1.obs,
        dot: ImageConstant.img3Dot.obs,
        xRayReport: "X-ray Report".obs,
        fileCounter: "1 file".obs,
        file: ImageConstant.imgShare.obs),
    ReportlistItemModel(xRayReport: "Hemoglobin Report".obs)
  ]);

  Rx<List<ReportgridItemModel>> reportgridItemList = Rx([
    ReportgridItemModel(rectangle: ImageConstant.imgRectangle214190x155.obs),
    ReportgridItemModel(rectangle: ImageConstant.imgRectangle213190x155.obs),
    ReportgridItemModel(rectangle: ImageConstant.imgRectangle215190x155.obs),
    ReportgridItemModel(rectangle: ImageConstant.imgRectangle216190x155.obs),
    ReportgridItemModel(rectangle: ImageConstant.imgRectangle214190x155.obs),
    ReportgridItemModel(rectangle: ImageConstant.imgRectangle216190x155.obs)
  ]);
}
