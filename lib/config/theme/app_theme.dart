import 'package:flutter/material.dart';

class AppTheme {
  // Define tu color semilla. Puedes cambiarlo fácilmente aquí.
  static const Color _seedColor = Colors.green;

  // Tema para el modo claro (light)
  static final ThemeData lightTheme = ThemeData(
      useMaterial3: true,
      colorScheme: ColorScheme.fromSeed(
        seedColor: _seedColor,
        brightness: Brightness.light,
      ),
      appBarTheme: const AppBarTheme(
        centerTitle: true,
      )
  );

  // Tema para el modo oscuro (dark)
  static final ThemeData darkTheme = ThemeData(
      useMaterial3: true,
      colorScheme: ColorScheme.fromSeed(
        seedColor: _seedColor,
        brightness: Brightness.dark,
      ),
      appBarTheme: const AppBarTheme(
        centerTitle: true,
      )
  );
}