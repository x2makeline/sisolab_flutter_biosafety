import 'package:flutter/material.dart';
import 'package:flutter_form_builder/flutter_form_builder.dart';
import 'package:get/get.dart';
import 'package:signature/signature.dart';

class FormBuilderSign extends FormBuilderFieldDecoration<List<Point>> {
  final SignatureController? controller;

  FormBuilderSign(
      {super.key,
      required super.name,
      this.controller,
      List<Point>? initialValue})
      : super(
            initialValue: controller != null ? controller.value : initialValue,
            builder: (FormFieldState<List<Point>?> field) {
              final state = field as _FormBuilderSignatureFieldState;

              final controller = state._effectiveController!;
              return GestureDetector(
                  onTap: () {
                    final prevValue = controller.value.toList();
                    Get.defaultDialog(
                        barrierDismissible: false,
                        title: "서명",
                        content: Signature(
                          controller: controller,
                          width: 300,
                          height: 300,
                        ),
                        actions: [
                          TextButton(
                              onPressed: () {
                                Get.back();
                              },
                              child: const Text("완료")),
                          TextButton(
                              onPressed: () {
                                Get.back();
                                controller.points = prevValue;
                              },
                              child: const Text("닫기")),
                          TextButton(
                              onPressed: () => controller.clear(),
                              child: const Text("다시하기"))
                        ]);
                  },
                  child: Container(
                    height: 100,
                    color: Colors.blue,
                    width: 100,
                    child: controller.toSVG(width: 100, height: 100) ??
                        Text("[서명]"),
                  ));
            });

  @override
  FormBuilderFieldDecorationState<FormBuilderSign, List<Point>> createState() =>
      _FormBuilderSignatureFieldState();
}

class _FormBuilderSignatureFieldState
    extends FormBuilderFieldDecorationState<FormBuilderSign, List<Point>> {
  SignatureController? get _effectiveController =>
      widget.controller ?? _controller;

  SignatureController? _controller;

  @override
  void initState() {
    super.initState();
    _controller = widget.controller ?? SignatureController(points: value);
    _controller!.addListener(_handleControllerChanged);
  }

  @override
  void dispose() {
    _controller!.removeListener(_handleControllerChanged);
    if (null == widget.controller) {
      _controller!.dispose();
    }
    super.dispose();
  }

  @override
  void reset() {
    super.reset();
    setState(() {
      _effectiveController!.value = initialValue ?? List.empty();
    });
  }

  @override
  void didChange(List<Point>? value) {
    super.didChange(value);

    if (_effectiveController!.value != value) {
      setState(() {});
      _effectiveController!.value = value ?? List.empty();
    }
  }

  void _handleControllerChanged() {
    if (_effectiveController!.value != (value ?? List.empty())) {
      didChange(_effectiveController!.value);
    }
  }
}


