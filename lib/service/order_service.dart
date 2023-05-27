import 'dart:convert';
import 'package:http/http.dart' as http;

import '../models/cart.dart';
import '../models/order.dart';

class OrderService {
  static const String BASE_URL = 'https://api.example.com';

  // Places an order for the given user and cart
  Future<void> placeOrder(String userId, Cart cart) async {
    try {
      // Create the order object
      Order order =
          Order(userId: userId, orderId: '', shoes: [], totalPrice: 1);

      // Convert to JSON
      String orderJson = json.encode(order.toMap());

      // Send the request to the API
      var response = await http.post(Uri.parse('$BASE_URL/orders'),
          headers: {'Content-Type': 'application/json'}, body: orderJson);

      // Check for errors
      if (response.statusCode == 200 || response.statusCode == 201) {
        // Order placed successfully
        return;
      } else {
        throw Exception('Failed to place order: ${response.statusCode}');
      }
    } catch (error) {
      throw error;
    }
  }
}
