import '../../../core/app_export.dart';

/// This class is used in the [emergencyservice_item_widget] screen.
class EmergencyserviceItemModel {
  EmergencyserviceItemModel({
    this.quickHelp,
    this.quickHelp1,
    this.url,
    this.id,
  }) {
    quickHelp = quickHelp ?? Rx(ImageConstant.imgImage47);
    quickHelp1 = quickHelp1 ?? Rx("Quick Help");
    url = url ?? Rx("118");
    id = id ?? Rx("");
  }

  Rx<String>? quickHelp;

  Rx<String>? quickHelp1;

  Rx<String>? url;

  Rx<String>? id;
}
