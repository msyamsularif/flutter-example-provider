import 'package:flutter/material.dart';

class Product {
  final int id;
  final String title;
  final String subTitle;
  bool isFavorite;

  Product({
    @required this.id,
    @required this.title,
    @required this.subTitle,
    this.isFavorite = false,
  });

  Product copyWith({
    int id,
    String title,
    String subTitle,
    bool isFavorite,
  }) {
    return Product(
      id: id ?? this.id,
      title: title ?? this.title,
      subTitle: subTitle ?? this.subTitle,
      isFavorite: isFavorite ?? this.isFavorite,
    );
  }
}

List<Product> mockProduct = [
  Product(id: 1, title: 'Product 1', subTitle: 'Sub Product 1'),
  Product(id: 2, title: 'Product 2', subTitle: 'Sub Product 2'),
  Product(id: 3, title: 'Product 3', subTitle: 'Sub Product 3'),
  Product(id: 4, title: 'Product 4', subTitle: 'Sub Product 4'),
  Product(id: 5, title: 'Product 5', subTitle: 'Sub Product 5'),
  Product(id: 6, title: 'Product 6', subTitle: 'Sub Product 6'),
  Product(id: 7, title: 'Product 7', subTitle: 'Sub Product 7'),
  Product(id: 8, title: 'Product 8', subTitle: 'Sub Product 8'),
  Product(id: 9, title: 'Product 9', subTitle: 'Sub Product 9'),
  Product(id: 10, title: 'Product 10', subTitle: 'Sub Product 10'),
];
