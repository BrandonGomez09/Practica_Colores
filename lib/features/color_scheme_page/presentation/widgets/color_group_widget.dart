// lib/features/color_scheme_page/presentation/widgets/color_group_widget.dart
import 'package:flutter/material.dart';
import 'package:practica_navegacion/features/color_scheme_page/presentation/widgets/color_card.dart';

class ColorGroupWidget extends StatelessWidget {
  final String groupTitle;
  final Map<String, Color> colorData;

  const ColorGroupWidget({
    super.key,
    required this.groupTitle,
    required this.colorData,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          groupTitle,
          style: Theme.of(context).textTheme.titleLarge,
        ),
        const SizedBox(height: 8),
        LayoutBuilder(
          builder: (context, constraints) {
            // Usamos GridView para un diseño fluido y adaptable
            return GridView.builder(
              shrinkWrap: true, // Para que no ocupe espacio infinito
              physics: const NeverScrollableScrollPhysics(), // Deshabilita el scroll de la GridView
              gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                // Cambia el número de columnas según el ancho disponible
                crossAxisCount: constraints.maxWidth > 600 ? 2 : 1,
                crossAxisSpacing: 8.0,
                mainAxisSpacing: 8.0,
                childAspectRatio: 5 / 1, // Ajusta la proporción de las tarjetas
              ),
              itemCount: colorData.length,
              itemBuilder: (context, index) {
                final name = colorData.keys.elementAt(index);
                final color = colorData.values.elementAt(index);
                return ColorCard(colorName: name, color: color);
              },
            );
          },
        ),
      ],
    );
  }
}