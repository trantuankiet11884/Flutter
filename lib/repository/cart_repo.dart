import 'package:flutter_application_1/helpers/db_helper.dart';
import 'package:flutter_application_1/models/cart.dart';

class CartRepository {
  final DatabaseProvider _databaseProvider;

  CartRepository(this._databaseProvider);

  Future<List<Cart>> getCart(int userId) async {
    final db = await _databaseProvider.getDatabase();
    final List<Map<String, dynamic>> maps = await db!.query(
      'Cart',
      where: 'user_id = ?',
      whereArgs: [userId],
    );
    List<Cart> cartItems = List.generate(maps.length, (i) {
      return Cart(
        id: maps[i]['id'],
        user_id: maps[i]['user_id'],
        product_id: maps[i]['product_id'],
        quantity: maps[i]['quantity'],
      );
    });
    return cartItems;
  }

  Future<void> addToCart(int userId, int productId, int quantity) async {
    final db = await _databaseProvider.getDatabase();
    await db!.insert(
      'Cart',
      {'user_id': userId, 'product_id': productId, 'quantity': quantity},
    );
  }

  Future<void> removeFromCart(int userId, int productId) async {
    final db = await _databaseProvider.getDatabase();
    await db!.delete(
      'Cart',
      where: 'user_id = ? AND product_id = ?',
      whereArgs: [userId, productId],
    );
  }
}
