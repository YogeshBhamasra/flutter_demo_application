import 'package:flutter/material.dart';

class Product {
  Image productImage;
  String title;
  double pricePerKG;
  double weight;
  double price;
  int pieces;
  var count = 0;
  Product({
    required this.productImage,
    required this.pricePerKG,
    required this.title,
    required this.weight,
    required this.price,
    required this.pieces,
  });
}
