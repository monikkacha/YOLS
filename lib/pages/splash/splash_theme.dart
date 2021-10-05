import 'package:flutter/material.dart';
import 'package:yols/utils/colors.dart';

class SplashTheme {
  static final backgroundDecoration = BoxDecoration(
    gradient: LinearGradient(
      colors: [
        AppColors.verdigris,
        AppColors.shocking_pink.withAlpha(50),
      ],
      begin: Alignment(-1.0, -1),
      end: Alignment(-1.0, 1),
    ),
  );
}
