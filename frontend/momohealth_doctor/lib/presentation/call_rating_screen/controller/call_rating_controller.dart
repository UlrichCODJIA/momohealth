import '/core/app_export.dart';
import '/presentation/call_rating_screen/models/call_rating_model.dart';

/// A controller class for the CallRatingScreen.
///
/// This class manages the state of the CallRatingScreen, including the
/// current callRatingModelObj
class CallRatingController extends GetxController {
  Rx<CallRatingModel> callRatingModelObj = CallRatingModel().obs;
}
