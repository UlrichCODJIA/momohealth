import '../../../core/app_export.dart';

/// This class is used in the [healthnewslist_item_widget] screen.
class HealthnewslistItemModel {
  HealthnewslistItemModel({
    this.description,
    this.image,
    this.drBradleyBlock,
    this.weburl,
    this.id,
  }) {
    description = description ??
        Rx("“Dr. Bradley Block is Long Islandnative who  with honors from the University PennsBachelors of   Arts in the BiologicalBasis of. Behavior.”");
    image = image ?? Rx(ImageConstant.imgProfileImage);
    drBradleyBlock = drBradleyBlock ?? Rx("Dr. Bradley Block");
    weburl = weburl ?? Rx("M.B.B.S");
    id = id ?? Rx("");
  }

  Rx<String>? description;

  Rx<String>? image;

  Rx<String>? drBradleyBlock;

  Rx<String>? weburl;

  Rx<String>? id;
}
