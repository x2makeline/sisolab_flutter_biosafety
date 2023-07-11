import 'package:flutter/material.dart';

class TitleArea extends StatelessWidget {
  const TitleArea({super.key, required this.title});

  final String title;

  @override
  Widget build(BuildContext context) {
    return  Column(
      children: [
        const SizedBox(height: 70),
        Text(
          title,
          textAlign: TextAlign.center,
          style: const TextStyle(fontSize: 36, fontWeight: FontWeight.bold),
        ),
        const SizedBox(height: 30),
      ],
    );
  }
}
