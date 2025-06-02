import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../providers/bouquet_provider.dart';
import '../widgets/bouquet_card.dart';
import 'bouquet_detail_screen.dart';

class FavoritesScreen extends StatelessWidget {
  const FavoritesScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final favorites = Provider.of<BouquetProvider>(context).favorites;

    return Scaffold(
      appBar: AppBar(title: const Text('Buquês Favoritos')),
      body: favorites.isEmpty
          ? const Center(child: Text('Nenhum buquê favorito ainda.'))
          : ListView.builder(
              itemCount: favorites.length,
              itemBuilder: (ctx, i) {
                return BouquetCard(
                  bouquet: favorites[i],
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (_) => BouquetDetailScreen(bouquetId: favorites[i].id),
                      ),
                    );
                  },
                );
              },
            ),
    );
  }
}
