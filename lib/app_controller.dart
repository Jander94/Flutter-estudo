import 'package:flutter/material.dart';

class AppController extends ChangeNotifier {
  static AppController appControllerInstance = AppController();

  bool isDarkTheme = false;

  changeTheme() {
    isDarkTheme = !isDarkTheme;
    notifyListeners();
  }
}
