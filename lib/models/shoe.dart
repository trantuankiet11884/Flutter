import 'package:meta/meta.dart';

@immutable
class Shoe {
  final int id;
  final String name;
  final String brand;
  final String imageUrl;
  final double price;
  final String color;
  final String description;

  const Shoe({
    required this.id,
    required this.name,
    required this.brand,
    required this.imageUrl,
    required this.price,
    required this.color,
    required this.description,
  });

  factory Shoe.fromJson(Map<String, dynamic> json) {
    return Shoe(
      id: json['name'] as int,
      name: json['name'] as String,
      brand: json['brand'] as String,
      imageUrl: json['imageUrl'] as String,
      price: json['price'] as double,
      color: json['color'] as String,
      description: json['description'] as String,
    );
  }

  @override
  String toString() {
    return 'Shoe(name: $name, brand: $brand, imageUrl: $imageUrl, price: $price, color: $color)';
  }

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is Shoe &&
          runtimeType == other.runtimeType &&
          name == other.name &&
          brand == other.brand &&
          imageUrl == other.imageUrl &&
          price == other.price &&
          color == other.color;

  @override
  int get hashCode =>
      name.hashCode ^
      brand.hashCode ^
      imageUrl.hashCode ^
      price.hashCode ^
      color.hashCode;

  toMap() {}
}
