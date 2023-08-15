import 'package:dartlin/control_flow.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:sisolab_flutter_biosafety/app/global/styles/text_styles.dart';
import 'package:sisolab_flutter_biosafety/app/global/widgets/fcl_divider.dart';
import 'package:sisolab_flutter_biosafety/core/utils/extensions/list_space_between.dart';
import 'package:velocity_x/velocity_x.dart';

import '../models/fcl_detail_controller.dart';

enum _ButtonType { white, green }

class FormPageBottom extends StatelessWidget {
  FormPageBottom({super.key});

  final _controller = FclDetailController.to;

  Widget _button(_ButtonType type,
          List<Widget> Function(TextStyle style) childrenBuilder) =>
      Builder(
          builder: (context) => ElevatedButton(
              onPressed: () {},
              style: ButtonStyle(
                  elevation: const MaterialStatePropertyAll<double>(0),
                  backgroundColor: MaterialStatePropertyAll<Color>(when(type, {
                    _ButtonType.white: () => Colors.white,
                    _ButtonType.green: () => Theme.of(context).primaryColor
                  })!),
                  side: const MaterialStatePropertyAll<BorderSide>(
                      BorderSide(color: Color(0xffe0e0e0)))),
              child: when(type, {
                _ButtonType.white: () => childrenBuilder(
                      Theme.of(context).textTheme.bodyMedium!,
                    ),
                _ButtonType.green: () => childrenBuilder(Theme.of(context)
                    .textTheme
                    .bodyMedium!
                    .copyWith(color: Colors.white))
              })!
                  .hStack(
                      crossAlignment: CrossAxisAlignment.center,
                      alignment: MainAxisAlignment.center)
                  .centered()));

  @override
  Widget build(BuildContext context) => Column(
        children: [
          const FclDivider.form(),
          Padding(
              padding: EdgeInsets.only(bottom: 80.h, top: 40.h),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    children: [
                      OutlinedButton(
                          onPressed: () {},
                          child: Row(
                            children: [
                              Icon(
                                Icons.arrow_back_ios,
                                size: buttonTextStyle.fontSize,
                              ),
                              const Text(
                                "이전",
                              ),
                            ],
                          )),
                      OutlinedButton(
                          onPressed: () {},
                          child: Row(
                            children: [
                              const Text(
                                "다음",
                              ),
                              Icon(
                                Icons.arrow_forward_ios,
                                size: buttonTextStyle.fontSize,
                              ),
                            ],
                          ))
                    ].withSpaceBetween(width: 20.w),
                  ),
                  Row(
                    children: [
                      OutlinedButton(onPressed: () {}, child: Text("취소하기")),
                      OutlinedButton(onPressed: () {}, child: Text("인쇄하기")),
                      OutlinedButton(onPressed: () {}, child: Text("미리보기")),
                      OutlinedButton(onPressed: () {}, child: Text("PDF받기")),
                      ElevatedButton(onPressed: () {}, child: Text("저장하기")),
                    ].withSpaceBetween(width: 20.w),
                  )
                ],
              ))
        ],
      );
}
