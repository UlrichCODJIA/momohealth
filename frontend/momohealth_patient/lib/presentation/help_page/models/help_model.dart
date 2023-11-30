import 'coronavirusinfo_item_model.dart';
import '../../../core/app_export.dart';

/// This class defines the variables used in the [help_page],
/// and is typically used to hold data that is passed between different parts of the application.
class HelpModel {
  Rx<List<CoronavirusinfoItemModel>> coronavirusinfoItemList =
      Rx(List.generate(5, (index) => CoronavirusinfoItemModel()));
}
