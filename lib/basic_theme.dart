import 'package:flutter/material.dart';

ThemeData basicTheme() {
  return ThemeData(
    primaryColor: Colors.blue, // Измените цвета по своему усмотрению
    accentColor: Colors.orange,
    scaffoldBackgroundColor: Colors.white,
    appBarTheme: AppBarTheme(
      color: Colors.blue,
    ),
    // Добавьте другие настройки темы, если необходимо
  );
}
