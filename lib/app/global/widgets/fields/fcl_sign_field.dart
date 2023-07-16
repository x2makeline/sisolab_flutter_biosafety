import 'package:dartlin/control_flow.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:sisolab_flutter_biosafety/app/global/models/fcl_sign.dart';

class FclSignField extends StatefulWidget {
  FclSignField(
      {super.key, required this.rx, this.nameHintText, this.signatureHintText});

  final Rx<FclSign> rx;

  final String? nameHintText;
  final String? signatureHintText;

  final nameController = TextEditingController();
  final signatureController = TextEditingController();

  @override
  State<FclSignField> createState() => _FclSignFieldState();
}

class _FclSignFieldState extends State<FclSignField> {
  @override
  void initState() {
    super.initState();
    widget.rx.value.let((v) {
      if (v.name != null) widget.nameController.text = v.name!;
      if (v.signature != null) widget.signatureController.text = v.signature!;
    });
  }

  @override
  void dispose() {
    super.dispose();
    widget.nameController.dispose();
    widget.signatureController.dispose();
  }

  @override
  Widget build(BuildContext context) => Row(
        children: [
          Expanded(
            child: TextField(
              controller: widget.nameController,
              onChanged: (v) =>
                  widget.rx.value = widget.rx.value.merge(name: v),
              decoration: InputDecoration(hintText: widget.nameHintText),
            ),
          ),
          SizedBox(
            width: 80,
            child: TextField(
              controller: widget.signatureController,
              onChanged: (v) =>
              widget.rx.value = widget.rx.value.merge(signature: v),
              decoration: InputDecoration(hintText: widget.signatureHintText),
            ),
          )
        ],
      );
}
