import 'package:flutter/material.dart';
import '../widgets/custom_responsive_card.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Mockup 4: Card Responsiva'),
        backgroundColor: Colors.blue.shade700,
        foregroundColor: Colors.white,
      ),
      backgroundColor: Colors.grey[200],
      body: const Center(
        child: CustomResponsiveCard(),
      ),
    );
  }
}