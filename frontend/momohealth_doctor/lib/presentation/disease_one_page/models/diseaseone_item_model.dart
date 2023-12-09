import '../../../core/app_export.dart';

/// This class is used in the [diseaseone_item_widget] screen.
class InfoCategoryModel {
  InfoCategoryModel({
    this.image,
    this.name,
    this.id,
  }) {
    image = image ?? Rx(ImageConstant.imgPage1);
    name = name ?? Rx("Maladie du coeur");
    id = id ?? Rx("");
  }

  Rx<String>? image;

  Rx<String>? name;

  Rx<String>? id;
}
