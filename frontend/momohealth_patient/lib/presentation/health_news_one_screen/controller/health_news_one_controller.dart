import '/core/app_export.dart';
import '/presentation/health_news_one_screen/models/health_news_one_model.dart';

/// A controller class for the HealthNewsOneScreen.
///
/// This class manages the state of the HealthNewsOneScreen, including the
/// current healthNewsOneModelObj
class HealthNewsOneController extends GetxController {
  Rx<HealthNewsOneModel> healthNewsOneModelObj = HealthNewsOneModel().obs;
}
