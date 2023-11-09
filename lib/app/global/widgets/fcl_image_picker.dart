import 'dart:io';

import 'package:dartlin/control_flow.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_form_builder/flutter_form_builder.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:image_picker/image_picker.dart';
import 'package:image_picker_platform_interface/image_picker_platform_interface.dart';
import 'package:path_provider/path_provider.dart';
import 'package:sisolab_flutter_biosafety/app/global/styles/color_styles.dart';
import 'package:sisolab_flutter_biosafety/core/utils/extensions/list_space_between.dart';
import 'package:sisolab_flutter_biosafety/core/utils/mc_logger.dart';

class FclImagePicker extends StatefulWidget {
  const FclImagePicker({Key? key, required this.field, this.initialValue})
      : super(key: key);
  final List<String>? initialValue;
  final FormFieldState<List<String>> field;

  @override
  State<FclImagePicker> createState() => _FclImagePickerState();
}

class _FclImagePickerState extends State<FclImagePicker> with PLoggerMixin {
  late List<String> filePaths = [];

  @override
  void initState() {
    super.initState();
    filePaths = widget.field.value ?? widget.initialValue ?? filePaths;
  }

  final ImagePickerPlatform _picker = ImagePickerPlatform.instance;

  Future<String?> _convertFile(XFile? file) async {
    if (file != null) {
      final String path =
          await getApplicationDocumentsDirectory().then((value) => value.path);

      final dir = Directory(path);
      final l = dir.listSync();

      final newImagePath = '$path/${file.path.split('/').last}';
      pLog.i(l.map((e) => e.path));
      pLog.i(newImagePath);
      if (l.map((e) => e.path).contains(newImagePath)) {
        pLog.i("contain");
        return newImagePath;
      }

      final newImageFile = await File(file.path).copy(newImagePath);
      pLog.i("contain s");
      return newImageFile.path;
    }
    return null;
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
                    Get.bottomSheet(CupertinoActionSheet(
                      actions: [
                        CupertinoActionSheetAction(
                            onPressed: () async {
                              var picker = ImagePicker();
                              var image = await picker.pickImage(
                                  source: ImageSource.camera);
                              Get.back();

                              final newPath = await _convertFile(image);

                              newPath?.let((it) {
                                setState(() {
                                  filePaths = [...filePaths, it];
                                  widget.field.setValue(filePaths);
                                });
                              });
                            },
                            child: const Text(
                              "카메라",
                              style: TextStyle(color: ColorGroup.black),
                            )),
                        CupertinoActionSheetAction(
                            onPressed: () async {
                              var picker = ImagePicker();
                              var images = await picker.pickMultiImage();
                              Get.back();
                              if (images.isNotEmpty) {
                                final newPaths = await Future.wait(images.map(
                                    (e) async => (await _convertFile(e))!));

                                setState(() {
                                  filePaths = [...filePaths, ...newPaths];
                                  widget.field.setValue(filePaths);
                                });
                              }
                            },
                            child: const Text("갤러리",
                                style: TextStyle(color: ColorGroup.black)))
                      ],
                    ));
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
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Row(
              children: filePaths
                  .asMap()
                  .entries
                  .map((e) => Stack(
                        children: [
                          InkWell(
                            onTap: () {
                              Get.dialog(Center(
                                child: SizedBox(
                                  height: Get.context?.size?.height
                                      .let((it) => it - 100),
                                  width: Get.context?.size?.width
                                      .let((it) => it - 100),
                                  child: Image.file(
                                    File(e.value),
                                    fit: BoxFit.fill,
                                    width: 90,
                                    height: 90,
                                  ),
                                ),
                              ));
                            },
                            child: Image.file(
                              File(e.value),
                              fit: BoxFit.fill,
                              width: 90,
                              height: 90,
                            ),
                          ),
                          Positioned(
                              top: 0,
                              right: 0,
                              child: IconButton(
                                icon: const Icon(Icons.close),
                                onPressed: () {
                                  setState(() {
                                    filePaths.removeAt(e.key);
                                  });
                                },
                              )),
                        ],
                      ))
                  .toList()
                  .withSpaceBetween(width: 10),
            ),
          )
        ].withSpaceBetween(height: 15.h),
      );
}

class FormBuilderFclImagePicker
    extends FormBuilderFieldDecoration<List<String>> {
  FormBuilderFclImagePicker({
    super.key,
    required super.name,
    super.initialValue,
  }) : super(builder: (FormFieldState<List<String>> field) {
          pLogger.i('field.value ${field.value}');
          return FclImagePicker(
            field: field,
            initialValue: initialValue,
          );
        });
}
