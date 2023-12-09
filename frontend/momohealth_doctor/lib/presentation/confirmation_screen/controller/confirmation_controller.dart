import '/core/app_export.dart';
import '/presentation/confirmation_screen/models/confirmation_model.dart';

/// A controller class for the ConfirmationScreen.
///
/// This class manages the state of the ConfirmationScreen, including the
/// current confirmationModelObj
class ConfirmationController extends GetxController {
  Rx<ConfirmationModel> confirmationModelObj = ConfirmationModel().obs;
}
