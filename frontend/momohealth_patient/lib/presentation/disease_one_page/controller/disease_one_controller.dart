import '/core/app_export.dart';
import '/presentation/disease_one_page/models/disease_one_model.dart';

/// A controller class for the DiseaseOnePage.
///
/// This class manages the state of the DiseaseOnePage, including the
/// current diseaseOneModelObj
class DiseaseOneController extends GetxController {
  DiseaseOneController(this.diseaseOneModelObj);

  Rx<DiseaseOneModel> diseaseOneModelObj;
}
