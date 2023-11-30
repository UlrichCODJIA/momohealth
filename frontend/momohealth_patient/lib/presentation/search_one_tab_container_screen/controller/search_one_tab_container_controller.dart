import '/core/app_export.dart';
import '/presentation/search_one_tab_container_screen/models/search_one_tab_container_model.dart';
import 'package:flutter/material.dart';

/// A controller class for the SearchOneTabContainerScreen.
///
/// This class manages the state of the SearchOneTabContainerScreen, including the
/// current searchOneTabContainerModelObj
class SearchOneTabContainerController extends GetxController
    with GetSingleTickerProviderStateMixin {
  Rx<SearchOneTabContainerModel> searchOneTabContainerModelObj =
      SearchOneTabContainerModel().obs;

  late TabController tabviewController =
      Get.put(TabController(vsync: this, length: 3));
}
