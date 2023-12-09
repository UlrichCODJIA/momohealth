import '../../../core/app_export.dart';
import 'emergencyservice_item_model.dart';

/// This class defines the variables used in the [home_screen],
/// and is typically used to hold data that is passed between different parts of the application.
class HomeModel {
  Rx<List<EmergencyserviceItemModel>> emergencyserviceItemList = Rx([
    EmergencyserviceItemModel(
        quickHelp: ImageConstant.imgImage47.obs,
        quickHelp1: "Quick Help".obs,
        url: "21301769".obs),
    EmergencyserviceItemModel(
        quickHelp1: "Hospital".obs,
        url: "https://www.google.com/maps/search/Hopital".obs),
    EmergencyserviceItemModel(quickHelp1: "Pompier".obs, url: "118".obs),
    EmergencyserviceItemModel(
        quickHelp1: "Ambulance".obs,
        url: "https://www.google.com/maps/search/Ambulance".obs)
  ]);
}
