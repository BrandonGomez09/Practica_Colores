import 'package:device_preview/device_preview.dart';
import 'package:flutter/material.dart';
import 'package:practica_navegacion/config/theme/app_theme.dart';
import 'package:practica_navegacion/features/color_scheme_page/presentation/pages/color_scheme_page.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      locale: DevicePreview.locale(context),
      builder: DevicePreview.appBuilder,

      theme: AppTheme.lightTheme,
      darkTheme: AppTheme.darkTheme,

      themeMode: ThemeMode.system,
      debugShowCheckedModeBanner: false,
      home: const ColorSchemePage(),
    );
  }
}