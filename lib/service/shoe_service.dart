import 'dart:convert';
import 'package:http/http.dart' as http;

import '../models/shoe.dart';

class ShoesService {
  static const String _baseUrl = 'https://myshoesshop.com/api/';

  static Future<List<Shoe>> getShoes() async {
    final response = await http.get(Uri.parse(_baseUrl + 'shoes'));

    if (response.statusCode == 200) {
      final data = jsonDecode(response.body) as List;
      return data.map((json) => Shoe.fromJson(json)).toList();
    } else {
      throw Exception('Failed to load shoes');
    }
  }
}
