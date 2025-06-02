import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../providers/bouquet_provider.dart';

class BouquetDetailScreen extends StatelessWidget {
  final String bouquetId;

  const BouquetDetailScreen({super.key, required this.bouquetId});

  @override
  Widget build(BuildContext context) {
    final bouquet = Provider.of<BouquetProvider>(context).findById(bouquetId);

    return Scaffold(
      appBar: AppBar(
        title: Text(bouquet.name),
        actions: [
          IconButton(
            icon: Icon(
              bouquet.isFavorite ? Icons.favorite : Icons.favorite_border,
              color: bouquet.isFavorite ? Colors.red : Colors.white,
            ),
            onPressed: () {
              Provider.of<BouquetProvider>(context, listen: false).toggleFavorite(bouquet.id);
            },
          )
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Image.asset(bouquet.imageAsset, height: 300, width: double.infinity, fit: BoxFit.cover),
            const SizedBox(height: 20),
            Text(bouquet.name, style: const TextStyle(fontSize: 28, fontWeight: FontWeight.bold)),
            const SizedBox(height: 10),
            Text(bouquet.description, style: const TextStyle(fontSize: 18), textAlign: TextAlign.center),
            const SizedBox(height: 10),
            Text('R\$ ${bouquet.price.toStringAsFixed(2)}', style: const TextStyle(fontSize: 20, color: Colors.green)),
          ],
        ),
      ),
    );
  }
}
