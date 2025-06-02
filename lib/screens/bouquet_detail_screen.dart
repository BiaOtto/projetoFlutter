import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../models/bouquet.dart';
import '../providers/bouquet_provider.dart';

class BouquetDetailScreen extends StatelessWidget {
  final Bouquet bouquet;

  BouquetDetailScreen({required this.bouquet});

  @override
  Widget build(BuildContext context) {
    final bouquetProvider = Provider.of<BouquetProvider>(context);

    return Scaffold(
      appBar: AppBar(title: Text(bouquet.name)),
      body: Padding(
        padding: EdgeInsets.all(16.0),
        child: Column(
          children: [
            Image.network(bouquet.imageUrl),
            SizedBox(height: 16),
            Text(bouquet.description),
            SizedBox(height: 16),
            Text('Preço: R\$ ${bouquet.price.toStringAsFixed(2)}'),
            ElevatedButton(
              child: Text('Salvar'),
              onPressed: () {
                bouquetProvider.toggleFavorite(bouquet);
              },
            ),
          ],
        ),
      ),
    );
  }
}
