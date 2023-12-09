import '../models/diseaseone_item_model.dart';
import '/core/app_export.dart';
import '/presentation/disease_one_page/models/disease_one_model.dart';

/// A controller class for the DiseaseOnePage.
///
/// This class manages the state of the DiseaseOnePage, including the
/// current diseaseOneModelObj
class InfoCategoryController extends GetxController {
  // InfoCategoryController(this.infoCategoryListObj);

  Rx<List<InfoCategoryModel>> infoCategoryListObj = Rx([
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
