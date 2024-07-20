class Gold {
  final String name;
  final double price;

  Gold({required this.name, required this.price});

  factory Gold.fromJson(String name, double price) {
    return Gold(name: name, price: price);
  }
}
