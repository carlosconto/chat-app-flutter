import 'package:flutter/material.dart';

const Color _customColor = Color(0xFF040E3B);

const List<Color> _colors = [
  _customColor,
  Colors.blue,
  Colors.red,
  Colors.green,
  Colors.purple,
  Colors.orange,
  Colors.pink,
];

class AppTheme {
  ThemeData getTheme(int theme) {
    if (theme < 0 || theme >= _colors.length) {
      assert(false, 'Theme out of range');
    }

    return ThemeData(
      useMaterial3: true,
      colorSchemeSeed: _colors[theme],
    );
  }
}
