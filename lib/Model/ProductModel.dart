// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'dart:convert';

class ProductModel {
   final int id;
   final String Imag;
   final String Title;
   final String Details;
   final int Price;
  ProductModel({
    required this.id,
    required this.Imag,
    required this.Title,
    required this.Details,
    required this.Price,
  });
  ProductModel copyWith({
    int? id,
    String? Imag,
    String? Title,
    String? Details,
    int? Price,
  }) {
    return ProductModel(
      id: id ?? this.id,
      Imag: Imag ?? this.Imag,
      Title: Title ?? this.Title,
      Details: Details ?? this.Details,
      Price: Price ?? this.Price,
    );
  }

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'id': id,
      'Imag': Imag,
      'Title': Title,
      'Details': Details,
      'Price': Price,
    };
  }

  factory ProductModel.fromMap(Map<String, dynamic> map) {
    return ProductModel(
      id: map['id'] as int,
      Imag: map['Imag'] as String,
      Title: map['Title'] as String,
      Details: map['Details'] as String,
      Price: map['Price'] as int,
    );
  }

  String toJson() => json.encode(toMap());

  factory ProductModel.fromJson(String source) => ProductModel.fromMap(json.decode(source) as Map<String, dynamic>);

  @override
  String toString() {
    return 'ProductModel(id: $id, Imag: $Imag, Title: $Title, Details: $Details, Price: $Price)';
  }

  @override
  bool operator ==(covariant ProductModel other) {
    if (identical(this, other)) return true;
  
    return 
      other.id == id &&
      other.Imag == Imag &&
      other.Title == Title &&
      other.Details == Details &&
      other.Price == Price;
  }

  @override
  int get hashCode {
    return id.hashCode ^
      Imag.hashCode ^
      Title.hashCode ^
      Details.hashCode ^
      Price.hashCode;
  }
}
