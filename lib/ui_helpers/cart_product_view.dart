import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter_demo_application/models/cart_product_model.dart';
import 'package:google_fonts/google_fonts.dart';

class CartProductView extends StatelessWidget {
  final Product product;
  static const Color cartColor = Color.fromRGBO(56, 56, 56, 1.0);
  const CartProductView({super.key, required this.product});

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    return Container(
      decoration: BoxDecoration(
        color: Colors.white,
      ),
      height: 154,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        mainAxisSize: MainAxisSize.max,
        children: <Widget>[
          Container(
            padding:
                const EdgeInsets.symmetric(vertical: 10.0, horizontal: 10.0),
            child: product.productImage,
          ),
          Flexible(
            // color: Colors.red,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                const SizedBox(
                  height: 5.0,
                ),
                Text(
                  product.title,
                  style: TextStyle(
                    color: cartColor,
                    fontSize: 14,
                    fontWeight: FontWeight.w600,
                    fontFamily: GoogleFonts.oswald().fontFamily,
                  ),
                ),
                Text(
                  "\$${product.pricePerKG}/KG",
                  style: TextStyle(
                    color: cartColor,
                    fontSize: 10,
                    fontWeight: FontWeight.w300,
                    fontFamily: GoogleFonts.montserrat().fontFamily,
                  ),
                ),
                Spacer(),
                Row(
                  children: [
                    Text(
                      "${product.pieces} pieza",
                      style: TextStyle(
                        color: cartColor,
                        fontStyle: FontStyle.italic,
                        fontSize: 10,
                        fontWeight: FontWeight.w500,
                        fontFamily: GoogleFonts.montserrat().fontFamily,
                      ),
                    ),
                    Text(
                      "${product.weight} KG",
                      style: TextStyle(
                        color: cartColor,
                        fontStyle: FontStyle.italic,
                        fontSize: 10,
                        fontWeight: FontWeight.w500,
                        fontFamily: GoogleFonts.montserrat().fontFamily,
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: 10.0,
                ),
                Text(
                  "\$${product.price}",
                  style: TextStyle(
                    color: cartColor,
                    fontSize: 14,
                    fontWeight: FontWeight.w600,
                    fontFamily: GoogleFonts.oswald().fontFamily,
                  ),
                ),
                SizedBox(
                  height: 5.0,
                ),
                Row(
                  children: [
                    SizedBox(
                      width: width * 0.3,
                      child: InkWell(
                        splashColor: Colors.transparent,
                        highlightColor: Colors.transparent,
                        child: DecoratedBox(
                          decoration: BoxDecoration(
                            border: Border.all(
                              color: const Color.fromRGBO(179, 179, 179, 1),
                              width: 1.0,
                            ),
                            shape: BoxShape.rectangle,
                          ),
                          child: Row(
                            mainAxisSize: MainAxisSize.max,
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              GestureDetector(
                                onTap: () {
                                  //product remove function
                                },
                                child: const Text("-"),
                              ),
                              SizedBox(
                                width: width * 0.14,
                                child: InkWell(
                                  splashColor: Colors.transparent,
                                  highlightColor: Colors.transparent,
                                  child: DecoratedBox(
                                    decoration: BoxDecoration(
                                      border: Border.all(
                                        color: const Color.fromRGBO(
                                            179, 179, 179, 1),
                                        width: 1.0,
                                      ),
                                      shape: BoxShape.rectangle,
                                    ),
                                    child:
                                        Center(child: Text("${product.count}")),
                                  ),
                                ),
                              ),
                              GestureDetector(
                                onTap: () {
                                  //product add function
                                },
                                child: const Text("+"),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                    Spacer(),
                    Image.asset("assets/images/bin.png"),
                    SizedBox(
                      width: 10.0,
                    ),
                  ],
                ),
                SizedBox(
                  height: 10.0,
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
