import 'package:get/get.dart';
import 'package:login_api/controllers/login-controller.dart';


class LoginBinding extends Bindings {
  void dependencies() {
    Get.lazyPut(() => LoginController());
  }
}