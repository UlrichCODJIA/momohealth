import '/core/app_export.dart';
import '/presentation/message_one_screen/models/message_one_model.dart';
import 'package:flutter/material.dart';

/// A controller class for the MessageOneScreen.
///
/// This class manages the state of the MessageOneScreen, including the
/// current messageOneModelObj
class MessageOneController extends GetxController {
  TextEditingController searchController = TextEditingController();

  Rx<MessageOneModel> messageOneModelObj = MessageOneModel().obs;

  @override
  void onClose() {
    super.onClose();
    searchController.dispose();
  }
}
