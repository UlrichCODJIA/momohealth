import '../../../core/app_export.dart';
import 'search_item_model.dart';

/// This class defines the variables used in the [search_page],
/// and is typically used to hold data that is passed between different parts of the application.
class SearchModel {
  Rx<List<SearchItemModel>> searchItemList = Rx([
    SearchItemModel(
        drBrianHanner: ImageConstant.imgMaskGroup44x44.obs,
        drBrianHanner1: "Dr. Brian Hanner".obs,
        time: "10AM - 12PM".obs,
        drBrianHanner2: ImageConstant.imgGroupRedA200.obs,
        fortyNine: "4.9".obs),
    SearchItemModel(
        drBrianHanner: ImageConstant.imgMaskGroup1.obs,
        drBrianHanner1: "Dr. Anika Islam".obs,
        time: "10AM - 12PM".obs,
        drBrianHanner2: ImageConstant.imgGroupOnerrorcontainer.obs,
        fortyNine: "5.0".obs),
    SearchItemModel(
        drBrianHanner: ImageConstant.imgMaskGroup1.obs,
        drBrianHanner1: "Dr. Anika Islam".obs,
        time: "10AM - 12PM".obs,
        drBrianHanner2: ImageConstant.imgGroupOnerrorcontainer.obs),
    SearchItemModel(
        drBrianHanner: ImageConstant.imgMaskGroup1.obs,
        drBrianHanner1: "Dr. Brown Hill".obs,
        time: "10AM - 12PM".obs,
        drBrianHanner2: ImageConstant.imgGroupOnerrorcontainer.obs)
  ]);
}
