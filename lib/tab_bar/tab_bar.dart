import 'package:flutter/material.dart';
import 'package:flutter_demo_application/pages/cart_page.dart';
import 'package:flutter_demo_application/pages/home_page.dart';
import 'package:flutter_demo_application/pages/login_page.dart';

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
    Cart(),
    HomePage(),
    LoginPage(),
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
            icon: ImageIcon(AssetImage("assets/images/home_icon.png")),
            label: "Tienda",
          ),
          BottomNavigationBarItem(
            icon: ImageIcon(AssetImage("assets/images/cart_icon.png")),
            label: "Reordenar",
          ),
          BottomNavigationBarItem(
            icon: ImageIcon(AssetImage("assets/images/account_icon.png")),
            label: "Cuenta",
          ),
          BottomNavigationBarItem(
            icon: ImageIcon(AssetImage("assets/images/more_icon.png")),
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
