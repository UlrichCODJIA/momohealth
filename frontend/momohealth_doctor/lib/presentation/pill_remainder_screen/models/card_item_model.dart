import '../../../core/app_export.dart';

/// This class is used in the [card_item_widget] screen.
class CardItemModel {
  CardItemModel({
    this.acarbose,
    this.acarbose1,
    this.weight,
    this.time,
    this.everyDay,
    this.am,
    this.id,
  }) {
    acarbose = acarbose ?? Rx(ImageConstant.imgPill);
    acarbose1 = acarbose1 ?? Rx("Acarbose");
    weight = weight ?? Rx("50mg");
    time = time ?? Rx("9.30 AM");
    everyDay = everyDay ?? Rx("Every day");
    am = am ?? Rx(ImageConstant.imgNotification);
    id = id ?? Rx("");
  }

  Rx<String>? acarbose;

  Rx<String>? acarbose1;

  Rx<String>? weight;

  Rx<String>? time;

  Rx<String>? everyDay;

  Rx<String>? am;

  Rx<String>? id;
}
