import 'dart:io';

import 'package:dartlin/control_flow.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_form_builder/flutter_form_builder.dart';
import 'package:form_builder_file_picker/form_builder_file_picker.dart';
import 'package:get/get.dart';
import 'package:sisolab_flutter_biosafety/core/utils/extensions/double.dart';
import 'package:sisolab_flutter_biosafety/core/utils/extensions/list_space_between.dart';
import 'package:velocity_x/velocity_x.dart';

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
        (index) => kIsWeb
            ? Image.memory(files[index].bytes!, fit: BoxFit.fill)
            : Image.file(File(files[index].path!), fit: BoxFit.fill)
                .centered()
                .box
                .width(100.sz)
                .height(100.sz)
                .make(),
      );

  @override
  void initState() {
    super.initState();
    // FormBu
    files = widget.initialValue ?? [];
  }

  @override
  Widget build(BuildContext context) => <Widget>[
        <Widget>[
          ElevatedButton(
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
              child:
              "파일선택".text.size(28.sz).make().paddingAll(30.sz)),
          "이미지를 선택해주세요."
              .text
              .color(const Color(0xff767676))
              .make()
              .paddingOnly(left: 20.sz)
              .box
              .alignCenterLeft
              .withDecoration(BoxDecoration(
                  border: Border.all(color: const Color(0xffe0e0e0))))
              .make()
              .paddingOnly(left: 10.sz)
              .expand(),
        ].hStack().box.height(90.sz).make(),
        if (_fileImageList.isNotEmpty)
          _fileImageList
              .withSpaceBetween(width: 20.sz)
              .hStack(
                alignment: MainAxisAlignment.start,
              )
              .scrollHorizontal()
              .box
              .width(double.infinity)
              .padding(EdgeInsets.symmetric(vertical: 20.sz))
              .make()
      ]
          .withSpaceBetween(height: 15.sz)
          .vStack(alignment: MainAxisAlignment.start);
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
