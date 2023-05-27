import 'package:flutter/material.dart';

import '../models/cart.dart';
import '../models/order.dart';
import '../models/shoe.dart';
import '../service/order_service.dart';

class CheckoutViewModel with ChangeNotifier {
  Cart _cart = Cart(shoes: List<Shoe>.empty(growable: true), userId: '');

  Cart get cart => _cart;

  set cart(Cart cart) {
    _cart = cart;
    notifyListeners();
  }

  String _shippingAddress = '';

  String get shippingAddress => _shippingAddress;

  set shippingAddress(String address) {
    _shippingAddress = address;
    notifyListeners();
  }

  Future<void> placeOrder(String userId) async {
    Order order = Order(userId: userId, orderId: '', shoes: [], totalPrice: 1);
    try {
      if (_cart.items != null) {
        _cart.clear();
        notifyListeners();
      }
    } catch (error) {
      throw error;
    }
  }
}
