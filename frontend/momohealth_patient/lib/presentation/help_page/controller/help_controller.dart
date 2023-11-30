import '/core/app_export.dart';
import '/presentation/help_page/models/help_model.dart';
import 'package:flutter/material.dart';

/// A controller class for the HelpPage.
///
/// This class manages the state of the HelpPage, including the
/// current helpModelObj
class HelpController extends GetxController {
  HelpController(this.helpModelObj);

  TextEditingController searchController = TextEditingController();

  Rx<HelpModel> helpModelObj;

  @override
  void onClose() {
    super.onClose();
    searchController.dispose();
  }
}
