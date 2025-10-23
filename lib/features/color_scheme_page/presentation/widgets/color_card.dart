// lib/features/color_scheme_page/presentation/widgets/color_card.dart
import 'package:flutter/material.dart';

class ColorCard extends StatelessWidget {
  final String colorName;
  final Color color;

  const ColorCard({
    super.key,
    required this.colorName,
    required this.color,
  });

  // Determina si el color de fondo es oscuro para ajustar el color del texto
  bool _isColorDark(Color color) {
    return color.computeLuminance() < 0.5;
  }

  @override
  Widget build(BuildContext context) {
    // El color del texto será blanco o negro dependiendo del fondo para asegurar legibilidad
    final textColor = _isColorDark(color) ? Colors.white : Colors.black;

    return Container(
      padding: const EdgeInsets.all(16.0),
      decoration: BoxDecoration(
          color: color,
          borderRadius: BorderRadius.circular(8.0),
          // Agregamos un borde para colores que puedan confundirse con el fondo de la app
          border: Border.all(color: Theme.of(context).colorScheme.outlineVariant)
      ),
      child: Center(
        child: Text(
          colorName,
          style: TextStyle(
            color: textColor,
            fontWeight: FontWeight.bold,
          ),
          textAlign: TextAlign.center,
        ),
      ),
    );
  }
}