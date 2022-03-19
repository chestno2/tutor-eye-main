import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:intl/intl.dart';
import 'package:shared_preferences/shared_preferences.dart';

// Application name
const String APP_NAME = 'Service';

// shared preferences instance
SharedPreferences kSharedPreferences;

// Text fields mandatory char
const String mandatoryChar = "*";

// Regular font
const String kPOPPINS_REGULAR = 'Poppins';

// method to clear previous toast and display the requested one
Future<bool> showToast(String msg,
    {Toast toastLength = Toast.LENGTH_SHORT}) async {
  if (msg?.isNotEmpty == true) {
    await Fluttertoast.cancel();
    return await Fluttertoast.showToast(msg: msg, toastLength: toastLength);
  } else {
    return await Future.value(false);
  }
}

// image provider
ImageProvider imageProvider(String url, {Size size}) {
  if (url != null && url.isNotEmpty) {
    return new NetworkImage('$url');
  } else {
    return new AssetImage('');
  }
}

// method to remove HTML tags from string
String removeHtmlTags({String data: "N/A"}) {
  RegExp regExp = RegExp(r"<[^>]*>", multiLine: true, caseSensitive: true);
  return data
          ?.replaceAll(regExp, "")
          ?.replaceAll("&nbsp;", " ")
          ?.replaceAll("&amp;", "&")
          ?.replaceAll("&quot;", "\"")
          ?.replaceAll("&#39;", "\'")
          ?.replaceAll("&rsquo;", "'") ??
      "N/A";
}

// String extensions
extension StringExtension on String {
  String toStudlyCase() {
    if (this != null) {
      try {
        String result = '';
        final data = this
            .split(' ')
            .map((e) => e[0].toUpperCase() + e.substring(1).toLowerCase())
            .toList();
        data.forEach((word) {
          int index = data.indexOf(word);
          if (index < data.length) {
            result += '$word ';
          } else {
            result += '$word';
          }
        });
        return result;
      } catch (e) {
        return this;
      }
    } else
      return this;
  }

  double toDouble() {
    return double.tryParse('$this') ?? 0.0;
  }
}

// double extensions
extension DoubleExtension on double {
  String toINR([int fractionDigit = 2]) {
    if (this == 0) {
      return '0';
    }
    String fraction = '';
    for (int i = 0; i < fractionDigit; i++) {
      fraction += '0';
    }
    final toINR =  NumberFormat("#,##0.$fraction", "en_US");
    return toINR.format(this);
  }
}
