import '/core/app_export.dart';
import '/presentation/hospital_tab_container_screen/models/hospital_tab_container_model.dart';
import 'package:flutter/material.dart';

/// A controller class for the HospitalTabContainerScreen.
///
/// This class manages the state of the HospitalTabContainerScreen, including the
/// current hospitalTabContainerModelObj
class HospitalTabContainerController extends GetxController
    with GetSingleTickerProviderStateMixin {
  Rx<HospitalTabContainerModel> hospitalTabContainerModelObj =
      HospitalTabContainerModel().obs;

  late TabController tabviewController =
      Get.put(TabController(vsync: this, length: 3));
}
