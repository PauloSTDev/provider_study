import 'package:flutter/material.dart';

class ThemeController with ChangeNotifier {

  ThemeData _themeData;
  ThemeController(this._themeData);

  getTheme() => _themeData;

  setTheme(ThemeData theme){
    _themeData = theme;
    notifyListeners();
  }




}