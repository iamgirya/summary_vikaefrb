import 'package:flutter/material.dart';

class AppTheme {
  static const Color backgroundColor = Color(0xFFE9EFF3);
  static const Color textColor = Color(0xFF2D2D2D);
  static const Color primaryColor = Color(0xFF00A3FF);
  static const Color cardColor = Color(0xFFFFFFFF);

  static final ThemeData theme = ThemeData(
    primaryColor: primaryColor,
    scaffoldBackgroundColor: backgroundColor,
    cardColor: cardColor,
    textTheme: const TextTheme(
      displayLarge: TextStyle(
        fontSize: 48,
        fontWeight: FontWeight.bold,
        color: textColor,
      ),
      displayMedium: TextStyle(
        fontSize: 48,
        fontWeight: FontWeight.bold,
        color: primaryColor,
      ),
      headlineMedium: TextStyle(
        fontSize: 24,
        fontWeight: FontWeight.bold,
        color: textColor,
      ),
      titleLarge: TextStyle(
        fontSize: 20,
        fontWeight: FontWeight.bold,
        color: primaryColor,
      ),
      bodyLarge: TextStyle(fontSize: 16, color: textColor, height: 1.5),
      bodyMedium: TextStyle(fontSize: 14, color: textColor),
    ),
    colorScheme: ColorScheme.fromSeed(
      seedColor: primaryColor,
      background: backgroundColor,
    ),
  );
}
