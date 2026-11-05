import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import 'theme/neon_theme.dart';
import 'screens/home_shell.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();

  // Неоновая статус-бар
  SystemChrome.setSystemUIOverlayStyle(
    const SystemUiOverlayStyle(
      statusBarColor: Colors.transparent,
      statusBarIconBrightness: Brightness.light,
      systemNavigationBarColor: NeonColors.background,
    ),
  );

  runApp(const LearnCodeApp());
}

class LearnCodeApp extends StatelessWidget {
  const LearnCodeApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'LearnCode',
      debugShowCheckedModeBanner: false,
      theme: NeonTheme.dark(),
      home: const HomeShell(),
    );
  }
}