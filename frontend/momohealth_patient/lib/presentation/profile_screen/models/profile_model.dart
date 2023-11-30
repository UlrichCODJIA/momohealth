import '../../../core/app_export.dart';
import 'profilesection_item_model.dart';

/// This class defines the variables used in the [profile_screen],
/// and is typically used to hold data that is passed between different parts of the application.
class ProfileModel {
  Rx<List<ProfilesectionItemModel>> profilesectionItemList = Rx([
    ProfilesectionItemModel(
        icon: ImageConstant.imgIconPink500.obs,
        gender: "Gender".obs,
        male: "Male".obs),
    ProfilesectionItemModel(
        icon: ImageConstant.imgIconYellow800.obs,
        gender: "Weight".obs,
        male: "25".obs),
    ProfilesectionItemModel(
        icon: ImageConstant.imgIconLightGreenA700.obs,
        gender: "Contact".obs,
        male: "11 22 33 44 55".obs),
    ProfilesectionItemModel(
        icon: ImageConstant.imgIconCyan500.obs,
        gender: "Address".obs,
        male: "Turkey Pen Road, USA".obs)
  ]);
}
