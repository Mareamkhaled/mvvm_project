class MetalModel {
  final String name;
  final double price;
  final String symbol;
  //! the API returns the date in ISO 8601 format, so we can parse it to DateTime
  final DateTime updatedAt;
  final String updatedAtReadable;

  MetalModel({
    required this.name,
    required this.price,
    required this.symbol,
    required this.updatedAt,
    required this.updatedAtReadable,
  });

  factory MetalModel.fromJson(Map<String, dynamic> json) {
    return MetalModel(
      name: json['name'],
      price: json['price'],
      symbol: json['symbol'],
      updatedAt: DateTime.parse(json['updatedAt']),
      updatedAtReadable: json['updatedAtReadable'],
    );
  }
}
