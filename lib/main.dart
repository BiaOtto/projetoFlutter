import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'providers/bouquet_provider.dart';
import 'screens/welcome_screen.dart';
import 'screens/login_screen.dart';
import 'screens/register_screen.dart';
import 'screens/bouquet_selection_screen.dart';
import 'screens/favorites_screen.dart';

void main() {
  runApp(
    ChangeNotifierProvider(
      create: (_) => BouquetProvider(),
      child: MyApp(),
    ),
  );
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'O Cravo e a Rosa',
      debugShowCheckedModeBanner: false,
      initialRoute: '/',
      routes: {
        '/': (context) => WelcomeScreen(),
        '/login': (context) => LoginScreen(),
        '/register': (context) => RegisterScreen(),
        '/selection': (context) => BouquetSelectionScreen(),
        '/favorites': (context) => FavoritesScreen(),
      },
    );
  }
}
