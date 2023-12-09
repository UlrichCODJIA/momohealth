import '../controller/call_rating_controller.dart';
import 'package:get/get.dart';

/// A binding class for the CallRatingScreen.
///
/// This class ensures that the CallRatingController is created when the
/// CallRatingScreen is first loaded.
class CallRatingBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => CallRatingController());
  }
}
