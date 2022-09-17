import 'package:flutter/material.dart';
import 'package:get/get.dart';

class LoginController extends GetxController {
  RxBool isObscure = true.obs;
final nameController = TextEditingController();
  final emailController = TextEditingController();
  final passwordController = TextEditingController();
    void dispose() {
    nameController.dispose();
    emailController.dispose();
    passwordController.dispose();
    super.dispose();
  }
  isObscureActive() {
    isObscure.value = !isObscure.value;
  }
}