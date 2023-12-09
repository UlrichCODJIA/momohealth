import '../../../core/app_export.dart';
import 'freeambulancelist_item_model.dart';
import 'freeambulancelist1_item_model.dart';
import 'freeambulancelist2_item_model.dart';

/// This class defines the variables used in the [subscription_screen],
/// and is typically used to hold data that is passed between different parts of the application.
class SubscriptionModel {
  Rx<List<FreeambulancelistItemModel>> freeambulancelistItemList = Rx([
    FreeambulancelistItemModel(freeAmbulance: "Free Ambulance".obs),
    FreeambulancelistItemModel(freeAmbulance: "24/7 Consultation".obs),
    FreeambulancelistItemModel(freeAmbulance: "Emergency Team".obs),
    FreeambulancelistItemModel(freeAmbulance: "Daily Health Tips".obs)
  ]);

  Rx<List<Freeambulancelist1ItemModel>> freeambulancelist1ItemList = Rx([
    Freeambulancelist1ItemModel(freeAmbulance: "Free Ambulance".obs),
    Freeambulancelist1ItemModel(freeAmbulance: "24/7 Consultation".obs),
    Freeambulancelist1ItemModel(freeAmbulance: "Emergency Team".obs),
    Freeambulancelist1ItemModel(freeAmbulance: "Daily Health Tips".obs),
    Freeambulancelist1ItemModel(freeAmbulance: "Free Life Insurance".obs)
  ]);

  Rx<List<Freeambulancelist2ItemModel>> freeambulancelist2ItemList = Rx([
    Freeambulancelist2ItemModel(freeAmbulance: "Free Ambulance".obs),
    Freeambulancelist2ItemModel(freeAmbulance: "24/7 Consultation".obs),
    Freeambulancelist2ItemModel(freeAmbulance: "Emergency Team".obs),
    Freeambulancelist2ItemModel(freeAmbulance: "Daily Health Tips".obs),
    Freeambulancelist2ItemModel(freeAmbulance: "Free Life Insurance".obs)
  ]);
}
