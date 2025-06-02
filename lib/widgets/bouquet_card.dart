import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../models/bouquet.dart';
import '../providers/bouquet_provider.dart';

class BouquetCard extends StatelessWidget {
  final Bouquet bouquet;
  final VoidCallback onTap;

  const BouquetCard({super.key, required this.bouquet, required this.onTap});

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: const EdgeInsets.all(10),
      child: Column(
        children: [
          GestureDetector(
            onTap: onTap,
            child: Image.asset(bouquet.imageAsset, height: 180, width: double.infinity, fit: BoxFit.cover),
          ),
          ListTile(
            title: Text(bouquet.name),
            subtitle: Text(bouquet.description),
            trailing: Text('R\$ ${bouquet.price.toStringAsFixed(2)}'),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              IconButton(
                icon: Icon(
                  bouquet.isFavorite ? Icons.favorite : Icons.favorite_border,
                  color: bouquet.isFavorite ? Colors.red : Colors.grey,
                ),
                onPressed: () {
                  Provider.of<BouquetProvider>(context, listen: false).toggleFavorite(bouquet.id);
                },
              ),
            ],
          )
        ],
      ),
    );
  }
}
