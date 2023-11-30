import '../../../core/app_export.dart';

/// This class is used in the [search_item_widget] screen.
class SearchItemModel {
  SearchItemModel({
    this.drBrianHanner,
    this.drBrianHanner1,
    this.time,
    this.drBrianHanner2,
    this.fortyNine,
    this.id,
  }) {
    drBrianHanner = drBrianHanner ?? Rx(ImageConstant.imgMaskGroup44x44);
    drBrianHanner1 = drBrianHanner1 ?? Rx("Dr. Brian Hanner");
    time = time ?? Rx("10AM - 12PM");
    drBrianHanner2 = drBrianHanner2 ?? Rx(ImageConstant.imgGroupRedA200);
    fortyNine = fortyNine ?? Rx("4.9");
    id = id ?? Rx("");
  }

  Rx<String>? drBrianHanner;

  Rx<String>? drBrianHanner1;

  Rx<String>? time;

  Rx<String>? drBrianHanner2;

  Rx<String>? fortyNine;

  Rx<String>? id;
}
