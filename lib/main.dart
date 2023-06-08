import 'package:flutter/material.dart';

void main() {
  runApp(const DemoApp());
}

class DemoApp extends StatelessWidget {
  const DemoApp({super.key});

  @override
  Widget build(BuildContext context) {
    BorderSide borderSide = const BorderSide(
      color: Colors.black,
      width: 1.5,
      style: BorderStyle.solid,
    );
    return MaterialApp(
      home: Scaffold(
        body: SafeArea(
          child: Container(
            padding: const EdgeInsets.all(10),
            decoration: BoxDecoration(
              color: Colors.amber,
              border: Border(
                top: borderSide,
                bottom: borderSide,
                left: borderSide,
                right: borderSide,
              ),
              borderRadius: const BorderRadius.all(
                Radius.circular(8),
              ),
            ),
            child: const Text("New"),
          ),
        ),
      ),
    );
  }
}
