import 'dart:io';

import 'package:dartlin/control_flow.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_form_builder/flutter_form_builder.dart';
import 'package:form_builder_file_picker/form_builder_file_picker.dart';
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
  );

  @override
  void initState() {
    super.initState();
    // FormBu
    files = widget.initialValue ?? [];
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
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

                      setState(() {
                        widget.onChange?.let((it) => it(files));
                      });
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
        if(_fileImageList.isNotEmpty)
          SizedBox(
            height: 50,
            child: ListView(scrollDirection: Axis.horizontal , children: _fileImageList,),
          )
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
        initialValue: field.value,
      ),
    );
  }
}
