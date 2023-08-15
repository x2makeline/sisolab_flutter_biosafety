import 'dart:io';

import 'package:dartlin/control_flow.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_form_builder/flutter_form_builder.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:form_builder_file_picker/form_builder_file_picker.dart';
import 'package:sisolab_flutter_biosafety/core/utils/extensions/double.dart';
import 'package:sisolab_flutter_biosafety/core/utils/extensions/list_space_between.dart';

class FclImagePicker extends StatefulWidget {
  const FclImagePicker({Key? key, this.onChange, this.initialValue})
      : super(key: key);
  final void Function(List<PlatformFile> files)? onChange;
  final List<PlatformFile>? initialValue;

  @override
  State<FclImagePicker> createState() => _FclImagePickerState();
}

class _FclImagePickerState extends State<FclImagePicker> {
  late List<PlatformFile> files;

  List<Widget> get _fileImageList => List.generate(
      files.length,
      (index) => SizedBox.square(
            dimension: 100.h,
            child: kIsWeb
                ? Image.memory(files[index].bytes!, fit: BoxFit.fill)
                : Image.file(File(files[index].path!), fit: BoxFit.fill),
          ));

  @override
  void initState() {
    super.initState();
    // FormBu
    files = widget.initialValue ?? [];
  }

  @override
  Widget build(BuildContext context) => Column(
    crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          SizedBox(
            height: 90.h,
            child: Row(
              children: <Widget>[
                SizedBox(
                  height: 90.h,
                  width: 176.w,
                  child: ElevatedButton(
                      style: const ButtonStyle(
                          backgroundColor:
                              MaterialStatePropertyAll<Color>(Color(0xff505050))),
                      onPressed: () async {
                        final result = await FilePicker.platform.pickFiles(
                          allowMultiple: true,
                          type: FileType.image,
                        );

                        result?.files.let((fis) {
                          for (var element in fis) {
                            files.add(element);
                          }
                        });

                        setState(() {
                          widget.onChange?.let((it) => it(files));
                        });
                      },
                      child: Text(
                        "파일선택",
                        style: TextStyle(fontSize: 28.sp),
                      )),
                ),
                SizedBox(width: 10.w,),
                Expanded(
                  child: SizedBox(
                    height: 90.h,
                    child: DecoratedBox(
                      decoration: BoxDecoration(
                          border: Border.all(color: const Color(0xffe0e0e0))),
                      child:  Align(
                        alignment: Alignment.centerLeft,
                        child: Padding(
                          padding: EdgeInsets.only(left: 40.w),
                          child: const Text(
                            "이미지를 선택해주세요.",
                            style: TextStyle(color: Color(0xff767676)),
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
          if (_fileImageList.isNotEmpty)
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: _fileImageList.withSpaceBetween(width: 20.w),
              ),
            )
        ].withSpaceBetween(height: 15.h),
      );
}

class FormBuilderFclImagePicker extends StatelessWidget {
  const FormBuilderFclImagePicker({super.key, required this.name});

  final String name;

  @override
  Widget build(BuildContext context) {
    return FormBuilderField(
      name: name,
      builder: (FormFieldState<List<PlatformFile>> field) => FclImagePicker(
        onChange: field.setValue,
        initialValue: field.value,
      ),
    );
  }
}
