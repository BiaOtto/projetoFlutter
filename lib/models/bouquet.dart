class Bouquet {
  final String id;
  final String name;
  final String description;
  final double price;
  final String imageAsset;
  final bool isFavorite;

  const Bouquet({
    required this.id,
    required this.name,
    required this.description,
    required this.price,
    required this.imageAsset,
    this.isFavorite = false,
  });

  Bouquet copyWith({
    String? id,
    String? name,
    String? description,
    double? price,
    String? imageAsset,
    bool? isFavorite,
  }) {
    return Bouquet(
      id: id ?? this.id,
      name: name ?? this.name,
      description: description ?? this.description,
      price: price ?? this.price,
      imageAsset: imageAsset ?? this.imageAsset,
      isFavorite: isFavorite ?? this.isFavorite,
    );
  }
}
