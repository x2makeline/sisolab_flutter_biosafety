import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:sisolab_flutter_biosafety/app/global/models/fcl_radio.dart';
import 'package:sisolab_flutter_biosafety/app/global/widgets/fcl/fcl_image_note_template.dart';

class FclField extends StatelessWidget {
  const FclField(
      {super.key,
      this.imageName,
      this.fclRadio,
      this.desc,
      this.noteName,
      required this.label,
      this.initialNote,
      this.initialImage,
      this.indent = true,
      this.child,
      this.endIndent = false});

  final String? desc;
  final String label;
  final String? imageName;
  final String? initialImage;
  final FclRadio? fclRadio;
  final Widget? child;

  final String? noteName;
  final String? initialNote;

  final bool indent;
  final bool endIndent;

  @override
  Widget build(BuildContext context) => Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(label, style: context.textTheme.titleLarge),
          if (desc != null)
            Padding(
              padding: EdgeInsets.all(10.sp),
              child: Container(
                width: double.infinity,
                padding: EdgeInsets.all(30.sp),
                decoration: BoxDecoration(
                    border: Border.all(
                        color: const Color(0xff188657),
                        style: BorderStyle.solid,
                        width: 4)),
                child: Text(
                  desc!,
                  style: TextStyle(fontSize: 28.sp),
                ),
              ),
            ),
          FclImageNoteTemplate(
            initialImage: initialImage,
            initialNote: initialNote,
            label: imageName != null ? "이미지 첨부" : null,
            noteName: noteName,
            fclRadio: fclRadio,
            imageName: imageName,
          ),
          if (child != null) child!
        ],
      );
}
