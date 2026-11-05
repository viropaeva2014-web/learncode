import 'package:flutter/material.dart';
import '../theme/neon_theme.dart';

class SettingsScreen extends StatelessWidget {
  const SettingsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Padding(
        padding: const EdgeInsets.all(20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            NeonGlow(
              color: NeonColors.neonGreen,
              blur: 12,
              child: Text(
                '⚙️ НАСТРОЙКИ',
                style: TextStyle(
                  fontSize: 22,
                  color: NeonColors.neonGreen,
                  fontWeight: FontWeight.bold,
                  letterSpacing: 2,
                ),
              ),
            ),
            const SizedBox(height: 24),
            NeonGlow(
              child: TextField(
                decoration: const InputDecoration(
                  labelText: 'Имя пользователя',
                  hintText: 'Введи свой ник',
                  prefixIcon: Icon(Icons.person, color: NeonColors.neonGreen),
                ),
              ),
            ),
            const SizedBox(height: 16),
            const Text(
              'Проверка уникальности появится после подключения Supabase',
              style: TextStyle(color: NeonColors.textSecondary, fontSize: 12),
            ),
          ],
        ),
      ),
    );
  }
}