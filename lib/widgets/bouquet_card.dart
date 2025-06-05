import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../models/bouquet.dart';
import '../providers/bouquet_provider.dart';

class BouquetCard extends StatelessWidget {
  final Bouquet bouquet;

  const BouquetCard({super.key, required this.bouquet});

  @override
  Widget build(BuildContext context) {
    final isFavorite = bouquet.isFavorite;

    return Card(
      margin: const EdgeInsets.symmetric(horizontal: 12, vertical: 8),
      elevation: 5,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(16)),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          ClipRRect(
            borderRadius: const BorderRadius.vertical(top: Radius.circular(16)),
            child: Image.asset(
              bouquet.imageAsset,
              height: 200,
              width: double.infinity,
              fit: BoxFit.cover,
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(16),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  bouquet.name,
                  style: const TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                ),
                const SizedBox(height: 4),
                Text(
                  bouquet.description,
                  style: TextStyle(color: Colors.grey[600]),
                ),
                const SizedBox(height: 10),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'R\$ ${bouquet.price.toStringAsFixed(2)}',
                      style: const TextStyle(fontSize: 18, color: Colors.green),
                    ),
                    IconButton(
                      icon: Icon(
                        isFavorite ? Icons.favorite : Icons.favorite_border,
                        color: isFavorite ? Colors.red : Colors.grey,
                      ),
                      onPressed: () {
                        Provider.of<BouquetProvider>(context, listen: false)
                            .toggleFavorite(bouquet.id);
                      },
                    ),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
