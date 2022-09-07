import 'package:flutter/material.dart';

class MyCard extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.all(10),
      padding: const EdgeInsets.all(10),
      width: double.infinity,
      height: 100,
      color: const Color.fromARGB(255, 37, 37, 37),
      child: const Text("Hello", style: TextStyle(color: Colors.white)),
    );
  }
}
