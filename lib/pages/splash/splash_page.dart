import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:yols/pages/splash/splash_theme.dart';
import 'package:yols/utils/app_images.dart';

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

  void navigate() async {}
}
