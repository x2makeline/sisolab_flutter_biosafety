import 'package:flutter/material.dart';
import 'package:sisolab_flutter_biosafety/core/utils/extensions/double.dart';

class TitleArea extends StatelessWidget {
  const TitleArea({super.key, required this.title});

  final String title;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(height: 100.sz),
        Text(
          title,
          textAlign: TextAlign.center,
          style: Theme.of(context).textTheme.headlineLarge,
        ),
        SizedBox(height: 60.sz),
      ],
    );
  }
}
