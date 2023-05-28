import 'package:flutter_application_1/helpers/db_helper.dart';
import 'package:flutter_application_1/models/order.dart';

class OrderRepository {
  final DatabaseProvider _databaseProvider;

  OrderRepository(this._databaseProvider);

  Future<int> placeOrder(int userId, double totalPrice) async {
    final db = await _databaseProvider.getDatabase();
    int orderId = await db!.insert(
      'Order',
      {'user_id': userId, 'total_price': totalPrice, 'status': 'pending'},
    );
    return orderId;
  }

  Future<Order?> getOrder(int orderId) async {
    final db = await _databaseProvider.getDatabase();
    final List<Map<String, dynamic>> maps = await db!.query(
      'Order',
      where: 'id = ?',
      whereArgs: [orderId],
    );
    if (maps.length == 0) {
      return null;
    }
    Order order = Order(
      id: maps[0]['id'],
      user_id: maps[0]['user_id'],
      total_price: maps[0]['total_price'],
      status: maps[0]['status'],
    );
    return order;
  }
}
