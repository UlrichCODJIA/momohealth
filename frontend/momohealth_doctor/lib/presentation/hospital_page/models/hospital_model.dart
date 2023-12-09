import '../../../core/app_export.dart';
import 'hospitallist_item_model.dart';

/// This class defines the variables used in the [hospital_page],
/// and is typically used to hold data that is passed between different parts of the application.
class HospitalModel {
  Rx<List<HospitallistItemModel>> hospitallistItemList = Rx([
    HospitallistItemModel(
        hopkinsHospital: ImageConstant.imgRectangle21.obs,
        hopkinsHospital1: "Hopkins Hospital".obs,
        baltimoreUSA: "Baltimore, USA".obs,
        kCounter: "5.0 (5k)".obs,
        callBtn: ImageConstant.imgCallBtn.obs),
    HospitallistItemModel(
        hopkinsHospital: ImageConstant.imgRectangle2180x80.obs,
        hopkinsHospital1: "The Mayo Clinic".obs,
        baltimoreUSA: "Rochester, Minnesota".obs,
        kCounter: "5.0 (3k)".obs,
        callBtn: ImageConstant.imgCallBtn.obs),
    HospitallistItemModel(
        hopkinsHospital: ImageConstant.imgRectangle211.obs,
        hopkinsHospital1: "Cleveland Clinic".obs,
        baltimoreUSA: "Cleveland, Abu Dhabi".obs,
        kCounter: "5.0 (8k)".obs,
        callBtn: ImageConstant.imgCallBtn.obs),
    HospitallistItemModel(
        hopkinsHospital: ImageConstant.imgRectangle212.obs,
        hopkinsHospital1: "Medi Hope Hospital".obs,
        baltimoreUSA: "Dhaka , Bnangladesh".obs,
        kCounter: "5.0 (2k)".obs,
        callBtn: ImageConstant.imgCallBtn.obs),
    HospitallistItemModel(
        hopkinsHospital: ImageConstant.imgRectangle213.obs,
        hopkinsHospital1: "Charité ".obs,
        baltimoreUSA: "Berlin, Abu Dhabi".obs,
        kCounter: "5.0 (6k)".obs,
        callBtn: ImageConstant.imgCallBtn.obs),
    HospitallistItemModel(
        hopkinsHospital: ImageConstant.imgRectangle214.obs,
        hopkinsHospital1: "Toronto General Hospital".obs,
        baltimoreUSA: "Toronto".obs,
        kCounter: "5.0 (3k)".obs)
  ]);
}
