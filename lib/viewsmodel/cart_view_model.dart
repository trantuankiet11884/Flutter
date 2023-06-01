import 'package:flutter_application_1/models/cart.dart';
import 'package:flutter_application_1/repository/cart_repo.dart';

class CartViewModel {
  final CartRepository _cartRepository;

  CartViewModel(this._cartRepository);

  Future<List<Cart>> getCart(int userId) async {
    List<Cart> cartItems = await _cartRepository.getCart(userId);
    return cartItems;
  }

  void addToCart(int userId, int productId, int quantity) {
    _cartRepository.addToCart(userId, productId, quantity);
  }

  void removeFromCart(int userId, int productId) {
    _cartRepository.removeFromCart(userId, productId);
  }
}
