import 'package:flutter/material.dart';

class DirectionalEdgeInsets {
  static EdgeInsetsDirectional all(double value) {
    return EdgeInsetsDirectional.fromSTEB(value, value, value, value);
  }

  static EdgeInsetsDirectional symmetric(
      {double vertical = 0, double horizontal = 0}) {
    return EdgeInsetsDirectional.fromSTEB(
        horizontal, vertical, horizontal, vertical);
  }

  static EdgeInsetsDirectional fromLTRB(
      double left, double top, double right, double bottom) {
    return EdgeInsetsDirectional.fromSTEB(left, top, right, bottom);
  }

  static EdgeInsetsDirectional only(
      {double left = 0, double top = 0, double right = 0, double bottom = 0}) {
    return EdgeInsetsDirectional.only(
        start: left, bottom: bottom, top: top, end: right);
  }

  static EdgeInsetsDirectional get zero => EdgeInsetsDirectional.zero;
}
