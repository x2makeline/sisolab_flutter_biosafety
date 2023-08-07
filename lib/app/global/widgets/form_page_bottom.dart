import 'package:dartlin/control_flow.dart';
import 'package:flutter/material.dart';
import 'package:sisolab_flutter_biosafety/app/global/widgets/fcl_divider.dart';
import 'package:sisolab_flutter_biosafety/core/utils/extensions/double.dart';
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
          builder: (context) =>
              ElevatedButton(
                  onPressed: () {},
                  style: ButtonStyle(
                      elevation: const MaterialStatePropertyAll<double>(0),
                      backgroundColor: MaterialStatePropertyAll<Color>(
                          when(type, {
                            _ButtonType.white: () => Colors.white,
                            _ButtonType.green: () =>
                            Theme
                                .of(context)
                                .primaryColor
                          })!),
                      side: const MaterialStatePropertyAll<BorderSide>(
                          BorderSide(color: Color(0xffe0e0e0)))),
                  child: when(type, {
                    _ButtonType.white: () =>
                        childrenBuilder(
                          Theme
                              .of(context)
                              .textTheme
                              .bodyMedium!,
                        ),
                    _ButtonType.green: () =>
                        childrenBuilder(Theme
                            .of(context)
                            .textTheme
                            .bodyMedium!
                            .copyWith(color: Colors.white))
                  })!
                      .hStack(
                      crossAlignment: CrossAxisAlignment.center,
                      alignment: MainAxisAlignment.center)
                      .centered()));

  @override
  Widget build(BuildContext context) =>
      Column(
        children: [
          FclDivider.form(),
          Padding(
            padding: EdgeInsets.only(bottom: 80.sz, top: 40.sz),
            child: [
              [
                _button(
                    _ButtonType.white,
                        (style) =>
                    [
                      Icon(
                        Icons.arrow_back_ios,
                        color: style.color,
                        size: style.fontSize,
                      ),
                      Text(
                        "이전",
                        style: style,
                      ),
                    ]),
                _button(
                    _ButtonType.white,
                        (style) =>
                    [
                      Text(
                        "다음",
                        style: style,
                      ),
                      Icon(
                        Icons.arrow_forward_ios,
                        color: style.color,
                        size: style.fontSize,
                      ),
                    ]),
              ].withSpaceBetween(width: 20.sz).hStack(),
              [
                _button(
                    _ButtonType.white,
                        (style) =>
                    [
                      Text(
                        "취소하기",
                        style: style,
                      ),
                    ]),
                _button(
                    _ButtonType.white,
                        (style) =>
                    [
                      Text(
                        "인쇄하기",
                        style: style,
                      ),
                    ]),
                _button(
                    _ButtonType.white,
                        (style) =>
                    [
                      Text(
                        "미리보기",
                        style: style,
                      ),
                    ]),
                _button(
                    _ButtonType.white,
                        (style) =>
                    [
                      Text(
                        "PDF받기",
                        style: style,
                      ),
                    ]),
                _button(
                    _ButtonType.green,
                        (style) =>
                    [
                      Text("저장하기", style: style),
                    ])
              ].withSpaceBetween(width: 20.sz).hStack()
            ]
                .hStack(alignment: MainAxisAlignment.spaceBetween)
                .box
                .height(90.sz)
                .make(),
          )
        ],
      );
}
