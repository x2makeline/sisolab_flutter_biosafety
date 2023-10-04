import 'dart:io';

import 'package:dartlin/control_flow.dart';
import 'package:flutter/material.dart';
import 'package:flutter_form_builder/flutter_form_builder.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:form_builder_file_picker/form_builder_file_picker.dart';
import 'package:get/get.dart';
import 'package:sisolab_flutter_biosafety/app/global/styles/color_styles.dart';
import 'package:sisolab_flutter_biosafety/core/utils/convert.util.dart';
import 'package:sisolab_flutter_biosafety/core/utils/extensions/list_space_between.dart';
import 'package:sisolab_flutter_biosafety/core/utils/mc_logger.dart';

class FclImagePicker extends StatefulWidget {
  const FclImagePicker({Key? key, this.onChange, this.initialValue})
      : super(key: key);
  final void Function(String file)? onChange;
  final String? initialValue;

  @override
  State<FclImagePicker> createState() => _FclImagePickerState();
}

class _FclImagePickerState extends State<FclImagePicker> with PLoggerMixin {
  late String? base64;

  @override
  void initState() {
    super.initState();
    base64 = widget.initialValue;
  }

  @override
  Widget build(BuildContext context) => Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Row(
            children: <Widget>[
              ElevatedButton(
                  style: const ButtonStyle(
                      backgroundColor:
                          MaterialStatePropertyAll<Color>(Color(0xff505050))),
                  onPressed: () async {
                    final result = await FilePicker.platform.pickFiles(
                      type: FileType.image,
                    );

                    if (result?.files.first.path != null) {
                      setState(() {
                        base64 = uint8ListTob64(
                            File(result!.files.first.path!).readAsBytesSync());
                        widget.onChange?.let((it) => it(base64!));
                      });
                    } else if (result?.files.first.bytes != null) {
                      setState(() {
                        base64 = uint8ListTob64(result!.files.first.bytes!);
                        widget.onChange?.let((it) => it(base64!));
                      });
                    }
                  },
                  child: Text(
                    "파일선택",
                    style: context.textTheme.titleMedium
                        ?.copyWith(color: Colors.white),
                  )),
              SizedBox(
                width: 10.w,
              ),
              Expanded(
                child: Container(
                  height: 90.h,
                  padding: EdgeInsets.only(left: 30.w),
                  decoration:
                      BoxDecoration(border: Border.all(color: ColorGroup.gray)),
                  child: Align(
                    alignment: Alignment.centerLeft,
                    child: Text(
                      "이미지를 선택해주세요.",
                      style: context.textTheme.titleMedium
                          ?.copyWith(color: const Color(0xff767676)),
                    ),
                  ),
                ),
              ),
            ],
          ),
          if (base64 != null)
            Image.memory(
              Uri.parse(base64!).data!.contentAsBytes(),
              width: 90.h,
              height: 90.h,
            )
        ].withSpaceBetween(height: 15.h),
      );
}

class FormBuilderFclImagePicker extends FormBuilderFieldDecoration<String> {
  FormBuilderFclImagePicker({
    super.key,
    required super.name,
    super.initialValue,
  }) : super(
            builder: (FormFieldState<String?> field) {
              return FclImagePicker(
                  onChange: field.setValue,
                  initialValue: field.value,
                );
            });
}
