import 'package:flutter/material.dart';
import 'package:flutter_form_builder/flutter_form_builder.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:sisolab_flutter_biosafety/app/global/models/fcl_radio.dart';
import 'package:sisolab_flutter_biosafety/app/global/widgets/fcl/fcl_image_picker.dart';
import 'package:sisolab_flutter_biosafety/app/global/widgets/template/note_template.dart';

class FclImageNoteTemplate extends StatelessWidget {
  const FclImageNoteTemplate(
      {super.key,
      this.label,
      required this.noteName,
      this.fclRadio,
      this.initialNote,
      this.initialImage,
      this.imageName});

  final String? label;

  final String noteName;
  final String? initialNote;
  final String? imageName;
  final String? initialImage;
  final FclRadio? fclRadio;

  @override
  Widget build(BuildContext context) {
    return NoteTemplate(
        label: label,
        name: noteName,
        initialValue: initialNote,
        builder: (_) => [
              if (imageName != null)
                FormBuilderFclImagePicker(
                  name: imageName!,
                  initialValue: initialImage,
                ),
              if (fclRadio != null)
                Row(
                  children: [
                    Flexible(
                        child: FormBuilderRadioGroup(
                            initialValue: fclRadio!.initialValue,
                            decoration: const InputDecoration(
                                enabledBorder: InputBorder.none),
                            name: fclRadio!.name,
                            wrapAlignment: WrapAlignment.spaceBetween,
                            options: fclRadio!.map.entries
                                .map((e) => FormBuilderFieldOption(
                                      value: e.key,
                                      child: Text(
                                        e.value,
                                        style: TextStyle(
                                          fontSize: 28.sp,
                                        ),
                                      ),
                                    ))
                                .toList())),
                    const Flexible(child: SizedBox.shrink()),
                  ],
                )
            ]);
  }
}
