import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:yols/pages/login/login_theme.dart';
import 'package:yols/pages/splash/splash_theme.dart';
import 'package:yols/utils/app_images.dart';
import 'package:yols/utils/app_strings.dart';
import 'package:yols/utils/colors.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Container(
      decoration: SplashTheme.backgroundDecoration,
      child: Stack(
        children: [
          Padding(
            padding: const EdgeInsets.only(top: 50.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Column(
                  children: [
                    Image.asset(AppImages.login_illustration),
                    Text(
                      "Welcome To",
                      style: TextStyle(
                          color: AppColors.white, fontWeight: FontWeight.bold),
                    ),
                    Image.asset(
                      AppImages.splash_image,
                      height: 80.0,
                      width: 80.0,
                    ),
                  ],
                )
              ],
            ),
          ),
          Positioned(
            child: Align(
              alignment: FractionalOffset.bottomCenter,
              child: Container(
                decoration: LoginTheme.roundedContainerTheme,
                height: 400.0,
                width: MediaQuery.of(context).size.width * 0.8,
                child: Padding(
                  padding:
                      EdgeInsets.symmetric(vertical: 12.0, horizontal: 20.0),
                  child: Column(
                    children: [
                      Text(
                        AppStrings.enter_details,
                        style: LoginTheme.headingTextStyleTheme,
                      ),
                      SizedBox(
                        height: 20.0,
                      ),
                      Row(
                        children: [
                          Expanded(
                              child: TextField(
                            decoration: LoginTheme.textFieldTheme(
                                hint: AppStrings.first_name),
                          )),
                          SizedBox(
                            width: 4.0,
                          ),
                          Expanded(
                              child: TextField(
                            decoration: LoginTheme.textFieldTheme(
                                hint: AppStrings.last_name),
                          )),
                        ],
                      ),
                      SizedBox(
                        height: 20.0,
                      ),
                      TextField(
                        decoration: LoginTheme.textFieldTheme(
                            hint: AppStrings.email_address),
                      ),
                      SizedBox(
                        height: 20.0,
                      ),
                      Text.rich(
                        TextSpan(
                          style: TextStyle(height: 2.0),
                          children: [
                            TextSpan(
                                text: 'By continuing you agree to our ',
                                style: TextStyle(
                                    color: Colors.black.withAlpha(95))),
                            TextSpan(
                              text: 'Terms & Conditions ',
                            ),
                            TextSpan(
                                text: 'and ',
                                style: TextStyle(
                                    color: Colors.black.withAlpha(95))),
                            TextSpan(
                              text: 'Privacy Policy',
                            ),
                          ],
                        ),
                      ),
                      SizedBox(
                        height: 60.0,
                      ),
                      Material(
                        color: AppColors.patina,
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(100.0)),
                        child: InkWell(
                          onTap: () {},
                          child: Container(
                            width: 140.0,
                            height: 40.0,
                            child: Center(
                                child: Text(
                              AppStrings.continue_str,
                              style: TextStyle(color: AppColors.white),
                            )),
                          ),
                        ),
                      ),
                      Material(
                        color: Colors.transparent,
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(100.0)),
                        child: InkWell(
                          onTap: () {},
                          child: Container(
                            width: 140.0,
                            height: 35.0,
                            child: Center(
                                child: Text(
                              AppStrings.skip,
                              style: TextStyle(color: AppColors.black),
                            )),
                          ),
                        ),
                      )
                    ],
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    ));
  }
}
