import 'package:client_web_1/Layouts/layout_builder.dart';
import 'package:client_web_1/Mobile_size_screens/Login_mobile.dart';
import 'package:client_web_1/Utils/colors.dart';
import 'package:client_web_1/Web_size_screens/intro_screen_web.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
        title: 'English to Maldives',
        theme: ThemeData(
       scaffoldBackgroundColor: bgColor
        ),
        home: LayoutBuilderCode(
            mobilescreen: LoginMobile(), 
            websitescreen: IntroScreenWeb()));
  }
}
