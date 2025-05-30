import 'package:flutter/material.dart';

class BouquetDetailScreen extends StatelessWidget {
  const BouquetDetailScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final Map<String, String> data =
        ModalRoute.of(context)!.settings.arguments as Map<String, String>;

    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(32),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              const Align(alignment: Alignment.centerLeft, child: BackButton()),
              const SizedBox(height: 12),
              const Text("BUQUÊ SELECIONADO", style: TextStyle(fontSize: 24)),
              const SizedBox(height: 20),
              Image.asset(data['image']!, height: 200),
              const SizedBox(height: 20),
              Text(
                data['name']!,
                style: const TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                ),
              ),
              const SizedBox(height: 12),
              Text(
                data['description']!,
                textAlign: TextAlign.center,
                style: const TextStyle(fontSize: 16),
              ),
              const Spacer(),
              ElevatedButton(
                onPressed: () => Navigator.pushNamed(context, '/favorites'),
                child: const Text("salvar"),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
