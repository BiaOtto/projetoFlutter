import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../providers/bouquet_provider.dart';
import '../widgets/bouquet_card.dart';
import 'bouquet_detail_screen.dart';
import 'favorites_screen.dart';

class BouquetSelectionScreen extends StatelessWidget {
  const BouquetSelectionScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final bouquets = context.watch<BouquetProvider>().items;

    return Scaffold(
      appBar: AppBar(
        title: const Text('Selecione um Buquê'),
        actions: [
          IconButton(
            icon: const Icon(Icons.favorite),
            tooltip: 'Favoritos',
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (_) => const FavoritesScreen()),
              );
            },
          ),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(16),
        child: bouquets.isEmpty
            ? const Center(
                child: Text(
                  'Nenhum buquê disponível no momento.',
                  style: TextStyle(fontSize: 16),
                  textAlign: TextAlign.center,
                ),
              )
            : ListView.separated(
                itemCount: bouquets.length,
                separatorBuilder: (_, __) => const SizedBox(height: 12),
                itemBuilder: (context, index) {
                  final bouquet = bouquets[index];
                  return BouquetCard(
                    bouquet: bouquet,
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (_) => BouquetDetailScreen(bouquetId: bouquet.id),
                        ),
                      );
                    },
                  );
                },
              ),
      ),
    );
  }
}
