import '../../../core/app_export.dart';

/// This class is used in the [freeambulancelist2_item_widget] screen.
class Freeambulancelist2ItemModel {
  Freeambulancelist2ItemModel({
    this.freeAmbulance,
    this.id,
  }) {
    freeAmbulance = freeAmbulance ?? Rx("Free Ambulance");
    id = id ?? Rx("");
  }

  Rx<String>? freeAmbulance;

  Rx<String>? id;
}
