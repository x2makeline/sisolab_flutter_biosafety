import 'package:flutter/material.dart';
import 'package:flutter_form_builder/flutter_form_builder.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:sisolab_flutter_biosafety/app/global/widgets/template/note_template.dart';

class FclPersonTemplate extends StatelessWidget {
  const FclPersonTemplate(
      {super.key,
      required this.label,
      required this.noteName,
      required this.radioName,
      required this.countName,
      required this.radioMap});

  final String label;
  final String noteName;
  final String radioName;
  final Map<String, String> radioMap;
  final String countName;

  @override
  Widget build(BuildContext context) => NoteTemplate(
      label: label,
      name: noteName,
      builder: (_) => [
            Row(
              children: [
                Flexible(
                    child: FormBuilderTextField(
                  name: countName,
                  decoration: const InputDecoration(
                    suffixText: "명",
                  ),
                )),
                SizedBox(
                  width: 20.w,
                ),
                Flexible(
                    child: FormBuilderRadioGroup(
                        decoration: const InputDecoration(
                            enabledBorder: InputBorder.none),
                        name: radioName,
                        wrapAlignment: WrapAlignment.spaceAround,
                        options: radioMap.entries
                            .map((e) => FormBuilderFieldOption(
                                  value: e.key,
                                  child: Text(
                                    e.value,
                                    style: TextStyle(
                                      fontSize: 28.sp,
                                    ),
                                  ),
                                ))
                            .toList()))
              ],
            )
          ]);
}
