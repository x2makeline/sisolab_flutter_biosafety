import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:sisolab_flutter_biosafety/app/global/models/fcl_radio.dart';
import 'package:sisolab_flutter_biosafety/app/global/widgets/fcl/fcl_image_note_template.dart';

class FclField extends StatelessWidget {
  const FclField(
      {super.key,
      this.imageName,
      this.fclRadio,
      required this.noteName,
      required this.label,
      this.indent = true,
      this.endIndent = false});

  final String label;
  final String? imageName;
  final FclRadio? fclRadio;
  final String noteName;
  final bool indent;
  final bool endIndent;

  @override
  Widget build(BuildContext context) => Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(label, style: context.textTheme.titleLarge),
        FclImageNoteTemplate(
          label: imageName != null ? "이미지 첨부" : null,
          noteName: noteName,
          fclRadio: fclRadio,
          imageName: imageName,
        ),
      ],
    );
}
