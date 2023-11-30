import '/core/app_export.dart';
import '/presentation/get_schedule_screen/models/get_schedule_model.dart';

/// A controller class for the GetScheduleScreen.
///
/// This class manages the state of the GetScheduleScreen, including the
/// current getScheduleModelObj
class GetScheduleController extends GetxController {
  Rx<GetScheduleModel> getScheduleModelObj = GetScheduleModel().obs;
  RxInt selectedDay = 0.obs;
  Rx<DateTime> selectedDate = DateTime.now().obs;
  RxString hourSelected = "${DateTime.now().hour}".obs;
  RxString minuteSelected = "${DateTime.now().minute}".obs;
}
