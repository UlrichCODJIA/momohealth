import '../../../core/app_export.dart';

/// This class is used in the [diseaseone_item_widget] screen.
class DiseaseoneItemModel {
  DiseaseoneItemModel({
    this.heartDisease,
    this.heartDisease1,
    this.id,
  }) {
    heartDisease = heartDisease ?? Rx(ImageConstant.imgPage1);
    heartDisease1 = heartDisease1 ?? Rx("Heart Disease");
    id = id ?? Rx("");
  }

  Rx<String>? heartDisease;

  Rx<String>? heartDisease1;

  Rx<String>? id;
}
