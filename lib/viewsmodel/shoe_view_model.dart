import 'package:flutter/material.dart';

import '../models/shoe.dart';
import '../service/shoe_service.dart';

class ShoeViewModel extends ChangeNotifier {
  final ShoesService _shoesService = ShoesService();
  List<Shoe> _shoes = [];
  bool _isLoading = false;

  List<Shoe> get shoes => _shoes;
  bool get isLoading => _isLoading;

  Future<void> fetchShoes() async {
    _isLoading = true;
    notifyListeners();

    try {
      _shoes = await ShoesService.getShoes();
    } catch (e) {
      // Handle error
    } finally {
      _isLoading = false;
      notifyListeners();
    }
  }

  void addShoe(Shoe shoe) {
    _shoes.add(shoe);
    notifyListeners();
  }

  void removeShoe(Shoe shoe) {
    _shoes.remove(shoe);
    notifyListeners();
  }
}
