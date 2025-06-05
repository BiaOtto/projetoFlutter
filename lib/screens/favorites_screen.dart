import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../providers/bouquet_provider.dart';
import '../widgets/bouquet_card.dart';
import 'bouquet_detail_screen.dart';

class FavoritesScreen extends StatelessWidget {
  const FavoritesScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final favorites = context.watch<BouquetProvider>().favorites;

    return Scaffold(
      appBar: AppBar(title: const Text('Buquês Favoritos')),
      body: Padding(
        padding: const EdgeInsets.all(16),
        child: favorites.isEmpty
            ? const Center(
                child: Text(
                  'Nenhum buquê favorito ainda.',
                  style: TextStyle(fontSize: 16),
                  textAlign: TextAlign.center,
                ),
              )
            : ListView.separated(
                itemCount: favorites.length,
                separatorBuilder: (_, __) => const SizedBox(height: 12),
                itemBuilder: (context, index) {
                  final bouquet = favorites[index];
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
