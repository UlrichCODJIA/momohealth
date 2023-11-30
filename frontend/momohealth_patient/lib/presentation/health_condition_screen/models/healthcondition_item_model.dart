import '../../../core/app_export.dart';

/// This class is used in the [healthcondition_item_widget] screen.
class HealthconditionItemModel {
  HealthconditionItemModel({
    this.seventyFive,
    this.bpm,
    this.heartbeat,
    this.heartbeat1,
    this.id,
  }) {
    seventyFive = seventyFive ?? Rx("75");
    bpm = bpm ?? Rx("bpm");
    heartbeat = heartbeat ?? Rx(ImageConstant.imgAnalytics);
    heartbeat1 = heartbeat1 ?? Rx("Heartbeat");
    id = id ?? Rx("");
  }

  Rx<String>? seventyFive;

  Rx<String>? bpm;

  Rx<String>? heartbeat;

  Rx<String>? heartbeat1;

  Rx<String>? id;
}
