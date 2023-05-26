import 'package:flutter/foundation.dart';
import 'package:meta/meta.dart';

import 'shoe.dart';

@immutable
class User {
  final String name;
  final String email;
  final String password;
  final List<Shoe> shoppingCart;

  const User({
    required this.name,
    required this.email,
    required this.password,
    required this.shoppingCart,
  });

  factory User.fromJson(Map<String, dynamic> json) {
    final shoppingCart = (json['shoppingCart'] as List)
        .map((item) => Shoe.fromJson(item))
        .toList();

    return User(
      name: json['name'] as String,
      email: json['email'] as String,
      password: json['password'] as String,
      shoppingCart: shoppingCart,
    );
  }

  @override
  String toString() {
    return 'User(name: $name, email: $email, password: $password, shoppingCart: $shoppingCart)';
  }

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is User &&
          runtimeType == other.runtimeType &&
          name == other.name &&
          email == other.email &&
          password == other.password &&
          listEquals(shoppingCart, other.shoppingCart);

  @override
  int get hashCode =>
      name.hashCode ^
      email.hashCode ^
      password.hashCode ^
      shoppingCart.hashCode;
}
