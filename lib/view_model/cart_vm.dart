import 'package:flutter/material.dart';
import 'package:flutter_demo_application/models/cart_product_model.dart';
import 'package:get/get.dart';

class CartVM extends GetxController {
  final RxList<Product> _cartProducts = [
    Product(
      productImage: Image.asset("assets/images/Item_1.png"),
      pricePerKG: 12.35,
      title: "Patas de King Crab de Alaska",
      weight: 0.375,
      price: 4.45,
      pieces: 3,
      count: 1.obs,
    ),
    Product(
      productImage: Image.asset("assets/images/Item_2.png"),
      pricePerKG: 135,
      title: "Alitas de pollo",
      weight: 0.75,
      price: 101.25,
      pieces: 3,
      count: 1.obs,
    ),
    Product(
      productImage: Image.asset("assets/images/Item_3.png"),
      pricePerKG: 123.3,
      title: "SALCHICHAS DE ATÚN",
      weight: 0.5,
      price: 61.65,
      pieces: 3,
      count: 1.obs,
    ),
    Product(
      productImage: Image.asset("assets/images/Item_4.png"),
      pricePerKG: 15,
      title: "King Alaska",
      weight: 0.25,
      price: 3.75,
      pieces: 3,
      count: 1.obs,
    ),
    Product(
      productImage: Image.asset("assets/images/Item_5.png"),
      pricePerKG: 150,
      title: "Patas de King Crab",
      weight: 0.875,
      price: 131.25,
      pieces: 3,
      count: 1.obs,
    ),
  ].obs;
  String getTotalPrice() {
    double total = 0.0;
    for (Product product in _cartProducts) {
      total += product.totalPrice.value;
    }
    return total.toStringAsFixed(2);
  }

  RxList<Product> getProducts() {
    return _cartProducts;
  }

  void removeProduct(Product product) {
    _cartProducts.remove(product);
    _cartProducts.refresh();
    update();
  }

  void increaseProduct(Product product) {
    product.count.value++;
    update();
  }

  void decreaseProduct(Product product) {
    if (product.count.value > 1) {
      product.count.value--;
      update();
    } else if (product.count.value == 1) {
      removeProduct(product);
    }
  }
}
