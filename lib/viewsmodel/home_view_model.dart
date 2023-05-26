import 'package:flutter/cupertino.dart';

import '../models/cart.dart';
import '../models/shoe.dart';
import '../screens/shoe_list_screen.dart';

class HomeViewModel extends ChangeNotifier {
  final ShoeList shoeList;
  final Cart cart;

  HomeViewModel({
    required this.shoeList,
    required this.cart,
  });

  void addToCart(Shoe shoe) {
    cart.shoes.add(shoe);
    notifyListeners();
  }
}
