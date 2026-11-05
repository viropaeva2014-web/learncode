import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class NeonColors {
  // Фон
  static const Color background = Color(0xFF0A0A0F);
  static const Color surface = Color(0xFF14141F);
  static const Color surfaceLight = Color(0xFF1E1E2E);

  // Неон
  static const Color neonGreen = Color(0xFF00FF9C);
  static const Color neonPurple = Color(0xFFB026FF);
  static const Color neonCyan = Color(0xFF00E5FF);
  static const Color neonRed = Color(0xFFFF2E63);
  static const Color neonYellow = Color(0xFFFFEA00);

  // Текст
  static const Color textPrimary = Color(0xFFE0E0E0);
  static const Color textSecondary = Color(0xFF8A8A9E);
  static const Color textDim = Color(0xFF4A4A5E);
}

class NeonTheme {
  static ThemeData dark() {
    final base = ThemeData.dark(useMaterial3: true);

    return base.copyWith(
      scaffoldBackgroundColor: NeonColors.background,
      colorScheme: const ColorScheme.dark(
        primary: NeonColors.neonGreen,
        secondary: NeonColors.neonPurple,
        tertiary: NeonColors.neonCyan,
        surface: NeonColors.surface,
        error: NeonColors.neonRed,
        onPrimary: NeonColors.background,
        onSecondary: NeonColors.textPrimary,
        onSurface: NeonColors.textPrimary,
      ),
      textTheme: GoogleFonts.rajdhaniTextTheme(base.textTheme).apply(
        bodyColor: NeonColors.textPrimary,
        displayColor: NeonColors.textPrimary,
      ),
      appBarTheme: AppBarTheme(
        backgroundColor: NeonColors.background,
        elevation: 0,
        centerTitle: true,
        titleTextStyle: GoogleFonts.orbitron(
          color: NeonColors.neonGreen,
          fontSize: 20,
          fontWeight: FontWeight.bold,
          letterSpacing: 2,
        ),
      ),
      elevatedButtonTheme: ElevatedButtonThemeData(
        style: ElevatedButton.styleFrom(
          backgroundColor: NeonColors.neonGreen,
          foregroundColor: NeonColors.background,
          padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 14),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(12),
          ),
          textStyle: GoogleFonts.rajdhani(
            fontSize: 16,
            fontWeight: FontWeight.bold,
            letterSpacing: 1,
          ),
        ),
      ),
      inputDecorationTheme: InputDecorationTheme(
        filled: true,
        fillColor: NeonColors.surface,
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(12),
          borderSide: const BorderSide(color: NeonColors.textDim),
        ),
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(12),
          borderSide: const BorderSide(color: NeonColors.textDim),
        ),
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(12),
          borderSide: const BorderSide(color: NeonColors.neonGreen, width: 2),
        ),
        labelStyle: const TextStyle(color: NeonColors.textSecondary),
        hintStyle: const TextStyle(color: NeonColors.textDim),
      ),
    );
  }
}

/// Виджет с неоновым свечением вокруг ребёнка
class NeonGlow extends StatelessWidget {
  final Widget child;
  final Color color;
  final double blur;
  final double spread;

  const NeonGlow({
    super.key,
    required this.child,
    this.color = NeonColors.neonGreen,
    this.blur = 20,
    this.spread = 1,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(12),
        boxShadow: [
          BoxShadow(
            color: color.withOpacity(0.5),
            blurRadius: blur,
            spreadRadius: spread,
          ),
        ],
      ),
      child: child,
    );
  }
}