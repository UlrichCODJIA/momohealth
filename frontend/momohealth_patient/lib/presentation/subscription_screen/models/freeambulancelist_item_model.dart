import '../../../core/app_export.dart';

/// This class is used in the [freeambulancelist_item_widget] screen.
class FreeambulancelistItemModel {
  FreeambulancelistItemModel({
    this.freeAmbulance,
    this.id,
  }) {
    freeAmbulance = freeAmbulance ?? Rx("Free Ambulance");
    id = id ?? Rx("");
  }

  Rx<String>? freeAmbulance;

  Rx<String>? id;
}
