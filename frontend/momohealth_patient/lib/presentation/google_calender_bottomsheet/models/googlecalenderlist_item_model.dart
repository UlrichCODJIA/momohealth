import '../../../core/app_export.dart';

/// This class is used in the [googlecalenderlist_item_widget] screen.
class GooglecalenderlistItemModel {
  GooglecalenderlistItemModel({
    this.benefix,
    this.benefix1,
    this.weight,
    this.time,
    this.everyDay,
    this.iconButton,
    this.id,
  }) {
    benefix = benefix ?? Rx(ImageConstant.imgPngfind2);
    benefix1 = benefix1 ?? Rx("Benefix");
    weight = weight ?? Rx("100mg");
    time = time ?? Rx("9.30 am");
    everyDay = everyDay ?? Rx("Every day");
    iconButton = iconButton ?? Rx(ImageConstant.imgGroup52);
    id = id ?? Rx("");
  }

  Rx<String>? benefix;

  Rx<String>? benefix1;

  Rx<String>? weight;

  Rx<String>? time;

  Rx<String>? everyDay;

  Rx<String>? iconButton;

  Rx<String>? id;
}
