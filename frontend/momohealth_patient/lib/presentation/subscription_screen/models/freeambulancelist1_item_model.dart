import '../../../core/app_export.dart';

/// This class is used in the [freeambulancelist1_item_widget] screen.
class Freeambulancelist1ItemModel {
  Freeambulancelist1ItemModel({
    this.freeAmbulance,
    this.id,
  }) {
    freeAmbulance = freeAmbulance ?? Rx("Free Ambulance");
    id = id ?? Rx("");
  }

  Rx<String>? freeAmbulance;

  Rx<String>? id;
}
