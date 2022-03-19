 import 'dart:math';
import 'package:flutter/material.dart';

// Applications Palette
class Palette {
  // Primary color swatches
  static const Map<int, Color> _primaryColorSwatch1 = {
    50: Color.fromRGBO(199, 240, 252, .1),
    100: Color.fromRGBO(199, 240, 252, .2),
    200: Color.fromRGBO(199, 240, 252, .3),
    300: Color.fromRGBO(199, 240, 252, .4),
    400: Color.fromRGBO(199, 240, 252, .5),
    500: Color.fromRGBO(199, 240, 252, .6),
    600: Color.fromRGBO(199, 240, 252, .7),
    700: Color.fromRGBO(199, 240, 252, .8),
    800: Color.fromRGBO(199, 240, 252, .9),
    900: Color.fromRGBO(199, 240, 252, 1),
  };

  // Primary color
  static const MaterialColor primaryColor1 =
      MaterialColor(0xFFC7F0FC, _primaryColorSwatch1);

  // Primary color swatches
  static const Map<int, Color> _primaryColorSwatch = {
    50: Color.fromRGBO(48, 108, 205, .1),
    100: Color.fromRGBO(48, 108, 205, .2),
    200: Color.fromRGBO(48, 108, 205, .3),
    300: Color.fromRGBO(48, 108, 205, .4),
    400: Color.fromRGBO(48, 108, 205, .5),
    500: Color.fromRGBO(48, 108, 205, .6),
    600: Color.fromRGBO(48, 108, 205, .7),
    700: Color.fromRGBO(48, 108, 205, .8),
    800: Color.fromRGBO(48, 108, 205, .9),
    900: Color.fromRGBO(48, 108, 205, 1),
  };

  // Primary color
  static const MaterialColor primaryColor =
      MaterialColor(0xFF306CCD, _primaryColorSwatch);

  // Input border color
  static const Color inputBorderColor = Color(0xFFF3F3F3);

  static const Color signUPBackground = Color(0xFFF4F8FF);

  // Button overlayColor
  static const Color buttonOverlayColor = Color.fromRGBO(0, 0, 0, 0.05);

  // text color swatches
  static const Map<int, Color> blackColorSwatch = {
    50: Color.fromRGBO(42, 42, 42, .1),
    100: Color.fromRGBO(42, 42, 42, .2),
    200: Color.fromRGBO(42, 42, 42, .3),
    300: Color.fromRGBO(42, 42, 42, .4),
    400: Color.fromRGBO(42, 42, 42, .5),
    500: Color.fromRGBO(42, 42, 42, .6),
    600: Color.fromRGBO(42, 42, 42, .7),
    700: Color.fromRGBO(42, 42, 42, .8),
    800: Color.fromRGBO(42, 42, 42, .9),
    900: Color.fromRGBO(42, 42, 42, 1),
  };

  // text color
  static const MaterialColor blackColor =
      MaterialColor(0xff2A2A2A, blackColorSwatch);

  // Cart orderIndicatorInactiveColor color
  static const Color borderColor = Color(0xFFD9D9D9);

  // Cart orderIndicatorInactiveColor color
  static const Color inputHintColor = Color.fromRGBO(94, 94, 94, 1);

  // Cart backgroundClipperGradientColor color
  static const Color backgroundClipperGradientColor = Color(0xFF52E5E7);

  static const Color backgroundColor = Color(0xFF2D81F6);

  // Cart shadowColor color
  static const Color shadowColor = Color(0xFFE5E5E5);

  // Cart scaffoldColor color
  static const Color scaffoldBackgroundColor = Color(0xFFFDFDFDF);
  static const Color backPageColor = Color(0xFFDFDFDF);

  // Cart scaffoldColor color
  static const Color blueColor = Color(0xFF1162D1);

  // Cart textGreenColor color
  static const Color greenColor = Color(0xFF39B54A);
 static const Color tabBackgroundColor = Color(0xFF56BE81);
  // Cart textGreenColor color
  static const Color yellowColor = Color(0xFFFFA826);

  static const Color orangeColor = Color(0xFFF65E53);

  // Cart textGreenColor color
  static const Color tabIndicatorColor = Color(0xFF25C280);

  // Cart textGreenColor color
  static const Color reviewBoardColor = Color(0xFFF3FCFF);

  //Font color
  static const Color blueFontColor = Color(0XFF0071BC);

  static const Color buttonColor = Color(0XFF306CCD);

  static get random => Color.fromRGBO(
      Random().nextInt(255), Random().nextInt(255), Random().nextInt(255), 1.0);

  static const Color cardColor = Color(0XFF313143);

  static const Color buttonTabColor = Color(0XFFF0F4F9);
  static const Color fontColor = Color(0XFF5E708C);
  static const Color greyFontColor = Color(0XFF8DA1BD);
}
