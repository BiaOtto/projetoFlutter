import 'package:flutter/material.dart';
import '../models/bouquet.dart';
import '../screens/bouquet_detail_screen.dart';

class BouquetCard extends StatelessWidget {
  final Bouquet bouquet;

  BouquetCard({required this.bouquet});

  @override
  Widget build(BuildContext context) {
    return Card(
      child: ListTile(
        leading: Image.network(bouquet.imageUrl),
        title: Text(bouquet.name),
        subtitle: Text('R\$ ${bouquet.price.toStringAsFixed(2)}'),
        onTap: () {
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => BouquetDetailScreen(bouquet: bouquet),
            ),
          );
        },
      ),
    );
  }
}
