// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'dart:convert';

class CardItemListModel {
   final int quantity;
   final product;
  
  CardItemListModel({
    required this.quantity,
    required this.product
  });

  CardItemListModel copyWith({
    int? quantity,
    dynamic? product,
  }) {
    return CardItemListModel(
      quantity: quantity ?? this.quantity,
      product: product ?? this.product,
    );
  }

  Map<dynamic, dynamic> toMap() {
    return <dynamic, dynamic>{
      'quantity': quantity,
      'product': product,
    };
  }

  factory CardItemListModel.fromMap(Map<String, dynamic> map) {
    return CardItemListModel(
      quantity: map['quantity'] as int,
      product: map['product'] as dynamic,
    );
  }

  String toJson() => json.encode(toMap());

  factory CardItemListModel.fromJson(String source) => CardItemListModel.fromMap(json.decode(source) as Map<String, dynamic>);

  @override
  String toString() => 'CardItemListModel(quantity: $quantity, product: $product)';

  @override
  bool operator ==(covariant CardItemListModel other) {
    if (identical(this, other)) return true;
  
    return 
      other.quantity == quantity &&
      other.product == product;
  }

  @override
  int get hashCode => quantity.hashCode ^ product.hashCode;
  }
  
