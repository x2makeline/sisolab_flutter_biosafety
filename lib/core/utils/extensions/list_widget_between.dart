import 'package:dartlin/control_flow.dart';
import 'package:flutter/material.dart';
import 'package:sisolab_flutter_biosafety/app/global/widgets/empty_box.dart';

extension ListWidgetBetween on List<Widget> {
  List<Widget> withWidgetBetween(Widget widget,
          {bool firstYn = false, bool lastYn = false}) =>
      [
        for (int i = 0; i < length; i++) ...[
          if (i > 0 || firstYn) widget,
          this[i]
        ],
        if (lastYn) widget
      ];
}
