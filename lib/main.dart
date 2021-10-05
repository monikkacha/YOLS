import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:yols/pages/home/home_page.dart';
import 'package:yols/pages/login/login_page.dart';
import 'package:yols/pages/splash/splash_page.dart';
import 'package:yols/utils/app_strings.dart';
import 'package:yols/utils/pages.dart';
import 'package:yols/utils/preference_manager.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    PreferenceManager.init();
    return GetMaterialApp(
      title: AppStrings.title,
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      getPages: [
        GetPage(name: Pages.DEFAULT, page: () => SplashPage()),
        GetPage(name: Pages.HOME, page: () => HomePage()),
        GetPage(name: Pages.LOGIN, page: () => LoginPage()),
      ],
    );
  }
}
