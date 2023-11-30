import '../../../core/app_export.dart';
import 'healthcondition_item_model.dart';

/// This class defines the variables used in the [health_condition_screen],
/// and is typically used to hold data that is passed between different parts of the application.
class HealthConditionModel {
  Rx<List<HealthconditionItemModel>> healthconditionItemList = Rx([
    HealthconditionItemModel(
        seventyFive: "75".obs,
        bpm: "bpm".obs,
        heartbeat: ImageConstant.imgAnalytics.obs,
        heartbeat1: "Heartbeat".obs),
    HealthconditionItemModel(
        seventyFive: "100 ".obs,
        bpm: "70 mmHg".obs,
        heartbeat: ImageConstant.imgAnalyticsErrorcontainer.obs,
        heartbeat1: "Blood Pressure".obs),
    HealthconditionItemModel(
        seventyFive: "15.5 ".obs,
        bpm: "g/dL".obs,
        heartbeat: ImageConstant.imgAnalyticsPrimary.obs,
        heartbeat1: "Hemoglobin ".obs),
    HealthconditionItemModel(
        seventyFive: "150".obs,
        bpm: "mg/dL".obs,
        heartbeat: ImageConstant.imgAnalytics41x125.obs,
        heartbeat1: "Sugar Levels".obs)
  ]);
}
