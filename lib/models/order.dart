class Order {
  final int id;
  final int user_id;
  final double total_price;
  final String status;

  Order(
      {required this.id,
      required this.user_id,
      required this.total_price,
      required this.status});
}
