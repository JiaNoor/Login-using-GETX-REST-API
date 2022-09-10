import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:login_api/bindings/login-bindings.dart';
import 'package:login_api/views/login-view.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
       title: 'GetX Login',
      getPages: [
        GetPage(
            name: "/login", 
            page: () => LoginView(), 
            binding: LoginBinding()),
        // GetPage(
        //     name: "/signup",
        //     page: () => DetailScreen(),
        //     binding: DetailBinding()),
      ],
      initialRoute: "/login",
    );
  }
}