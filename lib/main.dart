import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:login_api/bindings/login-bindings.dart';
import 'package:login_api/views/login-view.dart';
import 'controllers/login-controller.dart';
void main() {
  runApp(MyApp());
  
}

class MyApp extends StatelessWidget {
  MyApp({Key? key}) : super(key: key);
  final loginController = Get.put(LoginController());
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
       title: 'GetX Login',
      getPages: [
        GetPage(
            name: "/login", 
            page: () => LoginView(), 
            binding: LoginBinding()
            ),
      ],
      initialRoute: "/login",
    );
  }
}