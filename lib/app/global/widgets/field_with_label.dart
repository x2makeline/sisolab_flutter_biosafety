import 'package:dartlin/control_flow.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

class FieldWithLabel extends StatelessWidget {
  const FieldWithLabel(
      {super.key,
      this.label,
      this.style,
      required this.child,
      this.labelPadding,
      this.axis = Axis.horizontal,
      this.reverse = false});

  final String? label;
  final TextStyle? style;
  final Widget child;
  final Axis axis;
  final bool reverse;
  final double? labelPadding;

  @override
  Widget build(BuildContext context) => [
        if (label != null)
          Text(
            label!,
            style: style ?? context.textTheme.titleLarge,
          ),
        SizedBox(
          height: axis == Axis.horizontal ? labelPadding ?? 15.h : null,
          width: axis == Axis.vertical ? labelPadding ?? 15.h : null,
        ),
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
