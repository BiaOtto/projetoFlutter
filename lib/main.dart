import 'package:flutter/material.dart';
import 'screens/bouquet_selection.dart';
import 'screens/bouquete_detail.dart';
import 'screens/favorites_screen.dart';
import 'screens/login_screen.dart';
import 'screens/register_screen.dart';
import 'screens/welcome_screen.dart';
import 'theme.dart';

void main() {
  runApp(const FlowerApp());
}

class FlowerApp extends StatelessWidget {
  const FlowerApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'O Cravo e a Rosa',
      theme: appTheme,
      debugShowCheckedModeBanner: false,
      initialRoute: '/',
      routes: {
        '/': (context) => const WelcomeScreen(),
        '/login': (context) => const LoginScreen(),
        '/register': (context) => const RegisterScreen(),
        '/select': (context) => const BouquetSelectionScreen(),
        '/detail': (context) => const BouquetDetailScreen(),
        '/favorites': (context) => const FavoritesScreen(),
      },
    );
  }
}
