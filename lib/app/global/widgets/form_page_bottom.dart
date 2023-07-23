import 'package:dartlin/control_flow.dart';
import 'package:flutter/material.dart';

import '../models/fcl_detail_controller.dart';

class FormPageBottom extends StatelessWidget {
  FormPageBottom({super.key});

  final _controller = FclDetailController.to;

  @override
  Widget build(BuildContext context) {
    final formKey = _controller.formKey;

    return Column(
      children: [
        const Divider(),
        Row(
          children: [
            ElevatedButton(onPressed: () {}, child: const Text("삭제")),
            ElevatedButton(onPressed: () {}, child: const Text("미리보기")),
            ElevatedButton(onPressed: () {}, child: const Text("인쇄하기")),
            ElevatedButton(onPressed: () {}, child: const Text("PDF받기")),
            ElevatedButton(onPressed: () {}, child: const Text("수정/진행이력")),
            ElevatedButton(onPressed: () {}, child: const Text("취소하기")),
            ElevatedButton(

                onPressed: () {
                  formKey.currentState?.let((currentState) {
                    if (currentState.validate()) {
                      currentState.save();
                      print(currentState.value);
                    }
                  });
                },
                child: const Text("제출하기")),
          ],
        )
      ],
    );
  }
}
