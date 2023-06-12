import 'package:flutter_demo_application/models/cart_product_model.dart';
import 'package:get/get.dart';

class ProductController extends GetxController {
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

  void removeProduct(Product product) {
    product.count.value = 0;
    update();
  }
}
