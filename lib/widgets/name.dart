import 'package:flutter/material.dart';

class Papa extends StatelessWidget {
  const Papa({super.key});

  @override
  Widget build(BuildContext context) {
    return const Text(
      "< Papa />",
      textScaleFactor: 1.5,
      style: TextStyle(
        color: Colors.lightBlue,
        fontWeight: FontWeight.bold,
      ),
    );
  }
}
