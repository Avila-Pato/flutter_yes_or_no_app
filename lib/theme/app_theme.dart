import 'package:flutter/material.dart';

const Color _customColor = Color(0xFF49149F);

const List<Color> _colorListThemes = [
  _customColor,
  Colors.red,
  Colors.green,
  Colors.blue,
  Colors.yellow,
  Colors.purple,
  Colors.orange,
];

class AppTheme {
  final int selectedcColor;

  AppTheme({this.selectedcColor = 0})
    : assert(
        selectedcColor >= 0,
        'Color must be between 0 and ${selectedcColor >= 0 && selectedcColor < _colorListThemes.length - 1}',
      );

  ThemeData theme() {
    return ThemeData(
      useMaterial3: true,
      colorSchemeSeed: _colorListThemes[selectedcColor],
      appBarTheme: const AppBarTheme(backgroundColor: _customColor),
      brightness: Brightness.dark,
    );
  }
}
