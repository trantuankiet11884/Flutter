import 'package:flutter/material.dart';
import '../models/shoe.dart';
import '../models/cart.dart';

class CartViewModel with ChangeNotifier {
  Cart _cart = Cart(shoes: [], userId: '');

  Cart get cart => _cart;

  void addToCart(Shoe shoe) {
    _cart.addItem(shoe);
    notifyListeners();
  }

  void removeFromCart(Shoe shoe) {
    _cart.removeItem(shoe);
    notifyListeners();
  }

  double getTotalPrice() {
    return _cart.getTotalPrice();
  }

  bool isEmpty() {
    return _cart.items.isEmpty;
  }

  void clearCart() {
    _cart.clear();
    notifyListeners();
  }
}
