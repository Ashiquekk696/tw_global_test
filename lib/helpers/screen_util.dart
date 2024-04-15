import 'package:flutter/material.dart';

class ScreenUtil {
  static double screenWidth(BuildContext context) {
    return MediaQuery.of(context).size.width;
  }

  static double screenHeight(BuildContext context) {
    return MediaQuery.of(context).size.height;
  }

  static double statusBarHeight(BuildContext context) {
    return MediaQuery.of(context).padding.top;
  }

  static double bottomBarHeight(BuildContext context) {
    return MediaQuery.of(context).padding.bottom;
  }

  static double scaleWidth(BuildContext context, double size) {
    return size *
        screenWidth(context) /
        375; // 375 is the standard width that you design for
  }

  static double scaleHeight(BuildContext context, double size) {
    return size *
        screenHeight(context) /
        812; // 812 is the standard height that you design for
  }

  static double scaleText(BuildContext context, double size) {
    return size *
        screenWidth(context) /
        375; // You can adjust the standard width according to your design
  }
}
