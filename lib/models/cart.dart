import 'package:flutter/foundation.dart';
import 'package:meta/meta.dart';

import 'shoe.dart';

@immutable
class Cart {
  final String userId;
  final List<Shoe> shoes;

  Cart({
    required this.userId,
    required this.shoes,
  });

  factory Cart.fromJson(Map<String, dynamic> json) {
    final shoes =
        (json['shoes'] as List).map((item) => Shoe.fromJson(item)).toList();

    return Cart(
      userId: json['userId'] as String,
      shoes: shoes,
    );
  }

  @override
  String toString() {
    return 'Cart(userId: $userId, shoes: $shoes)';
  }

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is Cart &&
          runtimeType == other.runtimeType &&
          userId == other.userId &&
          listEquals(shoes, other.shoes);

  @override
  int get hashCode => userId.hashCode ^ shoes.hashCode;

  List<Shoe> _items = [];

  void addItem(Shoe shoe) {
    _items.add(shoe);
  }

  void removeItem(Shoe shoe) {
    _items.remove(shoe);
  }

  double getTotalPrice() {
    double totalPrice = 0.0;
    for (Shoe shoe in _items) {
      totalPrice += shoe.price;
    }
    return totalPrice;
  }

  bool isEmpty() {
    return _items.isEmpty;
  }

  void clear() {
    _items.clear();
  }

  List<Shoe> get items => _items;
}
