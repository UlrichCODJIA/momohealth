import '/core/app_export.dart';
import '/presentation/notification_screen/models/notification_one_model.dart';

/// A controller class for the NotificationScreen.
///
/// This class manages the state of the NotificationScreen, including the
/// current notificationOneModelObj
class NotificationOneController extends GetxController {
  Rx<NotificationOneModel> notificationOneModelObj = NotificationOneModel().obs;
}
