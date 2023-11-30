import '../../../core/app_export.dart';
import 'messageone_item_model.dart';

/// This class defines the variables used in the [message_one_screen],
/// and is typically used to hold data that is passed between different parts of the application.
class MessageOneModel {
  Rx<List<MessageoneItemModel>> messageoneItemList = Rx([
    MessageoneItemModel(
        drJhonDeo: ImageConstant.imgRectangle77.obs,
        drJhonDeo1: "Dr. Jhon Deo".obs,
        thanksDrJhon: "Thanks dr. jhon have a nice say".obs,
        time: "12:10 AM".obs),
    MessageoneItemModel(
        drJhonDeo: ImageConstant.imgRectangle11.obs,
        drJhonDeo1: "Jacob Jones".obs,
        thanksDrJhon: "are you sure? no problem?".obs,
        time: "12:15 AM".obs),
    MessageoneItemModel(
        drJhonDeo: ImageConstant.imgRectangle112.obs,
        drJhonDeo1: "Floyd Miles".obs,
        thanksDrJhon: "Hi dear how are you?".obs,
        time: "12:05 AM".obs),
    MessageoneItemModel(
        drJhonDeo: ImageConstant.imgRectangle113.obs,
        drJhonDeo1: "Robert Fox".obs,
        thanksDrJhon: "See you soon devon".obs,
        time: "12:05 AM".obs),
    MessageoneItemModel(
        drJhonDeo: ImageConstant.imgRectangle114.obs,
        drJhonDeo1: "Cody Fisher".obs,
        thanksDrJhon: "Hello! what are you doing....".obs,
        time: "12:05 AM".obs)
  ]);
}
