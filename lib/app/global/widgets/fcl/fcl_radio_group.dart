import 'package:flutter/material.dart';
import 'package:flutter_form_builder/flutter_form_builder.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:sisolab_flutter_biosafety/app/global/styles/color_styles.dart';

class FclRadioGroup extends StatelessWidget {
  const FclRadioGroup(
      {super.key,
      this.wrapAlignment = WrapAlignment.start,
      this.orientation = OptionsOrientation.vertical,
      this.labelWithKey = true,
      required this.map,
      this.initialValue,
      this.onChanged,
      required this.name});

  final String? initialValue;
  final String name;
  final Map<String, String> map;
  final WrapAlignment wrapAlignment;
  final OptionsOrientation orientation;
  final bool labelWithKey;
  final void Function(String?)? onChanged;

  @override
  Widget build(BuildContext context) => DefaultTextStyle(
        style: TextStyle(fontSize: 28.sp, color: ColorGroup.black),
        child: FormBuilderRadioGroup(

            wrapSpacing: 100.w,
            onChanged: onChanged,
            wrapAlignment: wrapAlignment,
            decoration: const InputDecoration(
                contentPadding: EdgeInsets.zero,
                enabledBorder: OutlineInputBorder(borderSide: BorderSide.none)),
            orientation: orientation,
            initialValue: initialValue,
            name: name,
            options: map.entries
                .map((e) => FormBuilderFieldOption(
                      value: e.key,
                      child: Text(
                          "${labelWithKey ? "${e.key} =  " : ""}${e.value}"),
                    ))
                .toList()),
      );
}
