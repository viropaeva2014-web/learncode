import 'package:flutter/material.dart';
import '../theme/neon_theme.dart';

class AchievementsScreen extends StatelessWidget {
  const AchievementsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            NeonGlow(
              color: NeonColors.neonPurple,
              child: Text(
                '🏆 ЗНАЧКИ',
                style: TextStyle(
                  fontSize: 28,
                  color: NeonColors.neonPurple,
                  fontWeight: FontWeight.bold,
                  letterSpacing: 3,
                ),
              ),
            ),
            const SizedBox(height: 16),
            const Text(
              'Твои достижения появятся здесь',
              style: TextStyle(color: NeonColors.textSecondary),
            ),
          ],
        ),
      ),
    );
  }
}