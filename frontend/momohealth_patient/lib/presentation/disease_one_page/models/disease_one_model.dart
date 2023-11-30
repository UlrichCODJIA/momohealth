import '../../../core/app_export.dart';
import 'diseaseone_item_model.dart';

/// This class defines the variables used in the [disease_one_page],
/// and is typically used to hold data that is passed between different parts of the application.
class DiseaseOneModel {
  Rx<List<DiseaseoneItemModel>> diseaseoneItemList = Rx([
    DiseaseoneItemModel(
        heartDisease: ImageConstant.imgPage1.obs,
        heartDisease1: "Heart Disease".obs),
    DiseaseoneItemModel(
        heartDisease: ImageConstant.imgLungsCancer.obs,
        heartDisease1: "Lung Disease".obs),
    DiseaseoneItemModel(
        heartDisease: ImageConstant.imgKidney.obs,
        heartDisease1: "Kidney Disease".obs),
    DiseaseoneItemModel(
        heartDisease: ImageConstant.imgSkinDisease.obs,
        heartDisease1: "Skin Disease".obs),
    DiseaseoneItemModel(
        heartDisease: ImageConstant.imgEyeDisease.obs,
        heartDisease1: "Eye Disease".obs),
    DiseaseoneItemModel(
        heartDisease: ImageConstant.imgFeverDisease.obs,
        heartDisease1: "Fever Disease".obs),
    DiseaseoneItemModel(
        heartDisease: ImageConstant.imgCovidDisease.obs,
        heartDisease1: "Covid Disease".obs),
    DiseaseoneItemModel(
        heartDisease: ImageConstant.imgBreastDisease.obs,
        heartDisease1: "Breast Disease".obs)
  ]);
}
