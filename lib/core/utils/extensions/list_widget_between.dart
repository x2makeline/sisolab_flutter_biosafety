import 'package:flutter/material.dart';

extension ListWidgetBetween on List<Widget> {
  List<Widget> withWidgetBetween(Widget widget,
          {bool firstYn = false, bool lastYn = false}) =>
      [
        for (int i = 0; i < length; i++) ...[
          if (i > 0 || firstYn) widget,
          this[i],
        ],
        if (lastYn) widget
      ];
}
