import '../../../core/app_export.dart';

/// This class is used in the [searchone_item_widget] screen.
class SearchoneItemModel {
  SearchoneItemModel({
    this.drHarryKarlo,
    this.time,
    this.drHarryKarlo1,
    this.fortyNine,
    this.id,
  }) {
    drHarryKarlo = drHarryKarlo ?? Rx("Dr. Harry Karlo");
    time = time ?? Rx("10AM - 12PM");
    drHarryKarlo1 = drHarryKarlo1 ?? Rx(ImageConstant.imgGroupRedA200);
    fortyNine = fortyNine ?? Rx("4.9");
    id = id ?? Rx("");
  }

  Rx<String>? drHarryKarlo;

  Rx<String>? time;

  Rx<String>? drHarryKarlo1;

  Rx<String>? fortyNine;

  Rx<String>? id;
}
