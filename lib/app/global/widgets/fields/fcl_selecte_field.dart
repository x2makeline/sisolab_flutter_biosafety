import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:sisolab_flutter_biosafety/core/constants/constant.dart';

class FclSelectField<T extends Map> extends StatefulWidget {
  const FclSelectField(
      {super.key,
      this.emptyText = Constant.emptyText,
      required this.map,
      required this.rx});

  final String emptyText;

  final T map;

  final RxnString rx;

  @override
  State<FclSelectField> createState() => _FclSelectFieldState();
}

class _FclSelectFieldState<T extends Map> extends State<FclSelectField<T>> {
  @override
  void initState() {
    super.initState();
  }

  @override
  void dispose() {
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return InputDecorator(
      decoration: InputDecoration(
          contentPadding: const EdgeInsets.all(10),
          border: Theme.of(context).inputDecorationTheme.border),
      child: Obx(() => DropdownButton<String>(
            underline: const SizedBox.shrink(),
            value: widget.rx.value,
            hint: Text(widget.emptyText),
            isExpanded: true,
            items: [
              DropdownMenuItem(value: null, child: Text(widget.emptyText)),
              ...widget.map.entries
                  .map((e) => DropdownMenuItem<String>(
                      value: e.value, child: Text(e.key)))
                  .toList()
            ],
            onChanged: (v) {
              widget.rx.value = v;
            },
          )),
    );
  }
}
