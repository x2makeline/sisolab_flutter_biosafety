import 'package:dartlin/control_flow.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:signature/signature.dart';
import 'package:sisolab_flutter_biosafety/app/global/decorations/input_decoration.dart';
import 'package:sisolab_flutter_biosafety/app/global/styles/color_styles.dart';
import 'package:sisolab_flutter_biosafety/core/utils/convert.util.dart';

class SignatureButton extends StatefulWidget {
  const SignatureButton(
      {Key? key, this.controller, this.initialValue, this.onChange})
      : super(key: key);

  final SignatureController? controller;
  final String? initialValue;
  final void Function(String? value)? onChange;

  @override
  State<SignatureButton> createState() => _SignatureButtonState();
}

class _SignatureButtonState extends State<SignatureButton> {
  late final SignatureController controller;
  String? base64;
  static final double _modalSingHeight = 600.h;
  static final double _modalSingWidth = 600.w;

  @override
  void initState() {
    super.initState();
    controller =
        widget.controller ?? SignatureController(penColor: Colors.black);

    if (widget.initialValue != null) {
      base64 = widget.initialValue;
      iff(widget.onChange != null, () => widget.onChange!(base64));
    }
  }

  Future<String?> get base64ByController async => controller.isEmpty
      ? null
      : uint8ListTob64((await controller.toPngBytes(
          width: _modalSingWidth.toInt(), height: _modalSingHeight.toInt()))!);

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
                        base64 = await base64ByController;
                        controller.clear();

                        if (widget.onChange != null) {
                          widget.onChange!(base64);
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
              border: Border.all(width: 1, color: ColorGroup.gray),
            ),
            child: base64 != null && Uri.parse(base64!).data != null
                ? Image.memory(
                    Uri.parse(base64!).data!.contentAsBytes(),
                    width: 90.h,
                    height: 90.h,
                  )
                : Stack(
              children: [
                const Center(
                  child: Text("[서명]"),
                ),
                TextField(
                  decoration: InputDecoration(
                    disabledBorder: textFieldDecoration.border,
                  ),
                  enabled: false,
                )
              ],
            )));
  }
}
