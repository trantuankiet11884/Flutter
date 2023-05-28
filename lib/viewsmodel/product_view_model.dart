import 'package:flutter_application_1/models/product.dart';
import 'package:flutter_application_1/repository/product_repo.dart';

class ProductViewModel {
  final ProductRepository _productRepository;

  ProductViewModel(this._productRepository);

  Future<Product?> getProduct(int productId) async {
    Product? product = await _productRepository.getProduct(productId);
    return product;
  }
}
