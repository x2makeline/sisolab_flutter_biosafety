import 'package:dartlin/control_flow.dart';
import 'package:flutter/material.dart';

class FieldWithLabel extends StatelessWidget {
  const FieldWithLabel(
      {super.key,
       this.label,
      required this.child,
      this.axis = Axis.horizontal,
      this.reverse = false});

  final String? label;
  final Widget child;
  final Axis axis;
  final bool reverse;

  @override
  Widget build(BuildContext context) {
    final List<Widget> children =
        [if(label !=null) Text(label!), child].let((it) => reverse ? it.reversed.toList() : it);
    switch (axis) {
      case Axis.horizontal:
        return Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: children,
        );
      case Axis.vertical:
        return Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: children,
        );
    }
  }
}
