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
    final bouquets = Provider.of<BouquetProvider>(context).items;

    return Scaffold(
      appBar: AppBar(
        title: const Text('Selecione um Buquê'),
        actions: [
          IconButton(
            icon: const Icon(Icons.favorite),
            onPressed: () {
              Navigator.push(context, MaterialPageRoute(builder: (_) => const FavoritesScreen()));
            },
          ),
        ],
      ),
      body: ListView.builder(
        itemCount: bouquets.length,
        itemBuilder: (ctx, i) {
          return BouquetCard(
            bouquet: bouquets[i],
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (_) => BouquetDetailScreen(bouquetId: bouquets[i].id),
                ),
              );
            },
          );
        },
      ),
    );
  }
}
