import 'package:flutter_application_1/models/product.dart';
import 'package:flutter_application_1/repository/product_repo.dart';

class HomeViewModel {
  final ProductRepository _productRepository;

  HomeViewModel(this._productRepository);

  Future<List<Product>> getProducts() async {
    List<Product> products = await _productRepository.getProducts();
    return products;
  }
}
