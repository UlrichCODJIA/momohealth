import '../../../core/app_export.dart';
import 'searchone_item_model.dart';

/// This class defines the variables used in the [search_one_page],
/// and is typically used to hold data that is passed between different parts of the application.
class SearchOneModel {
  Rx<List<SearchoneItemModel>> searchoneItemList = Rx([
    SearchoneItemModel(
        drHarryKarlo: "Dr. Harry Karlo".obs,
        time: "10AM - 12PM".obs,
        drHarryKarlo1: ImageConstant.imgGroupRedA200.obs,
        fortyNine: "4.9".obs),
    SearchoneItemModel(
        drHarryKarlo: "Dr. Brian ".obs,
        time: "10AM - 12PM".obs,
        drHarryKarlo1: ImageConstant.imgGroupOnerrorcontainer.obs,
        fortyNine: "5.0".obs),
    SearchoneItemModel(
        drHarryKarlo: "Dr. Hanner".obs,
        time: "10AM - 12PM".obs,
        drHarryKarlo1: ImageConstant.imgGroupOnerrorcontainer.obs),
    SearchoneItemModel(
        drHarryKarlo: "Dr. Brian Hanner".obs,
        time: "10AM - 12PM".obs,
        drHarryKarlo1: ImageConstant.imgGroupOnerrorcontainer.obs)
  ]);
}
