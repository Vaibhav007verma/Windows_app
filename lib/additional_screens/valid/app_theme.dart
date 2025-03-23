import 'package:abc/additional_screens/valid/app_text_styles.dart';
import 'package:flutter/material.dart';
// import 'app_text_styles.dart';
import 'color_constants.dart';

class AppTheme {
  static final ThemeData lightTheme = ThemeData(
    brightness: Brightness.light,
    primaryColor: Color(0xFF004F9E), // POLYMEX Blue
    scaffoldBackgroundColor: ColorConstants.whiteColor,
    textTheme: TextTheme(
      bodySmall: AppTextStyles.small10,
      bodyMedium: AppTextStyles.medium,
      titleLarge: AppTextStyles.title,
    ),
    appBarTheme: AppBarTheme(
      backgroundColor: ColorConstants.primaryColor, // Same as primary color
      foregroundColor: ColorConstants.whiteColor,
      elevation: 0,
    ),
    buttonTheme: ButtonThemeData(
      buttonColor: ColorConstants.primaryColor,
      textTheme: ButtonTextTheme.primary,
    ),
    colorScheme: ColorScheme.light(
      primary: ColorConstants.primaryColor,
      secondary: ColorConstants.greyShade700, // For disabled buttons or UI elements
      background: ColorConstants.whiteColor,
    ),
  );


}
