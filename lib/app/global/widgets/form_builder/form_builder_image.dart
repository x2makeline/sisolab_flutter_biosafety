import 'package:flutter/material.dart';
import 'package:form_builder_file_picker/form_builder_file_picker.dart';
import 'package:sisolab_flutter_biosafety/core/utils/extensions/list_space_between.dart';

class FormBuilderImage extends StatelessWidget {
  const FormBuilderImage({super.key, required this.name, this.onSaved});

  final String name;
  final void Function(List<PlatformFile>?)? onSaved;

  @override
  Widget build(BuildContext context) {
    return FormBuilderFilePicker(
      onSaved: onSaved,
      decoration: const InputDecoration(enabledBorder: InputBorder.none),
      name: name,
      previewImages: true,
      customFileViewerBuilder: (list, fn) {
        return list != null && list.isNotEmpty
            ? Row(
                children: list
                    .map((e) => Image.memory(
                          e.bytes!,
                          height: 50,
                          width: 50,
                        ))
                    .toList()
                    .withSpaceBetween(width: 20),
              )
            : const SizedBox.shrink();
      },
      allowMultiple: true,
      withData: true,
      typeSelectors: [
        TypeSelector(
          type: FileType.image,
          selector: Row(
            children: [
              Container(
                color: Colors.black,
                child: const Text(
                  "파일선택",
                  style: TextStyle(color: Colors.white),
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
