import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:yols/pages/splash/splash_theme.dart';
import 'package:yols/utils/app_images.dart';
import 'package:yols/utils/pages.dart';
import 'package:yols/utils/preference_manager.dart';

class SplashPage extends StatefulWidget {
  const SplashPage({Key? key}) : super(key: key);

  @override
  _SplashPageState createState() => _SplashPageState();
}

class _SplashPageState extends State<SplashPage> {
  @override
  void initState() {
    super.initState();
    navigate();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: SplashTheme.backgroundDecoration,
        child: Center(
          child: Image.asset(AppImages.splash_image),
        ),
      ),
    );
  }

  void navigate() async {
    await Future.delayed(Duration(seconds: 3));
    var isLoggedIn = PreferenceManager.isLoggedIn();
    Get.offNamed(isLoggedIn ? Pages.HOME : Pages.LOGIN);
  }
}
