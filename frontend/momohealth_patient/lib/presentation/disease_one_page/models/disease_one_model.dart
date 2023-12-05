import '../../../core/app_export.dart';
import 'diseaseone_item_model.dart';

/// This class defines the variables used in the [disease_one_page],
/// and is typically used to hold data that is passed between different parts of the application.
class DiseaseOneModel {
  Rx<List<InfoCategoryModel>> categoryItemList = Rx([
    InfoCategoryModel(image: ImageConstant.imgPage1.obs, name: "Coeur".obs),
    InfoCategoryModel(
        image: ImageConstant.imgLungsCancer.obs, name: "Poumon".obs),
    InfoCategoryModel(image: ImageConstant.imgKidney.obs, name: "Reins".obs),
    InfoCategoryModel(
        image: ImageConstant.imgSkinDisease.obs, name: "Peau".obs),
    InfoCategoryModel(image: ImageConstant.imgEyeDisease.obs, name: "Yeux".obs),
    InfoCategoryModel(
        image: ImageConstant.imgCovidDisease.obs, name: "Virus".obs),
    InfoCategoryModel(
        image: ImageConstant.imgBreastDisease.obs, name: "Sein".obs)
  ]);
}
