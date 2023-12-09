import '/core/app_export.dart';
import '/presentation/search_tab_container_screen/models/search_tab_container_model.dart';
import '/presentation/search_tab_container_screen/models/speciality_model.dart';
import 'package:flutter/material.dart';

/// A controller class for the SearchTabContainerScreen.
///
/// This class manages the state of the SearchTabContainerScreen, including the
/// current searchTabContainerModelObj
class SearchTabContainerController extends GetxController
    with GetSingleTickerProviderStateMixin {
  Rx<SearchTabContainerModel> searchTabContainerModelObj =
      SearchTabContainerModel().obs;

  RxInt specialitySelected = 0.obs;

  List specialityList = [
    SpecialityModel(
        id: 1,
        imgPath: ImageConstant.imgGroupOnerrorcontainer30x36,
        title: "Générale".tr),
    SpecialityModel(
        id: 2, imgPath: ImageConstant.imgLayer1, title: "Cardiologie".tr),
    SpecialityModel(
        id: 3,
        imgPath: ImageConstant.imgGroupOnerrorcontainer30x36,
        title: "Gastrologie".tr),
    SpecialityModel(
        id: 4,
        imgPath: ImageConstant.imgGroupOnerrorcontainer30x36,
        title: "Sexologie".tr),
    SpecialityModel(
        id: 5,
        imgPath: ImageConstant.imgGroupOnerrorcontainer33x38,
        title: "Urologie".tr),
  ];
}
