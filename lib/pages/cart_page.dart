import 'package:flutter/material.dart';
import 'package:flutter_demo_application/models/cart_product_model.dart';
import 'package:flutter_demo_application/ui_helpers/cart_product_view.dart';
import 'package:flutter_demo_application/view_model/cart_vm.dart';
import 'package:google_fonts/google_fonts.dart';

// class Cart extends StatelessWidget {
//   static const CartVM vm = CartVM();
//   const Cart({super.key});

//   @override
//   Widget build(BuildContext context) {
//     List<Product> products = vm.getProducts();
//     return Scaffold(body: CartProductView(product: products[0]));
//   }
// }

class Cart extends StatefulWidget {
  const Cart({super.key});

  @override
  State<Cart> createState() => _CartState();
}

class _CartState extends State<Cart> {
  CartVM vm = CartVM();
  @override
  Widget build(BuildContext context) {
    List<Product> products = vm.getProducts();
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          onPressed: () {
//        on back pop this screen
          },
          icon: const ImageIcon(
            AssetImage("assets/images/back_icon.png"),
            color: Color.fromRGBO(0, 0, 0, 1.0),
          ),
        ),
        title: Text(
          "CARRITO",
          style: TextStyle(
            color: Colors.black,
            fontSize: 14,
            fontWeight: FontWeight.bold,
            fontFamily: GoogleFonts.oswald().fontFamily,
          ),
        ),
        backgroundColor: Colors.white,
        iconTheme: IconThemeData(
          color: Colors.white,
        ),
        centerTitle: true,
      ),
      body: Column(
        children: <Widget>[
          Flexible(
            child: Container(
              color: Color.fromRGBO(242, 242, 242, 1.0),
              padding: EdgeInsets.all(20.0),
              height: double.infinity,
              child: ListView.separated(
                itemCount: products.length,
                itemBuilder: (context, index) {
                  return CartProductView(
                    product: products[index],
                  );
                },
                separatorBuilder: (context, index) => const Divider(
                  color: Colors.transparent,
                ),
              ),
            ),
          ),
          Container(
            height: 150.0,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Row(
                  children: <Widget>[
                    SizedBox(
                      width: 20.0,
                    ),
                    Text(
                      "RESUMEN DEL PEDIDO",
                      textAlign: TextAlign.start,
                      style: TextStyle(
                        fontSize: 14,
                        fontWeight: FontWeight.bold,
                        color: Color.fromRGBO(56, 56, 56, 1.0),
                        fontFamily: GoogleFonts.oswald().fontFamily,
                      ),
                    ),
                    SizedBox(
                      width: 5.0,
                    ),
                    Text(
                      "(3 PRODUCTOS)",
                      textAlign: TextAlign.start,
                      style: TextStyle(
                        fontSize: 12,
                        fontWeight: FontWeight.normal,
                        color: Color.fromRGBO(56, 56, 56, 1.0),
                        fontFamily: GoogleFonts.montserrat().fontFamily,
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: 24.0,
                ),
                Divider(
                  indent: 32,
                  endIndent: 21.0,
                  thickness: 1.0,
                  height: 1.0,
                  color: Color.fromRGBO(204, 204, 204, 1.0),
                ),
                SizedBox(
                  height: 8.0,
                ),
                Row(
                  children: [
                    SizedBox(
                      width: 32.0,
                    ),
                    Text(
                      "TOTAL",
                      textAlign: TextAlign.start,
                      style: TextStyle(
                        fontSize: 28,
                        fontWeight: FontWeight.w600,
                        color: Color.fromRGBO(56, 56, 56, 1.0),
                        fontFamily: GoogleFonts.oswald().fontFamily,
                      ),
                    ),
                    Spacer(),
                    Text(
                      "\$94.19",
                      textAlign: TextAlign.end,
                      style: TextStyle(
                        fontSize: 28,
                        fontWeight: FontWeight.w600,
                        color: Color.fromRGBO(56, 56, 56, 1.0),
                        fontFamily: GoogleFonts.oswald().fontFamily,
                      ),
                    ),
                    SizedBox(
                      width: 21.0,
                    ),
                  ],
                ),
                SizedBox(
                  height: 16.0,
                ),
                Flexible(
                  child: ElevatedButton(
                    onPressed: () {},
                    style: TextButton.styleFrom(
                      foregroundColor: Colors.white,
                      backgroundColor: Colors.black,
                      minimumSize: const Size(double.infinity, 56),
                    ),
                    child: Text(
                      "CONTINUAR",
                      style: TextStyle(
                        fontWeight: FontWeight.w500,
                        fontFamily: GoogleFonts.oswald().fontFamily,
                        fontSize: 15,
                      ),
                    ),
                  ),
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
