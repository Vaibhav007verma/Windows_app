import 'package:flutter/material.dart';

class ResponsiveUtils {
  static double getScaleFactor(BuildContext context) {
    final size = MediaQuery.of(context).size;
    final isDesktop = size.width >= 1200;
    final isTablet = size.width >= 900 && size.width < 1200;

    return isDesktop ? 1.2 : isTablet ? 1.0 : 0.8;
  }

  static bool isDesktop(BuildContext context) {
    return MediaQuery.of(context).size.width >= 1200;
  }

  static bool isTablet(BuildContext context) {
    final width = MediaQuery.of(context).size.width;
    return width >= 900 && width < 1200;
  }

  static bool isMobile(BuildContext context) {
    return MediaQuery.of(context).size.width < 900;
  }
}