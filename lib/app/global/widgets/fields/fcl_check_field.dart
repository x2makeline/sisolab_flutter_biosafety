import 'package:flutter/material.dart';
import 'package:get/get.dart';

class FclCheckField extends StatefulWidget {
  const FclCheckField({super.key, required this.rxBool});

  final RxBool rxBool;

  @override
  State<FclCheckField> createState() => _FclCheckFieldState();
}

class _FclCheckFieldState extends State<FclCheckField> {
  @override
  Widget build(BuildContext context) =>
      Obx(() => Checkbox(value: widget.rxBool.value, onChanged: widget.rxBool));
}
