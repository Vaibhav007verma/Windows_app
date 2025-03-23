import 'package:flutter/material.dart';
import 'package:abc/additional_screens/valid/color_constants.dart';

class CustomButtonStyles {

  static ButtonStyle elevatedButtonStyle = ElevatedButton.styleFrom(
    backgroundColor: ColorConstants.secondaryColor,
    foregroundColor: ColorConstants.black,

    shape: RoundedRectangleBorder(
      borderRadius: BorderRadius.circular(20), // Rounded corners
    ),
    textStyle: TextStyle(
      fontSize: 10,
      fontWeight: FontWeight.normal,
    ),
  );




}

