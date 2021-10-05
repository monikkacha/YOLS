import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:yols/pages/splash/splash_page.dart';
import 'package:yols/utils/pages.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'YOLS',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      getPages: [
        GetPage(name: Pages.DEFAULT, page: () => SplashPage()),
      ],
    );
  }
}
