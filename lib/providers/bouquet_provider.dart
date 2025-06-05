import 'package:flutter/material.dart';
import '../models/bouquet.dart';

class BouquetProvider with ChangeNotifier {
  List<Bouquet> _items = [
    const Bouquet(
      id: '1',
      name: 'Buquê Girassol',
      description: 'Um girassol vibrante, símbolo de alegria.',
      price: 45.0,
      imageAsset: 'assets/Girassol.jpg',
    ),
    const Bouquet(
      id: '2',
      name: 'Buquê Rosa',
      description: 'Clássico buquê de rosas vermelhas.',
      price: 50.0,
      imageAsset: 'assets/Rosa.jpg',
    ),
    const Bouquet(
      id: '3',
      name: 'Buquê Lírio',
      description: 'Um lírio branco elegante, símbolo de pureza.',
      price: 55.0,
      imageAsset: 'assets/Lirio.jpg',
    ),
    const Bouquet(
      id: '4',
      name: 'Buquê Tulipa',
      description: 'Tulipas coloridas, simbolizando carinho.',
      price: 60.0,
      imageAsset: 'assets/Tulipa.jpg',
    ),
  ];

  List<Bouquet> get items => [..._items];

  List<Bouquet> get favorites => _items.where((b) => b.isFavorite).toList();

  Bouquet findById(String id) {
    return _items.firstWhere((b) => b.id == id);
  }

  void toggleFavorite(String id) {
    _items = _items.map((b) {
      if (b.id == id) {
        return b.copyWith(isFavorite: !b.isFavorite);
      }
      return b;
    }).toList();
    notifyListeners();
  }
}
