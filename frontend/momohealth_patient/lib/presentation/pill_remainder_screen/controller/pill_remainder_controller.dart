import '/core/app_export.dart';
import '/presentation/pill_remainder_screen/models/pill_remainder_model.dart';

/// A controller class for the PillRemainderScreen.
///
/// This class manages the state of the PillRemainderScreen, including the
/// current pillRemainderModelObj
class PillRemainderController extends GetxController {
  Rx<PillRemainderModel> pillRemainderModelObj = PillRemainderModel().obs;
}
