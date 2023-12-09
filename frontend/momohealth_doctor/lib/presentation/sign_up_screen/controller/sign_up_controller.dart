import '/core/app_export.dart';
import '/presentation/sign_up_screen/models/sign_up_two_model.dart';
import 'package:flutter/material.dart';

/// A controller class for the SignUpTwoScreen.
///
/// This class manages the state of the SignUpTwoScreen, including the
/// current signUpTwoModelObj
class SignUpController extends GetxController {
  TextEditingController emailSectionController = TextEditingController();

  TextEditingController userNameSectionController = TextEditingController();
  TextEditingController userLastNameSectionController = TextEditingController();

  TextEditingController passwordSectionController = TextEditingController();

  Rx<SignUpTwoModel> signUpTwoModelObj = SignUpTwoModel().obs;

  Rx<bool> isShowPassword = true.obs;

  @override
  void onClose() {
    super.onClose();
    emailSectionController.dispose();
    userNameSectionController.dispose();
    passwordSectionController.dispose();
  }
}
