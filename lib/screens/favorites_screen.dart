import 'package:flutter/material.dart';

class FavoritesScreen extends StatelessWidget {
  const FavoritesScreen({super.key});

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
              const Text("BUQUÊS FAVORITOS", style: TextStyle(fontSize: 24)),
              const SizedBox(height: 20),
              const TextField(
                readOnly: true,
                decoration: InputDecoration(hintText: "Buquê girassol"),
              ),
              const SizedBox(height: 12),
              const TextField(
                readOnly: true,
                decoration: InputDecoration(hintText: "Buquê rosa"),
              ),
              const Spacer(),
              ElevatedButton(
                onPressed: () => Navigator.pushNamed(context, '/select'),
                child: const Text("Voltar para seleção de produto"),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
