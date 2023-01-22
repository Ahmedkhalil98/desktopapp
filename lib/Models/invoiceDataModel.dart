import 'dart:convert';

class InvoiceDataModel {
  String itemName;
  String price;
  int count;
  InvoiceDataModel({
    required this.itemName,
    required this.price,
    required this.count,
  });

  InvoiceDataModel copyWith({
    String? itemName,
    String? price,
    int? count,
  }) {
    return InvoiceDataModel(
      itemName: itemName ?? this.itemName,
      price: price ?? this.price,
      count: count ?? this.count,
    );
  }

  Map<String, dynamic> toMap() {
    return {
      'itemName': itemName,
      'price': price,
      'count': count,
    };
  }

  factory InvoiceDataModel.fromMap(Map<String, dynamic> map) {
    return InvoiceDataModel(
      itemName: map['itemName'] ?? '',
      price: map['price'] ?? '',
      count: map['count']?.toInt() ?? 0,
    );
  }

  String toJson() => json.encode(toMap());

  factory InvoiceDataModel.fromJson(String source) =>
      InvoiceDataModel.fromMap(json.decode(source));

  @override
  String toString() =>
      'InvoiceDataModel(itemName: $itemName, price: $price, count: $count)';

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;

    return other is InvoiceDataModel &&
        other.itemName == itemName &&
        other.price == price &&
        other.count == count;
  }

  @override
  int get hashCode => itemName.hashCode ^ price.hashCode ^ count.hashCode;
}
