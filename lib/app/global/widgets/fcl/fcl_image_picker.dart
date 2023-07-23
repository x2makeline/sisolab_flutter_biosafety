import 'dart:io';

import 'package:dartlin/control_flow.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_form_builder/flutter_form_builder.dart';
import 'package:form_builder_file_picker/form_builder_file_picker.dart';
import 'package:sisolab_flutter_biosafety/core/utils/extensions/list_space_between.dart';

class FclImagePicker extends StatefulWidget {
  const FclImagePicker({Key? key, this.onChange}) : super(key: key);
  final void Function(List<PlatformFile> files)? onChange;

  @override
  State<FclImagePicker> createState() => _FclImagePickerState();
}

class _FclImagePickerState extends State<FclImagePicker> {
  List<PlatformFile> files = [];

  Widget get _fileImageList => Row(
        mainAxisAlignment: MainAxisAlignment.start,
        children: List.generate(
          files.length,
          (index) {
            return Container(
                height: 50,
                width: 50,
                margin: const EdgeInsets.only(right: 2),
                child: Container(
                    alignment: Alignment.center,
                    child: kIsWeb
                        ? Image.memory(files[index].bytes!, fit: BoxFit.cover)
                        : Image.file(File(files[index].path!),
                            fit: BoxFit.cover)));
          },
        ).withSpaceBetween(width: 10),
      );

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(
          height: 55,
          child: Row(
            children: [
              SizedBox(
                height: double.infinity,
                child: ElevatedButton(
                    style: const ButtonStyle(
                        backgroundColor:
                            MaterialStatePropertyAll<Color>(Colors.black)),
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
                      widget.onChange?.let((it) => it(result?.files ?? []));
                      setState(() {});
                    },
                    child: const Padding(
                        padding: EdgeInsets.all(8), child: Text("파일선택"))),
              ),
              Expanded(
                child: Container(
                  alignment: Alignment.centerLeft,
                  height: double.infinity,
                  decoration:
                      BoxDecoration(border: Border.all(color: Colors.black)),
                  child: const Padding(
                    padding: EdgeInsets.fromLTRB(20, 0, 0, 0),
                    child: Text("이미지를 선택해주세요."),
                  ),
                ),
              ),
            ].withSpaceBetween(width: 10),
          ),
        ),
        _fileImageList
      ].withSpaceBetween(height: 10),
    );
  }
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
      ),
    );
  }
}
