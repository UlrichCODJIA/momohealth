import '../../../core/app_export.dart';
import 'doctorlist_item_model.dart';

/// This class defines the variables used in the [doctor_page],
/// and is typically used to hold data that is passed between different parts of the application.
class DoctorModel {
  Rx<List<DoctorlistItemModel>> doctorlistItemList = Rx([
    DoctorlistItemModel(
        drJhonDeo: ImageConstant.imgRectangle215.obs,
        drJhonDeo1: "Dr. Jhon Deo".obs,
        cardiologist: "Cardiologist".obs,
        drJhonDeo2: ImageConstant.imgOnlineIndicator.obs,
        time: "12AM - 12PM".obs,
        callBtn: ImageConstant.imgCallBtn.obs),
    DoctorlistItemModel(
        drJhonDeo: ImageConstant.imgRectangle216.obs,
        drJhonDeo1: "Elizabeth Blackwell".obs,
        cardiologist: "Cardiologist".obs,
        drJhonDeo2: ImageConstant.imgOnlineIndicator.obs,
        time: "12AM - 12PM".obs,
        callBtn: ImageConstant.imgCallBtn.obs),
    DoctorlistItemModel(
        drJhonDeo: ImageConstant.imgRectangle217.obs,
        drJhonDeo1: "Hale Williams".obs,
        cardiologist: "Cardiologist".obs,
        drJhonDeo2: ImageConstant.imgOnlineIndicator.obs,
        time: "12AM - 12PM".obs,
        callBtn: ImageConstant.imgCallBtn.obs),
    DoctorlistItemModel(
        drJhonDeo: ImageConstant.imgRectangle218.obs,
        drJhonDeo1: "Brooke Taussig".obs,
        cardiologist: "Cardiologist".obs,
        drJhonDeo2: ImageConstant.imgOnlineIndicator.obs,
        time: "12AM - 12PM".obs,
        callBtn: ImageConstant.imgCallBtn.obs),
    DoctorlistItemModel(
        drJhonDeo: ImageConstant.imgRectangle219.obs,
        drJhonDeo1: "Richard Drew".obs,
        cardiologist: "Cardiologist".obs,
        drJhonDeo2: ImageConstant.imgOnlineIndicator.obs,
        time: "12AM - 12PM".obs,
        callBtn: ImageConstant.imgCallBtn.obs),
    DoctorlistItemModel(
        drJhonDeo: ImageConstant.imgRectangle217.obs,
        callBtn: ImageConstant.imgCallBtn.obs)
  ]);
}
