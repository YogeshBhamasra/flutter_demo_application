import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    const String name = "Demo App";
    BorderSide borderSide = const BorderSide(
      color: Colors.black,
      width: 1.5,
      style: BorderStyle.solid,
    );
    return Scaffold(
      appBar: AppBar(
        title: const Text(name),
      ),
      drawer: const Drawer(),
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
    );
  }
}
