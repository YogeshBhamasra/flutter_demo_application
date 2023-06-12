import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({super.key});
  @override
  Widget build(BuildContext context) {
    final double height = MediaQuery.of(context).size.height -
        MediaQuery.of(context).padding.top -
        kBottomNavigationBarHeight;
    double extraHeight = kBottomNavigationBarHeight;
    return GestureDetector(
      onTap: () {
        FocusManager.instance.primaryFocus?.unfocus();
      },
      child: Scaffold(
        resizeToAvoidBottomInset: true,
        backgroundColor: Colors.white,
        body: SafeArea(
          child: SingleChildScrollView(
            child: Container(
              height: height - extraHeight,
              padding: const EdgeInsets.symmetric(horizontal: 32),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  SizedBox(
                    height: height * 0.02,
                  ),
                  Image.asset(
                    "assets/images/wildfork_logo.png",
                    fit: BoxFit.contain,
                    width: 172.0,
                    height: 30.0,
                  ),
                  SizedBox(
                    height: height * 0.016,
                  ),
                  Center(
                    child: Text(
                      "INICIAR SESIÓN",
                      style: TextStyle(
                        fontSize: 28,
                        fontWeight: FontWeight.w600,
                        fontFamily: GoogleFonts.oswald().fontFamily,
                      ),
                    ),
                  ),
                  SizedBox(
                    height: height * 0.057,
                  ),
                  TextFormField(
                    autocorrect: false,
                    cursorColor: Colors.black26,
                    style: TextStyle(
                      fontSize: 16.0,
                      fontWeight: FontWeight.normal,
                      fontFamily: GoogleFonts.montserrat().fontFamily,
                      color: Colors.black38,
                    ),
                    decoration: const InputDecoration(
                      labelText: "Ingresa tu correo",
                      labelStyle: TextStyle(
                        color: Colors.black38,
                      ),
                      focusedBorder: UnderlineInputBorder(
                        borderSide: BorderSide(
                          color: Colors.black26,
                          width: 1.0,
                        ),
                      ),
                      // errorText: "Ingresa tu correo",
                    ),
                  ),
                  SizedBox(
                    height: height * 0.024,
                  ),
                  TextFormField(
                    obscureText: true,
                    autocorrect: false,
                    cursorColor: Colors.black26,
                    decoration: const InputDecoration(
                      labelText: "Contraseña",
                      // errorText: "Ingresa una contraseña válida",
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
                  SizedBox(
                    height: height * 0.04,
                  ),
                  Text(
                    "¿Olvidaste tu contraseña?",
                    style: TextStyle(
                      fontWeight: FontWeight.w700,
                      fontSize: 14,
                      fontFamily: GoogleFonts.montserrat().fontFamily,
                      color: const Color.fromARGB(255, 220, 68, 5),
                      decoration: TextDecoration.underline,
                    ),
                  ),
                  SizedBox(
                    height: height * 0.02,
                  ),
                  Text(
                    "¿Aún no tienes cuenta? Crea tu cuenta aquí",
                    style: TextStyle(
                      fontWeight: FontWeight.w300,
                      fontSize: 14,
                      fontFamily: GoogleFonts.montserrat().fontFamily,
                      color: const Color.fromRGBO(0, 0, 0, 0.78),
                      decoration: TextDecoration.underline,
                    ),
                  ),
                  const Spacer(),
                  Padding(
                    padding: EdgeInsets.symmetric(
                      horizontal: height * 0.06,
                    ),
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
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
