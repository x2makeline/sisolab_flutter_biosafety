import 'package:dartlin/control_flow.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class FclTextField extends StatefulWidget {
  FclTextField({super.key, this.hintText, this.rxn, this.value, this.onChange});

  FclTextField.rx({super.key, this.hintText, required this.rxn})
      : value = null,
        onChange = null;

  FclTextField.primary(
      {super.key, this.hintText, required this.value, required this.onChange})
      : rxn = null;

  final String? hintText;
  final RxnString? rxn;
  final String? value;

  final void Function(String)? onChange;

  final textEditingController = TextEditingController();

  @override
  State<FclTextField> createState() => _FclTextFieldState();
}

class _FclTextFieldState extends State<FclTextField> {
  @override
  void initState() {
    super.initState();

    if (widget.rxn != null) {
      widget.rxn!.value.let((v) {
        if (v != null) widget.textEditingController.text = v;
      });
    } else if (widget.value != null) {
      widget.textEditingController.text = widget.value!;
    }
  }

  @override
  void dispose() {
    super.dispose();
    widget.textEditingController.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return TextField(
      controller: widget.textEditingController,
      onChanged: (v) {
        if (widget.rxn != null) {
          widget.rxn!(v);
        } else {
          widget.onChange!(v);
        }
      },
      decoration: InputDecoration(hintText: widget.hintText),
    );
  }
}
