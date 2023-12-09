import '/core/app_export.dart';
import '/presentation/help_tab_container_screen/models/help_tab_container_model.dart';
import 'package:flutter/material.dart';

/// A controller class for the HelpTabContainerScreen.
///
/// This class manages the state of the HelpTabContainerScreen, including the
/// current helpTabContainerModelObj
class HelpTabContainerController extends GetxController
    with GetSingleTickerProviderStateMixin {
  Rx<HelpTabContainerModel> helpTabContainerModelObj =
      HelpTabContainerModel().obs;

  late TabController tabviewController =
      Get.put(TabController(vsync: this, length: 2));
}
