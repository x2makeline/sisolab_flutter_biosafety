import 'package:flutter/material.dart';
import 'package:sisolab_flutter_biosafety/app/global/models/fcl_radio.dart';
import 'package:sisolab_flutter_biosafety/app/global/widgets/fcl_image_picker.dart';
import 'package:sisolab_flutter_biosafety/app/global/widgets/fcl_radio_group.dart';
import 'package:sisolab_flutter_biosafety/app/global/widgets/note_template.dart';

class FclImageNoteTemplate extends StatelessWidget {
  const FclImageNoteTemplate(
      {super.key,
      this.label,
      this.noteName,
      this.fclRadio,
      this.initialNote,
      this.initialImage,
      this.child,
      this.imageName});

  final String? label;
  final Widget? child;
  final String? noteName;
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
                FclRadioGroup(
                  map: fclRadio!.map,
                  name: fclRadio!.name,
                  orientation: fclRadio!.orientation,
                  initialValue: fclRadio!.initialValue,
                  labelWithKey: fclRadio!.labelWithKey,
                  wrapAlignment: fclRadio!.wrapAlignment,
                ),
            ]);
  }
}
