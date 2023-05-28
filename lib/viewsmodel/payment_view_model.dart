import 'package:flutter_application_1/repository/order_repo.dart';

class PaymentViewModel {
  final OrderRepository _orderRepository;

  PaymentViewModel(this._orderRepository);

  Future<int> placeOrder(int userId, double totalPrice) async {
    int orderId = await _orderRepository.placeOrder(userId, totalPrice);
    return orderId;
  }
}
