class Bouquet {
  final String id;
  final String name;
  final String description;
  final double price;
  final String imageAsset;
  bool isFavorite;

  Bouquet({
    required this.id,
    required this.name,
    required this.description,
    required this.price,
    required this.imageAsset,
    this.isFavorite = false,
  });
}
