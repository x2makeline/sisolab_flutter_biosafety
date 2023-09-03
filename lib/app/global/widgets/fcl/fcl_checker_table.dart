import 'dart:math';

import 'package:flutter/material.dart';
import 'package:flutter_form_builder/flutter_form_builder.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:sisolab_flutter_biosafety/app/data/models/bio_io.dart';
import 'package:sisolab_flutter_biosafety/app/global/styles/text_styles.dart';
import 'package:sisolab_flutter_biosafety/app/global/widgets/field_with_label.dart';
import 'package:sisolab_flutter_biosafety/app/global/widgets/form_builder/form_builder_sign.dart';
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
    List<_Check> get  _checkerArrName => [
    _Check(
      initialName: vm.io.d170,
        name: BioIoName.d170.name,
        dpName: BioIoName.d169.name,
        initialDp : vm.io.d169,
        signName: BioIoName.d185.name,
      initialSign : vm.io.d185,
    ),
      _Check(
        initialName: vm.io.d172,
        name: BioIoName.d172.name,
        dpName: BioIoName.d171.name,
        initialDp : vm.io.d171,
        signName: BioIoName.d186.name,
        initialSign : vm.io.d186,
      ),
      _Check(
        initialName: vm.io.d174,
        name: BioIoName.d174.name,
        dpName: BioIoName.d173.name,
        initialDp : vm.io.d173,
        signName: BioIoName.d187.name,
        initialSign : vm.io.d187,
      ),
      _Check(
        initialName: vm.io.d176,
        name: BioIoName.d176.name,
        dpName: BioIoName.d175.name,
        initialDp : vm.io.d175,
        signName: BioIoName.d188.name,
        initialSign : vm.io.d188,
      ),
      _Check(
        initialName: vm.io.d178,
        name: BioIoName.d178.name,
        dpName: BioIoName.d177.name,
        initialDp : vm.io.d177,
        signName: BioIoName.d189.name,
        initialSign : vm.io.d189,
      )];

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
                        FormBuilderSign(name: e.signName, initialValue: e.initialSign,)
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
