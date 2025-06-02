import 'package:flutter/material.dart';
import '../models/bouquet.dart';

class BouquetProvider with ChangeNotifier {
  final List<Bouquet> _bouquets = [
    Bouquet(
      name: 'Buquê com 1 Girassol',
      description:
          'Um único girassol vibrante, símbolo de alegria e luz, embalado com papel kraft e fita rústica. Altura aproximada de 40 cm. Perfeito para presentear ou decorar.',
      price: 45.0,
      imageUrl: 'https://via.placeholder.com/150',
    ),
    // Adicione mais buquês conforme necessário
  ];

  final List<Bouquet> _favorites = [];

  List<Bouquet> get bouquets => [..._bouquets];

  List<Bouquet> get favorites => [..._favorites];

  void toggleFavorite(Bouquet bouquet) {
    if (_favorites.contains(bouquet)) {
      _favorites.remove(bouquet);
    } else {
      _favorites.add(bouquet);
    }
    notifyListeners();
  }
}
