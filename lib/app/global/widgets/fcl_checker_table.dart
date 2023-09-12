import 'dart:math';

import 'package:flutter/material.dart';
import 'package:flutter_form_builder/flutter_form_builder.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:sisolab_flutter_biosafety/app/global/styles/text_styles.dart';
import 'package:sisolab_flutter_biosafety/app/global/widgets/field_with_label.dart';
import 'package:sisolab_flutter_biosafety/app/global/widgets/form_builder_sign.dart';
import 'package:sisolab_flutter_biosafety/app/ui/fcl_detail/vms/fcl_detail_vm.dart';
import 'package:sisolab_flutter_biosafety/core/utils/extensions/list_space_between.dart';

class FclCheckerTable extends StatefulWidget {
  const FclCheckerTable({Key? key}) : super(key: key);

  @override
  State<FclCheckerTable> createState() => _FclCheckerTableState();
}

class _Check {
  String name;
  String? initialName;
  String dpName;
  String? initialDp;
  String signName;
  String? initialSign;

  _Check(
      {required this.name,
      this.initialName,
      required this.dpName,
      this.initialDp,
      required this.signName,
      this.initialSign});
}

class _FclCheckerTableState extends State<FclCheckerTable> {
  FclDetailVm get vm => FclDetailVm.to;

  List<_Check> get _checkerArrName => [
        _Check(
          initialName: vm.io.d170,
          name: "d170",
          dpName: "d169",
          initialDp: vm.io.d169,
          signName: "d185",
          initialSign: vm.io.d185,
        ),
        _Check(
          initialName: vm.io.d172,
          name: "d172",
          dpName: "d171",
          initialDp: vm.io.d171,
          signName: "d186",
          initialSign: vm.io.d186,
        ),
        _Check(
          initialName: vm.io.d174,
          name: "d174",
          dpName: "d173",
          initialDp: vm.io.d173,
          signName: "d187",
          initialSign: vm.io.d187,
        ),
        _Check(
          initialName: vm.io.d176,
          name: "d176",
          dpName: "d175",
          initialDp: vm.io.d175,
          signName: "d188",
          initialSign: vm.io.d188,
        ),
        _Check(
          initialName: vm.io.d178,
          name: "d178",
          dpName: "d177",
          initialDp: vm.io.d177,
          signName: "d189",
          initialSign: vm.io.d189,
        )
      ];

  int checkerCount = 0;

  _add() {
    setState(() {
      checkerCount = min(_checkerArrName.length - 1, checkerCount + 1);
    });
  }

  @override
  Widget build(BuildContext context) {
    return FieldWithLabel(
        label: "점검자 (소속기관 / 성명 / 서명)",
        child: Column(children: [
          ..._checkerArrName
              .getRange(0, checkerCount + 1)
              .map(
                (e) => Row(
                  children: [
                    Flexible(
                        child: FormBuilderTextField(
                      name: e.dpName,
                      initialValue: e.initialDp,
                    )),
                    Flexible(
                        child: Row(
                      children: [
                        Expanded(
                            child: FormBuilderTextField(
                          name: e.name,
                          initialValue: e.initialName,
                          decoration: const InputDecoration(hintText: "점검자성명"),
                        )),
                        SizedBox(
                          width: 10.w,
                        ),
                        FormBuilderSign(
                          name: e.signName,
                          initialValue: e.initialSign,
                        )
                      ],
                    ))
                  ].withSpaceBetween(width: 10.w),
                ),
              )
              .toList()
              .withSpaceBetween(height: 20.h),
          if (checkerCount < _checkerArrName.length - 1)
            Column(
              children: [
                SizedBox(height: 20.h),
                SizedBox(
                  width: double.infinity,
                  child: OutlinedButton(
                      onPressed: () {
                        _add();
                        // controller.addChecker();
                      },
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Image.asset(
                            "assets/images/img_plus.png",
                            width: 22.sp,
                            height: 22.sp,
                          ),
                          SizedBox(
                            width: 20.w,
                          ),
                          Text(
                            "점검자 추가",
                            style: buttonTextStyle,
                          ),
                        ],
                      )),
                )
              ],
            )
        ]));
  }
}
