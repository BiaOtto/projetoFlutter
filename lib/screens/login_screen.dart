import 'package:flutter/material.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(32),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              const Align(alignment: Alignment.centerLeft, child: BackButton()),
              Image.asset('assets/logo.png', height: 120),
              const SizedBox(height: 16),
              const Text(
                "BEM-VINDO DE VOLTA!",
                style: TextStyle(fontSize: 24, fontWeight: FontWeight.w500),
              ),
              const SizedBox(height: 20),
              const TextField(decoration: InputDecoration(hintText: 'Email')),
              const SizedBox(height: 12),
              const TextField(
                obscureText: true,
                decoration: InputDecoration(hintText: 'Senha'),
              ),
              const SizedBox(height: 20),
              ElevatedButton(
                onPressed: () => Navigator.pushNamed(context, '/select'),
                child: const Text("Entrar"),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
