import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart' show GoogleFonts;

import 'color_constants.dart';

class AppTextStyles {
  // Small Text (10px)
  static TextStyle small10 = GoogleFonts.lato(
    fontSize: 10,
    fontWeight: FontWeight.w400,
    color: ColorConstants.black,
  );

  static TextStyle small10White = GoogleFonts.lato(
    fontSize: 10,
    fontWeight: FontWeight.w400,
    color: ColorConstants.whiteColor,
  );

  static TextStyle small9Bold = GoogleFonts.lato(
    fontSize: 9,
    fontWeight: FontWeight.bold,
    color: ColorConstants.black,
  );

  static TextStyle small10BoldWhite = GoogleFonts.lato(
    fontSize: 10,
    fontWeight: FontWeight.bold,
    color: ColorConstants.whiteColor,
  );

  // Small Text (12px)
  static TextStyle small12 = GoogleFonts.lato(
    fontSize: 12,
    fontWeight: FontWeight.w400,
    color: ColorConstants.black,
  );

  static TextStyle small12Bold = GoogleFonts.lato(
    fontSize: 12,
    fontWeight: FontWeight.w900,
    color: ColorConstants.black,
  );

  // Medium Text
  static TextStyle medium = GoogleFonts.lato(
    fontSize: 16,
    fontWeight: FontWeight.w500,
    color: ColorConstants.black,
  );

  // Large Text
  static TextStyle large = GoogleFonts.lato(
    fontSize: 20,
    fontWeight: FontWeight.bold,
    color: ColorConstants.black,
  );

  // Title Text
  static TextStyle title = GoogleFonts.lato(
    fontSize: 24,
    fontWeight: FontWeight.bold,
    color: ColorConstants.primaryColor,
  );

  static TextStyle heading20Bold = TextStyle(
    fontSize: 20,
    fontWeight: FontWeight.bold,
    color: ColorConstants.black,
    height: 1.2,
    letterSpacing: 0.15,
  );

  static TextStyle regular14 = TextStyle(
    fontSize: 14,
    fontWeight: FontWeight.w400,
    color: ColorConstants.black,
    height: 1.4,
    letterSpacing: 0.25,
  );


  static TextStyle small10Bold = GoogleFonts.lato(
    fontSize: 10,
    fontWeight: FontWeight.bold,
    color: ColorConstants.black,
  );


  static TextStyle small10w600 = TextStyle(
    fontSize: 10,
    fontWeight: FontWeight.w600,
    color: ColorConstants.black,
  );



}
