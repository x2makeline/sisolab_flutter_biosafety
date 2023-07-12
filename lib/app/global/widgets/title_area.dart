import 'package:flutter/material.dart';

class TitleArea extends StatelessWidget {
  const TitleArea({super.key, required this.title});

  final String title;

  @override
  Widget build(BuildContext context) {
    return  Column(
      children: [
        const SizedBox(height: 50),
        Text(
          title,
          textAlign: TextAlign.center,
          style: Theme.of(context).textTheme.headlineLarge,
        ),
        const SizedBox(height: 20),
      ],
    );
  }
}
