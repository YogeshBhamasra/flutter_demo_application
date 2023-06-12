import 'package:flutter/material.dart';
import 'package:get/get.dart';

class Product {
  Image productImage;
  String title;
  double pricePerKG;
  double weight;
  double price;
  int pieces;
  RxDouble get totalPrice => (count.value * price).obs;
  RxInt count;
  Product({
    required this.productImage,
    required this.pricePerKG,
    required this.title,
    required this.weight,
    required this.price,
    required this.pieces,
    required this.count,
  });
}
