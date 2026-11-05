import 'package:flutter/material.dart';
import '../theme/neon_theme.dart';

class MapScreen extends StatelessWidget {
  const MapScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            NeonGlow(
              color: NeonColors.neonGreen,
              child: Text(
                'LEARNCODE',
                style: TextStyle(
                  fontSize: 32,
                  fontWeight: FontWeight.bold,
                  color: NeonColors.neonGreen,
                  letterSpacing: 4,
                ),
              ),
            ),
            const SizedBox(height: 16),
            const Text(
              'Карта уровней появится здесь',
              style: TextStyle(color: NeonColors.textSecondary),
            ),
          ],
        ),
      ),
    );
  }
}