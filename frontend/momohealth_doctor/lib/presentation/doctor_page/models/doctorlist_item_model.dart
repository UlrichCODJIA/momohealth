import '../../../core/app_export.dart';

/// This class is used in the [doctorlist_item_widget] screen.
class DoctorlistItemModel {
  DoctorlistItemModel({
    this.drJhonDeo,
    this.drJhonDeo1,
    this.cardiologist,
    this.drJhonDeo2,
    this.time,
    this.callBtn,
    this.id,
  }) {
    drJhonDeo = drJhonDeo ?? Rx(ImageConstant.imgRectangle215);
    drJhonDeo1 = drJhonDeo1 ?? Rx("Dr. Jhon Deo");
    cardiologist = cardiologist ?? Rx("Cardiologist");
    drJhonDeo2 = drJhonDeo2 ?? Rx(ImageConstant.imgOnlineIndicator);
    time = time ?? Rx("12AM - 12PM");
    callBtn = callBtn ?? Rx(ImageConstant.imgCallBtn);
    id = id ?? Rx("");
  }

  Rx<String>? drJhonDeo;

  Rx<String>? drJhonDeo1;

  Rx<String>? cardiologist;

  Rx<String>? drJhonDeo2;

  Rx<String>? time;

  Rx<String>? callBtn;

  Rx<String>? id;
}
