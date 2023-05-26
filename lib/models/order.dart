import 'package:flutter/foundation.dart';
import 'package:meta/meta.dart';

import 'shoe.dart';

@immutable
class Order {
  final String orderId;
  final String userId;
  final List<Shoe> shoes;
  final double totalPrice;

  const Order({
    required this.orderId,
    required this.userId,
    required this.shoes,
    required this.totalPrice,
  });

  factory Order.fromJson(Map<String, dynamic> json) {
    final shoes =
        (json['shoes'] as List).map((item) => Shoe.fromJson(item)).toList();

    return Order(
      orderId: json['orderId'] as String,
      userId: json['userId'] as String,
      shoes: shoes,
      totalPrice: json['totalPrice'] as double,
    );
  }

  Map<String, dynamic> toMap() {
    return {
      'orderId': orderId,
      'userId': userId,
      'shoes': shoes.map((shoe) => shoe.toMap()).toList(),
      'totalPrice': totalPrice,
    };
  }

  @override
  String toString() {
    return 'Order(orderId: $orderId, userId: $userId, shoes: $shoes, totalPrice: $totalPrice)';
  }

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is Order &&
          runtimeType == other.runtimeType &&
          orderId == other.orderId &&
          userId == other.userId &&
          listEquals(shoes, other.shoes) &&
          totalPrice == other.totalPrice;

  @override
  int get hashCode =>
      orderId.hashCode ^ userId.hashCode ^ shoes.hashCode ^ totalPrice.hashCode;
}
