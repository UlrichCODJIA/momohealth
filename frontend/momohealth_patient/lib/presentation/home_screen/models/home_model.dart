import '../../../core/app_export.dart';
import 'emergencyservice_item_model.dart';

/// This class defines the variables used in the [home_screen],
/// and is typically used to hold data that is passed between different parts of the application.
class HomeModel {
  Rx<List<EmergencyserviceItemModel>> emergencyserviceItemList = Rx([
    EmergencyserviceItemModel(
        quickHelp: ImageConstant.siren.obs,
        quickHelp1: "Urgence".obs,
        url: "21301769".obs),
    EmergencyserviceItemModel(
        quickHelp: ImageConstant.hospital.obs,
        quickHelp1: "Hopital".obs,
        url: "https://www.google.com/maps/search/Hopital".obs),
    EmergencyserviceItemModel(
        quickHelp: ImageConstant.pharmacy.obs,
        quickHelp1: "Pharmacie".obs,
        url: "https://www.google.com/maps/search/Pharmacy".obs),
    EmergencyserviceItemModel(
        quickHelp: ImageConstant.firefighter.obs,
        quickHelp1: "Pompier".obs,
        url: "118".obs),
    EmergencyserviceItemModel(
        quickHelp: ImageConstant.ambulance.obs,
        quickHelp1: "Ambulance".obs,
        url: "https://www.google.com/maps/search/Ambulance".obs)
  ]);
}
