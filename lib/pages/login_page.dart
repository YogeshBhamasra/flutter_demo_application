import 'dart:math';

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({super.key});
  @override
  Widget build(BuildContext context) {
    return Material(
      surfaceTintColor: Colors.black,
      color: Colors.white,
      child: Column(
        children: [
          SafeArea(
            child: Padding(
              padding: const EdgeInsets.symmetric(vertical: 20),
              child: Image.asset(
                "assets/images/wildfork_logo.png",
                fit: BoxFit.contain,
                width: 172.0,
                height: 30.0,
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 16.0),
            child: Center(
              child: Text(
                "INICIAR SESIÓN",
                style: TextStyle(
                  fontSize: 28,
                  fontWeight: FontWeight.w600,
                  fontFamily: GoogleFonts.oswald().fontFamily,
                ),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 32.0),
            child: Column(
              children: [
                Padding(
                  padding: const EdgeInsets.only(top: 57.0),
                  child: TextFormField(
                    autocorrect: false,
                    style: TextStyle(
                      fontSize: 16.0,
                      fontWeight: FontWeight.normal,
                      fontFamily: GoogleFonts.montserrat().fontFamily,
                      color: Colors.black38,
                    ),
                    decoration: const InputDecoration(
                      labelText: "Ingresa tu correo",
                      errorText: "Ingresa tu correo",
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 24.0, bottom: 44.0),
                  child: TextFormField(
                    obscureText: true,
                    autocorrect: false,
                    decoration: const InputDecoration(
                      labelText: "Contraseña",
                      errorText: "Ingresa una contraseña válida",
                      focusColor: Colors.black26,
                      labelStyle: TextStyle(
                        color: Colors.black38,
                      ),
                      focusedBorder: UnderlineInputBorder(
                        borderSide: BorderSide(
                          color: Colors.black26,
                          width: 1.0,
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
          SizedBox(
            height: 44.0,
            child: Text(
              "¿Olvidaste tu contraseña?",
              style: TextStyle(
                fontWeight: FontWeight.w700,
                fontSize: 14,
                fontFamily: GoogleFonts.montserrat().fontFamily,
                color: Color.fromARGB(255, 220, 68, 5),
                decoration: TextDecoration.underline,
              ),
            ),
          ),
          SizedBox(
            height: 20.0,
            child: Text(
              "¿Aún no tienes cuenta? Crea tu cuenta aquí",
              style: TextStyle(
                fontWeight: FontWeight.w300,
                fontSize: 14,
                fontFamily: GoogleFonts.montserrat().fontFamily,
                color: Color.fromRGBO(0, 0, 0, 0.78),
                decoration: TextDecoration.underline,
              ),
            ),
          ),
          Expanded(child: Container()),
          SafeArea(
            child: Padding(
              padding:
                  const EdgeInsets.only(left: 62.0, right: 62.0, bottom: 24.0),
              child: ElevatedButton(
                onPressed: () {
                  print("Button tapped");
                },
                style: TextButton.styleFrom(
                    backgroundColor: Colors.black,
                    foregroundColor: Colors.white,
                    minimumSize: const Size(double.infinity, 48)),
                child: Text(
                  "INGRESAR",
                  style: TextStyle(
                    fontWeight: FontWeight.w500,
                    fontFamily: GoogleFonts.oswald().fontFamily,
                    fontSize: 15,
                  ),
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
