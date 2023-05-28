import 'package:flutter_application_1/helpers/db_helper.dart';
import 'package:flutter_application_1/models/product.dart';

class ProductRepository {
  final DatabaseProvider _databaseProvider;

  ProductRepository(this._databaseProvider);

  Future<List<Product>> getProducts() async {
    final db = await _databaseProvider.getDatabase();
    final List<Map<String, dynamic>> maps = await db.query('Product');
    List<Product> products = List.generate(maps.length, (i) {
      return Product(
        id: maps[i]['id'],
        name: maps[i]['name'],
        description: maps[i]['description'],
        image: maps[i]['image'],
        price: maps[i]['price'],
      );
    });
    return products;
  }

  Future<Product?> getProduct(int productId) async {
    final db = await _databaseProvider.getDatabase();
    final List<Map<String, dynamic>> maps = await db.query(
      'Product',
      where: 'id = ?',
      whereArgs: [productId],
    );
    if (maps.length == 0) {
      return null;
    }
    Product product = Product(
      id: maps[0]['id'],
      name: maps[0]['name'],
      description: maps[0]['description'],
      image: maps[0]['image'],
      price: maps[0]['price'],
    );
    return product;
  }
}
