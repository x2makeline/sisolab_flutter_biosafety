import 'package:flutter/material.dart';
import 'package:sisolab_flutter_biosafety/core/utils/extensions/list_widget_between.dart';

extension ListSpaceBetween on List<Widget> {
  List<Widget> withSpaceBetween({double? width, double? height}) =>
      withWidgetBetween(SizedBox(
        width: width,
        height: height,
      ));
}
