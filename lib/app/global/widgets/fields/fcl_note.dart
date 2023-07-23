import 'package:flutter/material.dart';

class FclNote extends StatelessWidget {
  const FclNote({super.key});

  @override
  Widget build(BuildContext context) {
    return const TextField(
      maxLines: 3,
      decoration: InputDecoration(hintText: "관련 내용을 입력해주세요."),
    );
  }
}
