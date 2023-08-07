import 'package:flutter/material.dart';

class FclDivider extends Divider {
  const FclDivider({
    super.key,
    super.height,
    super.thickness,
    super.color,
    this.paddingRatio = 0
  }) : super(
      endIndent: paddingRatio * _padding,
      indent: paddingRatio * _padding
  );

  static const double _padding = 20;
  final double paddingRatio;

  const FclDivider.black({super.key, this.paddingRatio = 0}) :
        super(color: const Color(0xff101010));

  const FclDivider.form({super.key, this.paddingRatio = 0})
      : super(color: const Color(0xffe0e0e0));
}
