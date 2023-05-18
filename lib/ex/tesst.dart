import 'package:flutter/material.dart';

class Product {
  final String name;
  final String image;
  final double price;
  final double rating;

  Product({
    required this.name,
    required this.image,
    required this.price,
    required this.rating,
  });
}

class LazadaProductList extends StatelessWidget {
  final List<Product> products = [
    Product(
      name: 'AirPods Pro',
      image: 'assets/images/prduct_1.png',
      price: 249.99,
      rating: 4.5,
    ),
    Product(
      name: 'iPhone 12',
      image: 'assets/images/prduct_1.png',
      price: 799.99,
      rating: 4.0,
    ),
    Product(
      name: 'Samsung Galaxy S21',
      image: 'assets/images/prduct_1.png',
      price: 899.99,
      rating: 4.2,
    ),
    Product(
      name: 'MacBook Pro',
      image: 'assets/images/prduct_1.png',
      price: 1499.99,
      rating: 4.8,
    ),
    Product(
      name: 'Dell XPS 13',
      image: 'assets/images/prduct_1.png',
      price: 1199.99,
      rating: 4.6,
    ),
    Product(
      name: 'iPad Pro',
      image: 'assets/images/prduct_1.png',
      price: 999.99,
      rating: 4.3,
    ),
    Product(
      name: 'Nintendo Switch',
      image: 'assets/images/prduct_1.png',
      price: 299.99,
      rating: 4.7,
    ),
    Product(
      name: 'PlayStation 5',
      image: 'assets/images/prduct_1.png',
      price: 499.99,
      rating: 4.9,
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Lazada'),
      ),
      body: GridView.builder(
        padding: EdgeInsets.all(16),
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          mainAxisSpacing: 16,
          crossAxisSpacing: 16,
          childAspectRatio: 0.7,
        ),
        itemCount: products.length,
        itemBuilder: (context, index) {
          return _buildProductItem(context, products[index]);
        },
      ),
    );
  }

  Widget _buildProductItem(BuildContext context, Product product) {
    return Card(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Expanded(
            child: Stack(
              children: [
                Positioned.fill(
                  child: Image.asset(
                    product.image,
                    fit: BoxFit.cover,
                  ),
                ),
                Positioned(
                  top: 8,
                  right: 8,
                  child: Icon(
                    Icons.favorite_border,
                    color: Colors.grey,
                  ),
                ),
              ],
            ),
          ),
          Padding(
            padding: EdgeInsets.all(8),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  product.name,
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 16,
                  ),
                ),
                SizedBox(height: 4),
                Text(
                  '\$${product.price}',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 18,
                  ),
                ),
                SizedBox(height: 4),
                Row(
                  children: [
                    Icon(
                      Icons.star,
                      color: Colors.orange,
                      size: 20,
                    ),
                    SizedBox(width: 4),
                    Text(
                      '${product.rating}',
                      style: TextStyle(
                        fontSize: 16,
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
