import 'package:flutter/material.dart';

import 'CategoryChip.dart';
import 'ProductCard.dart';

class CategoryTab extends StatelessWidget {
  const CategoryTab({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text(
              'Categories',
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          SizedBox(
            height: 100,
            child: ListView(
              scrollDirection: Axis.horizontal,
              children: [
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: CategoryChip(
                    label: 'Clothes',
                    selected: true,
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: CategoryChip(
                    label: 'Electronics',
                    selected: false,
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: CategoryChip(
                    label: 'Furniture',
                    selected: false,
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: CategoryChip(
                    label: 'Appliances',
                    selected: false,
                  ),
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text(
              'Popular Products',
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          SizedBox(
            height: 300,
            child: ListView(
              scrollDirection: Axis.horizontal,
              children: [
                ProductCard(
                  image: 'assets/images/product_1.png',
                  name: 'Casual Shirt',
                  price: '\$19.99',
                ),
                ProductCard(
                  image: 'assets/images/product_2.png',
                  name: 'Smart Watch',
                  price: '\$99.99',
                ),
                ProductCard(
                  image: 'assets/images/product_3.png',
                  name: 'Bluetooth Speaker',
                  price: '\$55.00',
                ),
                ProductCard(
                  image: 'assets/images/product_4.png',
                  name: 'Wireless Earbuds',
                  price: '\$39.99',
                ),
                ProductCard(
                  image: 'assets/images/product_1.png',
                  name: 'Sneakers',
                  price: '\$49.99',
                ),
                ProductCard(
                  image: 'assets/images/product_2.png',
                  name: 'Smartphone',
                  price: '\$899.00',
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
