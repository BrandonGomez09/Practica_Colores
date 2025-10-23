// lib/features/color_scheme_page/presentation/page/color_scheme_page.dart
import 'package:flutter/material.dart';
import 'package:practica_navegacion/features/color_scheme_page/presentation/widgets/demonstration_group_widget.dart';

class ColorSchemePage extends StatelessWidget {
  const ColorSchemePage({super.key});

  @override
  Widget build(BuildContext context) {
    // Obtenemos el esquema de colores del tema actual
    final colors = Theme.of(context).colorScheme;

    return Scaffold(
      appBar: AppBar(
        title: const Text('Demostración de Colores'),
        backgroundColor: colors.surfaceContainer,
      ),
      body: ListView(
        padding: const EdgeInsets.all(16.0),
        children: [
          // --- GRUPO DE COLORES PRIMARIOS ---
          DemonstrationGroupWidget(
            title: 'Colores Primarios',
            // Usamos una Columna para apilar los ejemplos de forma simple
            child: Column(
              children: [
                // Ejemplo para primary y onPrimary
                ElevatedButton(
                  onPressed: () {},
                  child: const Text('Botón (usa primary y onPrimary)'),
                ),
                const SizedBox(height: 8),
                // Ejemplo para primaryContainer y onPrimaryContainer
                Container(
                  width: double.infinity,
                  padding: const EdgeInsets.all(16),
                  color: colors.primaryContainer,
                  child: Text(
                    'Contenedor (usa primaryContainer y onPrimaryContainer)',
                    style: TextStyle(color: colors.onPrimaryContainer),
                    textAlign: TextAlign.center,
                  ),
                ),
              ],
            ),
          ),

          // --- GRUPO DE COLORES SECUNDARIOS ---
          DemonstrationGroupWidget(
            title: 'Colores Secundarios',
            child: Column(
              children: [
                // Ejemplo para secondary
                FloatingActionButton(
                  onPressed: () {},
                  backgroundColor: colors.secondary, // Usamos secondary
                  child: const Icon(Icons.add),
                ),
                const SizedBox(height: 8),
                // Ejemplo para secondaryContainer y onSecondaryContainer
                Container(
                  width: double.infinity,
                  padding: const EdgeInsets.all(16),
                  color: colors.secondaryContainer,
                  child: Text(
                    'Contenedor (usa secondaryContainer y onSecondaryContainer)',
                    style: TextStyle(color: colors.onSecondaryContainer),
                    textAlign: TextAlign.center,
                  ),
                ),
              ],
            ),
          ),

          // --- GRUPO DE COLORES TERCIARIOS ---
          DemonstrationGroupWidget(
            title: 'Colores Terciarios',
            child: Column(
              children: [
                // Ejemplo para tertiary
                Icon(
                  Icons.star,
                  color: colors.tertiary,
                  size: 40,
                ),
                const SizedBox(height: 8),
                // Ejemplo para tertiaryContainer y onTertiaryContainer
                Container(
                  width: double.infinity,
                  padding: const EdgeInsets.all(16),
                  color: colors.tertiaryContainer,
                  child: Text(
                    'Contenedor (usa tertiaryContainer y onTertiaryContainer)',
                    style: TextStyle(color: colors.onTertiaryContainer),
                    textAlign: TextAlign.center,
                  ),
                ),
              ],
            ),
          ),

          // --- GRUPO DE COLORES DE SUPERFICIE Y FONDO ---
          DemonstrationGroupWidget(
            title: 'Superficies y Fondos',
            child: Column(
              children: [
                // Ejemplo de surface y onSurface
                Card(
                  child: Padding(
                    padding: const EdgeInsets.all(16.0),
                    child: Text(
                      'Esta tarjeta usa "surface" y "onSurface"',
                      textAlign: TextAlign.center,
                      style: TextStyle(color: colors.onSurface),
                    ),
                  ),
                ),
                const SizedBox(height: 8),
                // Ejemplo de background y onBackground
                Text(
                  'El fondo de esta página es "background". Este texto usa "onBackground".',
                  textAlign: TextAlign.center,
                  style: TextStyle(color: colors.onBackground),
                ),
              ],
            ),
          ),

          // --- GRUPO DE COLORES DE ERROR ---
          DemonstrationGroupWidget(
            title: 'Errores',
            child: Column(
              children: [
                // Ejemplo de error
                Icon(
                  Icons.error,
                  color: colors.error,
                  size: 40,
                ),
                const SizedBox(height: 8),
                // Ejemplo de errorContainer y onErrorContainer
                Container(
                  width: double.infinity,
                  padding: const EdgeInsets.all(16),
                  color: colors.errorContainer,
                  child: Text(
                    'Contenedor (usa errorContainer y onErrorContainer)',
                    style: TextStyle(color: colors.onErrorContainer),
                    textAlign: TextAlign.center,
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}