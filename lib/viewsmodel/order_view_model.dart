import 'package:flutter_application_1/models/order.dart';
import 'package:flutter_application_1/repository/order_repo.dart';

class OrderViewModel {
  final OrderRepository _orderRepository;

  OrderViewModel(this._orderRepository);

  Future<Order?> getOrder(int orderId) async {
    Order? order = await _orderRepository.getOrder(orderId);
    return order;
  }
}
