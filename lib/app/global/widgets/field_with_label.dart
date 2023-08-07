import 'package:dartlin/control_flow.dart';
import 'package:flutter/material.dart';
import 'package:sisolab_flutter_biosafety/core/utils/extensions/double.dart';

class FieldWithLabel extends StatelessWidget {
  const FieldWithLabel(
      {super.key,
      this.label,
      required this.child,
      this.labelPadding,
      this.axis = Axis.horizontal,
      this.reverse = false});

  final String? label;
  final Widget child;
  final Axis axis;
  final bool reverse;
  final double? labelPadding;

  @override
  Widget build(BuildContext context) => [
        if (label != null) ...[
          Text(
            label!,
            style: TextStyle(fontSize: 24.sz, fontWeight: FontWeight.w500),
          ),
          SizedBox(
            height: axis == Axis.horizontal ? labelPadding ?? 15.sz : null,
            width: axis == Axis.vertical ? labelPadding ?? 15.sz : null,
          ),
        ],
        child
      ]
          .let((it) => reverse ? it.reversed.toList() : it)
          .let((children) => when(axis, {
                Axis.horizontal: () => Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: children,
                    ),
                Axis.vertical: () => Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: children,
                    )
              }))!;
}
