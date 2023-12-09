import '../controller/subscription_controller.dart';
import 'package:get/get.dart';

/// A binding class for the SubscriptionScreen.
///
/// This class ensures that the SubscriptionController is created when the
/// SubscriptionScreen is first loaded.
class SubscriptionBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => SubscriptionController());
  }
}
