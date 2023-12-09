import '../../../core/app_export.dart';

/// This class is used in the [messageone_item_widget] screen.
class MessageoneItemModel {
  MessageoneItemModel({
    this.drJhonDeo,
    this.drJhonDeo1,
    this.thanksDrJhon,
    this.time,
    this.id,
  }) {
    drJhonDeo = drJhonDeo ?? Rx(ImageConstant.imgRectangle77);
    drJhonDeo1 = drJhonDeo1 ?? Rx("Dr. Jhon Deo");
    thanksDrJhon = thanksDrJhon ?? Rx("Thanks dr. jhon have a nice say");
    time = time ?? Rx("12:10 AM");
    id = id ?? Rx("");
  }

  Rx<String>? drJhonDeo;

  Rx<String>? drJhonDeo1;

  Rx<String>? thanksDrJhon;

  Rx<String>? time;

  Rx<String>? id;
}
