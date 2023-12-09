import '/core/app_export.dart';
import '/presentation/subscription_screen/models/subscription_model.dart';
import 'package:flutter/material.dart';

/// A controller class for the SubscriptionScreen.
///
/// This class manages the state of the SubscriptionScreen, including the
/// current subscriptionModelObj
class SubscriptionController extends GetxController {
  TextEditingController freeLifeInsuranceInputController =
      TextEditingController();

  Rx<SubscriptionModel> subscriptionModelObj = SubscriptionModel().obs;

  @override
  void onClose() {
    super.onClose();
    freeLifeInsuranceInputController.dispose();
  }
}
