import 'package:flutter/material.dart';
import '../models/bouquet.dart';

class BouquetProvider with ChangeNotifier {
  final List<Bouquet> _items = [
    Bouquet(
      id: '1',
      name: 'Buquê Girassol',
      description: 'Um girassol vibrante, símbolo de alegria.',
      price: 45.0,
      imageAsset: 'assets/Girassol.jpg',
    ),
    Bouquet(
      id: '2',
      name: 'Buquê Rosa',
      description: 'Clássico buquê de rosas vermelhas.',
      price: 50.0,
      imageAsset: 'assets/Rosa.jpg',
    ),
    Bouquet(
      id: '3',
      name: 'Buquê Lírio',
      description: 'Um lírio branco elegante, símbolo de pureza.',
      price: 55.0,
      imageAsset: 'assets/Lirio.jpg',
    ),
    Bouquet(
      id: '4',
      name: 'Buquê Tulipa',
      description: 'Tulipas coloridas, simbolizando carinho.',
      price: 60.0,
      imageAsset: 'assets/Tulipa.jpg',
    ),
  ];

  // Retorna uma cópia da lista de todos os buquês
  List<Bouquet> get items => List.unmodifiable(_items);

  // Retorna apenas os buquês marcados como favoritos
  List<Bouquet> get favorites =>
      _items.where((b) => b.isFavorite).toList();

  // Busca um buquê pelo ID
  Bouquet findById(String id) =>
      _items.firstWhere((b) => b.id == id);

  // Alterna o status de favorito de um buquê e notifica listeners
  void toggleFavorite(String id) {
    final index = _items.indexWhere((b) => b.id == id);
    if (index == -1) return;

    _items[index] = _items[index].copyWith(
      isFavorite: !_items[index].isFavorite,
    );

    notifyListeners();
  }
}
