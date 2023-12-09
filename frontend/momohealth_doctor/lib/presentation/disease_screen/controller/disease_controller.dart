import '/core/app_export.dart';
import '/presentation/disease_screen/models/disease_model.dart';

/// A controller class for the DiseaseScreen.
///
/// This class manages the state of the DiseaseScreen, including the
/// current diseaseModelObj
class DiseaseController extends GetxController {
  Rx<DiseaseModel> diseaseModelObj = DiseaseModel().obs;
}
