import '../../../core/app_export.dart';
import 'googlecalenderlist_item_model.dart';

/// This class defines the variables used in the [google_calender_bottomsheet],
/// and is typically used to hold data that is passed between different parts of the application.
class GoogleCalenderModel {
  Rx<List<GooglecalenderlistItemModel>> googlecalenderlistItemList = Rx([
    GooglecalenderlistItemModel(
        benefix: ImageConstant.imgPngfind2.obs,
        benefix1: "Benefix".obs,
        weight: "100mg".obs,
        time: "9.30 am".obs,
        everyDay: "Every day".obs,
        iconButton: ImageConstant.imgGroup52.obs),
    GooglecalenderlistItemModel(
        benefix1: "Calcium Chloride".obs,
        weight: "100mg".obs,
        time: "10.20 am".obs,
        everyDay: "Every day".obs),
    GooglecalenderlistItemModel(
        benefix1: "Fabrazyme".obs,
        weight: "500mg".obs,
        time: "2.25 am".obs,
        everyDay: "Every day".obs)
  ]);
}
