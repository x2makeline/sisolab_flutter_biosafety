import 'package:flutter/material.dart';
import 'package:sisolab_flutter_biosafety/app/global/widgets/fcl/fcl_image_picker.dart';
import 'package:sisolab_flutter_biosafety/app/global/widgets/template/note_template.dart';

class FclImageNoteTemplate extends StatelessWidget {
  const FclImageNoteTemplate(
      {super.key,
      required this.label,
      required this.noteName,
      required this.imageName});

  final String label;
  final String noteName;
  final String imageName;

  @override
  Widget build(BuildContext context) {
    return NoteTemplate(
        label: label,
        name: noteName,
        builder: (_) => [
              FormBuilderFclImagePicker(
                name: imageName,
              ),
            ]);
  }
}


