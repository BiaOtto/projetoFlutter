import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../providers/bouquet_provider.dart';
import '../widgets/bouquet_card.dart';

class BouquetSelectionScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final bouquetProvider = Provider.of<BouquetProvider>(context);
    final bouquets = bouquetProvider.bouquets;

    return Scaffold(
      appBar: AppBar(title: Text('Selecione o Buquê Desejado')),
      body: ListView.builder(
        itemCount: bouquets.length,
        itemBuilder: (context, index) {
          return BouquetCard(bouquet: bouquets[index]);
        },
      ),
    );
  }
}
