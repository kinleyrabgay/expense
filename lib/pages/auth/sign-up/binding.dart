import 'package:expense/pages/auth/sign-up/controller.dart';
import 'package:get/get.dart';

class Register extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<RegisterController>(() => RegisterController());
  }
}
