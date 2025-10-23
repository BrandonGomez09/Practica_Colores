import 'package:flutter/material.dart';
import 'package:practica_navegacion/features/color_scheme_page/presentation/widgets/demonstration_group_widget.dart';

class ColorSchemePage extends StatelessWidget {
  const ColorSchemePage({super.key});

  @override
  Widget build(BuildContext context) {
    final colors = Theme.of(context).colorScheme;
    final textTheme = Theme.of(context).textTheme;


    final List<Widget> textStyleWidgets = [
      _TextStyleExample(name: 'displayLarge', style: textTheme.displayLarge),
      _TextStyleExample(name: 'displayMedium', style: textTheme.displayMedium),
      _TextStyleExample(name: 'displaySmall', style: textTheme.displaySmall),
      _TextStyleExample(name: 'headlineLarge', style: textTheme.headlineLarge),
      _TextStyleExample(name: 'headlineMedium', style: textTheme.headlineMedium),
      _TextStyleExample(name: 'headlineSmall', style: textTheme.headlineSmall),
      _TextStyleExample(name: 'titleLarge', style: textTheme.titleLarge),
      _TextStyleExample(name: 'titleMedium', style: textTheme.titleMedium),
      _TextStyleExample(name: 'titleSmall', style: textTheme.titleSmall),
      _TextStyleExample(name: 'bodyLarge', style: textTheme.bodyLarge),
      _TextStyleExample(name: 'bodyMedium', style: textTheme.bodyMedium),
      _TextStyleExample(name: 'bodySmall', style: textTheme.bodySmall),
      _TextStyleExample(name: 'labelLarge', style: textTheme.labelLarge),
      _TextStyleExample(name: 'labelMedium', style: textTheme.labelMedium),
      _TextStyleExample(name: 'labelSmall', style: textTheme.labelSmall),
    ];



    final List<Widget> typographyWidgetsWithSeparators = [];
    for (int i = 0; i < textStyleWidgets.length; i++) {
      typographyWidgetsWithSeparators.add(textStyleWidgets[i]);

      if (i < textStyleWidgets.length - 1) {
        typographyWidgetsWithSeparators.add(const Divider(height: 24));
      }
    }


    return Scaffold(
      appBar: AppBar(
        title: const Text('Colores y Tipografías'),
        backgroundColor: colors.surfaceContainer,
      ),

      body: ListView(
        padding: const EdgeInsets.all(16.0),
        children: [

          DemonstrationGroupWidget(
            title: 'Colores Primarios',
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                ElevatedButton(
                  onPressed: () {},
                  child: const Text('Botón (Primary)'),
                ),
                Container(
                  color: colors.primaryContainer,
                  padding: const EdgeInsets.all(8),
                  child: Text(
                    'Container (Primary)',
                    style: TextStyle(color: colors.onPrimaryContainer),
                  ),
                ),
              ],
            ),
          ),

          DemonstrationGroupWidget(
            title: 'Colores Secundarios',
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Chip(
                  label: const Text('Chip (Secondary)'),
                  backgroundColor: colors.secondaryContainer,
                  labelStyle: TextStyle(color: colors.onSecondaryContainer),
                ),
                Icon(Icons.add_task, color: colors.secondary),
              ],
            ),
          ),

          DemonstrationGroupWidget(
            title: 'Colores Terciarios',
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Icon(Icons.star, color: colors.tertiary, size: 30),
                Container(
                  color: colors.tertiaryContainer,
                  padding: const EdgeInsets.all(8),
                  child: Text(
                    'Container (Tertiary)',
                    style: TextStyle(color: colors.onTertiaryContainer),
                  ),
                ),
              ],
            ),
          ),

          DemonstrationGroupWidget(
            title: 'Superficies y Errores',
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Card(
                  color: colors.surface,
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text('Card (Surface)', style: TextStyle(color: colors.onSurface)),
                  ),
                ),
                Container(
                  color: colors.errorContainer,
                  padding: const EdgeInsets.all(8),
                  child: Text(
                    'Error',
                    style: TextStyle(color: colors.onErrorContainer),
                  ),
                ),
                Icon(Icons.error, color: colors.error, size: 30),
              ],
            ),
          ),

          const Divider(height: 48, thickness: 1),

          Padding(
            padding: const EdgeInsets.only(bottom: 16.0),
            child: Text(
              'Tipografías (TextTheme)',
              style: textTheme.headlineSmall,
            ),
          ),

          ...typographyWidgetsWithSeparators,

        ],
      ),
    );
  }
}

class _TextStyleExample extends StatelessWidget {
  final String name;
  final TextStyle? style;

  const _TextStyleExample({required this.name, this.style});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          name,
          style: Theme.of(context).textTheme.bodySmall?.copyWith(
              color: Theme.of(context).colorScheme.primary,
              fontFamily: 'monospace'
          ),
        ),
        const SizedBox(height: 4),
        Text(
          'Ejemplo de texto ($name)',
          style: style,
        ),
      ],
    );
  }
}