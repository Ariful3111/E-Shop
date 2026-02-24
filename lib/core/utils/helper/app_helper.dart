import 'package:flutter/material.dart';

class AppHelper {
  static bool isDarkMode(BuildContext context) {
    return Theme.of(context).brightness == Brightness.dark;
  }
}