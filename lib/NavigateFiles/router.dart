import 'dart:async';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import '../main.dart';
import 'page_route.dart';

class Navigate {
  Navigate._();

  // Push screen
  static Future<T> to<T>(Widget widget) {
    return Navigator.push<T>(
        MyApp.materialNavKey.currentContext, CustomPageRoute(widget: widget));
  }

  // Replace screen
  static Future replace<T, TO>(Widget widget) {
    return Navigator.pushReplacement<T, TO>(
        MyApp.materialNavKey.currentContext, CustomPageRoute(widget: widget));
  }

  // Remove all and push
  static Future toAndRemoveAll<T, TO>(Widget widget) {
    return Navigator.pushAndRemoveUntil(MyApp.materialNavKey.currentContext,
        CustomPageRoute(widget: widget), (route) => false);
  }

  // close current screen
  // if can not close the application
  static Future<void> close<T>([T result]) async {
    if (Navigator.canPop(MyApp.materialNavKey.currentContext)) {
      return Navigator.pop<T>(MyApp.materialNavKey.currentContext, result);
    }
    return await SystemNavigator.pop(animated: true);
  }

  // if may close then closes the screen
  static void mayClose<T>([T result]) async {
    await Navigator.maybePop<T>(MyApp.materialNavKey.currentContext, result);
  }
}
