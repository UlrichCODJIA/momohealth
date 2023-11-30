import '../../../core/app_export.dart';
import 'card_item_model.dart';

/// This class defines the variables used in the [pill_remainder_screen],
/// and is typically used to hold data that is passed between different parts of the application.
class PillRemainderModel {
  Rx<List<CardItemModel>> cardItemList = Rx([
    CardItemModel(
        acarbose: ImageConstant.imgPill.obs,
        acarbose1: "Acarbose".obs,
        weight: "50mg".obs,
        time: "9.30 AM".obs,
        everyDay: "Every day".obs,
        am: ImageConstant.imgNotification.obs),
    CardItemModel(
        acarbose: ImageConstant.imgPillCyan40001.obs,
        acarbose1: "Benefix".obs,
        weight: "100mg".obs,
        time: "10.30 AM".obs,
        everyDay: "Every day".obs),
    CardItemModel(
        acarbose: ImageConstant.imgPillCyan300.obs,
        acarbose1: "Adenovirus".obs,
        weight: "B-12".obs,
        time: "9.30 PM".obs,
        everyDay: "Every day".obs,
        am: ImageConstant.imgNotification.obs),
    CardItemModel(
        acarbose1: "Calcium Chloride".obs,
        weight: "100mg".obs,
        time: "1.00 PM".obs,
        everyDay: "Every week".obs,
        am: ImageConstant.imgNotification.obs),
    CardItemModel(
        acarbose1: "Fabrazyme".obs,
        weight: "500mg".obs,
        time: "1.30 PM".obs,
        everyDay: "Every week".obs,
        am: ImageConstant.imgNotification.obs),
    CardItemModel(
        acarbose1: "Ketoprofen".obs,
        weight: "100mg".obs,
        time: "9.00 PM".obs,
        everyDay: "Every day".obs,
        am: ImageConstant.imgNotification.obs),
    CardItemModel(
        acarbose1: "Macrobid".obs,
        weight: "25mg".obs,
        time: "9.30 am".obs,
        everyDay: "Every day".obs,
        am: ImageConstant.imgNotification.obs)
  ]);
}
