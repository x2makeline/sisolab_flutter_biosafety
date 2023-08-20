import 'dart:typed_data';

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:signature/signature.dart';

class SignatureButton extends StatefulWidget {
  const SignatureButton(
      {Key? key, this.controller, this.initialValue, this.onChange})
      : super(key: key);

  final SignatureController? controller;
  final Uint8List? initialValue;
  final void Function(Uint8List? value)? onChange;

  @override
  State<SignatureButton> createState() => _SignatureButtonState();
}

class _SignatureButtonState extends State<SignatureButton> {
  late final SignatureController controller;
  Uint8List? unit8List;
  static final double _modalSingHeight = 600.h;
  static final double _modalSingWidth = 600.w;

  @override
  void initState() {
    super.initState();
    controller =
        widget.controller ?? SignatureController(penColor: Colors.black);

    unit8List = widget.initialValue;


  }

  Future<Uint8List?> get pngBytes async => await controller.toPngBytes(
      width: _modalSingWidth.toInt(), height: _modalSingHeight.toInt());

  // Future<Image?> get img async =>
  //     pngBytes.then((value) => value?.let((v) => Image.memory(v)));

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
        onTap: () {
          Get.defaultDialog(
              barrierDismissible: false,
              title: "서명",
              content: Signature(
                controller: controller,
                width: _modalSingWidth,
                height: _modalSingHeight,
              ),
              actions: [
                TextButton(
                    onPressed: () async {
                      if (controller.isNotEmpty) {
                        unit8List = await pngBytes;
                        controller.clear();

                        if (widget.onChange != null) {
                          widget.onChange!(unit8List);
                        }
                      }
                      setState(() {});
                      Get.back();
                    },
                    child: const Text("완료")),
                TextButton(
                    onPressed: () {
                      controller.clear();
                      Get.back();
                    },
                    child: const Text("닫기")),
                TextButton(
                    onPressed: () => controller.clear(),
                    child: const Text("다시하기"))
              ]);
        },
        child: Container(
            height: 90.h,
            width: 90.h,
            decoration: BoxDecoration(
              border: Border.all(width: 1),
            ),
            child: unit8List != null
                ? Image.memory(
                    unit8List!,
                    width: 90.h,
                    height: 90.h,
                  )
                : Center(
                    child: Text(
                    "[서명]",
                    style: TextStyle(fontSize: 28.sp),
                  ))));
  }
}
