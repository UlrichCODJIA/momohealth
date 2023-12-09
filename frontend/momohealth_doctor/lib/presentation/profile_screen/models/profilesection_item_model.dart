import '../../../core/app_export.dart';

/// This class is used in the [profilesection_item_widget] screen.
class ProfilesectionItemModel {
  ProfilesectionItemModel({
    this.icon,
    this.gender,
    this.male,
    this.id,
  }) {
    icon = icon ?? Rx(ImageConstant.imgIconPink500);
    gender = gender ?? Rx("Gender");
    male = male ?? Rx("Male");
    id = id ?? Rx("");
  }

  Rx<String>? icon;

  Rx<String>? gender;

  Rx<String>? male;

  Rx<String>? id;
}
