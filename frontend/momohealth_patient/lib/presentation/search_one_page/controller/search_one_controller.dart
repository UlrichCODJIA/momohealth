import '/core/app_export.dart';
import '/presentation/search_one_page/models/search_one_model.dart';
import 'package:flutter/material.dart';

/// A controller class for the SearchOnePage.
///
/// This class manages the state of the SearchOnePage, including the
/// current searchOneModelObj
class SearchOneController extends GetxController {
  SearchOneController(this.searchOneModelObj);

  TextEditingController searchController = TextEditingController();

  Rx<SearchOneModel> searchOneModelObj;

  @override
  void onClose() {
    super.onClose();
    searchController.dispose();
  }
}
