import 'package:flutter/material.dart';
import 'package:flutter_demo_application/pages/homePage.dart';
import 'package:flutter_demo_application/pages/login_page.dart';
import 'package:google_fonts/google_fonts.dart';

class CustomTabBar extends StatefulWidget {
  const CustomTabBar({super.key});

  @override
  State<CustomTabBar> createState() => _CustomTabBarState();
}

class _CustomTabBarState extends State<CustomTabBar> {
  int _selectedIndex = 0;
  static const TextStyle tabBarStyle = TextStyle(
    fontWeight: FontWeight.normal,
    fontSize: 16,
    fontFamily: "Montserrat",
  );
  static const List<Widget> _screens = <Widget>[
    HomePage(),
    LoginPage(),
    Text(
      "Index 2: Person",
      style: tabBarStyle,
    ),
    Text(
      "Index 3: Settings",
      style: tabBarStyle,
    ),
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _screens.elementAt(_selectedIndex),
      bottomNavigationBar: BottomNavigationBar(
        selectedLabelStyle: tabBarStyle,
        unselectedLabelStyle: tabBarStyle,
        type: BottomNavigationBarType.fixed,
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: "Tienda",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.shopping_bag_rounded),
            label: "Reordenar",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person),
            label: "Cuenta",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.more_vert_rounded),
            label: "Más",
          ),
        ],
        currentIndex: _selectedIndex,
        selectedItemColor: const Color.fromRGBO(213, 0, 50, 1.0),
        unselectedItemColor: const Color.fromRGBO(0, 0, 0, 1),
        onTap: _onItemTapped,
      ),
    );
  }
}
