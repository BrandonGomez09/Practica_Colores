// lib/features/color_scheme_page/presentation/widgets/demonstration_group_widget.dart
import 'package:flutter/material.dart';

class DemonstrationGroupWidget extends StatelessWidget {
  final String title;
  final Widget child;

  const DemonstrationGroupWidget({
    super.key,
    required this.title,
    required this.child,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 24.0), // Espacio debajo de cada grupo
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            title,
            style: Theme.of(context).textTheme.titleLarge,
          ),
          const Divider(height: 16),
          // El widget hijo contiene los elementos de demostración
          child,
        ],
      ),
    );
  }
}