// lib/myapp.dart
import 'package:device_preview/device_preview.dart';
import 'package:flutter/material.dart';
import 'package:practica_navegacion/features/color_scheme_page/presentation/pages/color_scheme_page.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      locale: DevicePreview.locale(context),
      builder: DevicePreview.appBuilder,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(
          seedColor: Colors.green, // Puedes cambiar este color semilla
          brightness: Brightness.light,
        ),
        useMaterial3: true,
      ),
      darkTheme: ThemeData(
        colorScheme: ColorScheme.fromSeed(
          seedColor: Colors.green, // Puedes cambiar este color semilla
          brightness: Brightness.dark,
        ),
        useMaterial3: true,
      ),
      themeMode: ThemeMode.system, // Usa el tema del sistema (claro/oscuro)
      debugShowCheckedModeBanner: false,
      home: const ColorSchemePage(),
    );
  }
}