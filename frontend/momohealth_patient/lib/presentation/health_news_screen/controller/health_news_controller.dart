import '/core/app_export.dart';
import '/presentation/health_news_screen/models/health_news_model.dart';

/// A controller class for the HealthNewsScreen.
///
/// This class manages the state of the HealthNewsScreen, including the
/// current healthNewsModelObj
class HealthNewsController extends GetxController {
  Rx<HealthNewsModel> healthNewsModelObj = HealthNewsModel().obs;
}
