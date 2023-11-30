import '../../../core/app_export.dart';

/// This class is used in the [hospitallist_item_widget] screen.
class HospitallistItemModel {
  HospitallistItemModel({
    this.hopkinsHospital,
    this.hopkinsHospital1,
    this.baltimoreUSA,
    this.kCounter,
    this.callBtn,
    this.id,
  }) {
    hopkinsHospital = hopkinsHospital ?? Rx(ImageConstant.imgRectangle21);
    hopkinsHospital1 = hopkinsHospital1 ?? Rx("Hopkins Hospital");
    baltimoreUSA = baltimoreUSA ?? Rx("Baltimore, USA");
    kCounter = kCounter ?? Rx("5.0 (5k)");
    callBtn = callBtn ?? Rx(ImageConstant.imgCallBtn);
    id = id ?? Rx("");
  }

  Rx<String>? hopkinsHospital;

  Rx<String>? hopkinsHospital1;

  Rx<String>? baltimoreUSA;

  Rx<String>? kCounter;

  Rx<String>? callBtn;

  Rx<String>? id;
}
