import 'package:flutter/material.dart';

// Applications Palette
class Palette {
  // Primary color swatches
  static const Map<int, Color> primarySwatch = {
    50: Color.fromRGBO(255, 128, 0, .1),
    100: Color.fromRGBO(255, 128, 0, .2),
    200: Color.fromRGBO(255, 128, 0, .3),
    300: Color.fromRGBO(255, 128, 0, .4),
    400: Color.fromRGBO(255, 128, 0, .5),
    500: Color.fromRGBO(255, 128, 0, .6),
    600: Color.fromRGBO(255, 128, 0, .7),
    700: Color.fromRGBO(255, 128, 0, .8),
    800: Color.fromRGBO(255, 128, 0, .9),
    900: Color.fromRGBO(255, 128, 0, 1),
  };

  // Primary color
  static const MaterialColor primaryColor =
      MaterialColor(0xff2d81f6, primarySwatch);

  //Awaited color
  static const Color Awaited = Color(0xffF5AC42);

  // Input hint color
  static const Color inputHintColor = Color(0xff495057);

  // Input border color
  static const Color inputBorderColor = Color(0xff8DA1BD);
  static const Color CardColor = Color(0xffF4F9FF);

  // Border color
  static const Color borderColor = Color.fromRGBO(54, 69, 79, 1.0);

  // Button overlayColor
  static const Color buttonOverlayColor = Color.fromRGBO(0, 0, 0, 0.05);

  // Button overlayColor
  static const Color progresscolor = Color(0xff28b88a);
  static const Color Buttoncolor = Color(0xff7a7a7a);
  static const Color Textcolor = Color(0xff9b9b9b);

  //Container default color
  static const Color upgardeplan = Color.fromRGBO(49, 49, 67,1.0);

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

  // box shadow color
  static const Color shadowColor = Color.fromRGBO(0, 0, 0, 0.1);
}
