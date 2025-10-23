import 'package:flutter/material.dart';

class ColorCard extends StatelessWidget {
  final String colorName;
  final Color color;

  const ColorCard({
    super.key,
    required this.colorName,
    required this.color,
  });


  bool _isColorDark(Color color) {
    return color.computeLuminance() < 0.5;
  }

  @override
  Widget build(BuildContext context) {
    final textColor = _isColorDark(color) ? Colors.white : Colors.black;

    return Container(
      padding: const EdgeInsets.all(16.0),
      decoration: BoxDecoration(
          color: color,
          borderRadius: BorderRadius.circular(8.0),
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