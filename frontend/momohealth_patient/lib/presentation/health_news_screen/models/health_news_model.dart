import '../../../core/app_export.dart';
import 'healthnewslist_item_model.dart';

/// This class defines the variables used in the [health_news_screen],
/// and is typically used to hold data that is passed between different parts of the application.
class HealthNewsModel {
  Rx<List<HealthnewslistItemModel>> healthnewslistItemList = Rx([
    HealthnewslistItemModel(
        description:
            "“Dr. Bradley Block is Long Islandnative who  with honors from the University PennsBachelors of   Arts in the BiologicalBasis of. Behavior.”"
                .obs,
        image: ImageConstant.imgProfileImage.obs,
        drBradleyBlock: "Dr. Bradley Block".obs,
        weburl: "M.B.B.S".obs),
    HealthnewslistItemModel(
        description:
            "“He went on to receive his doctorate of medicine from SUNY at Buffalo. He completed his residency in Otolaryngology.”"
                .obs,
        image: ImageConstant.imgImage.obs,
        drBradleyBlock: "Dr. Helen Lowe".obs,
        weburl: "Cardiologist".obs),
    HealthnewslistItemModel(
        description:
            "“Dr. Bradley Block is Long Islandnative who  with honors from the University PennsBachelors of   Arts in the BiologicalBasis of. Behavior.”"
                .obs,
        image: ImageConstant.imgProfileImage.obs,
        drBradleyBlock: "Dr. Bradley Block".obs,
        weburl: "M.B.B.S".obs)
  ]);
}
