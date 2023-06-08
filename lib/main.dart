import 'package:flutter/material.dart';
import 'package:flutter_demo_application/pages/homePage.dart';
import 'package:flutter_demo_application/pages/login_page.dart';
import 'package:flutter_demo_application/tab_bar/tab_bar.dart';

void main() {
  runApp(const DemoApp());
}

class DemoApp extends StatelessWidget {
  const DemoApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: CustomTabBar(),
    );
  }
}
