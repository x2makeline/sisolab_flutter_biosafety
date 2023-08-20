import 'dart:math';

import 'package:flutter/material.dart';
import 'package:flutter_form_builder/flutter_form_builder.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:sisolab_flutter_biosafety/app/data/models/bio_io.dart';
import 'package:sisolab_flutter_biosafety/app/global/styles/text_styles.dart';
import 'package:sisolab_flutter_biosafety/app/global/widgets/field_with_label.dart';
import 'package:sisolab_flutter_biosafety/app/global/widgets/form_builder/form_builder_sign.dart';
import 'package:sisolab_flutter_biosafety/core/utils/extensions/list_space_between.dart';

class FclCheckerTable extends StatefulWidget {
  const FclCheckerTable({Key? key}) : super(key: key);

  @override
  State<FclCheckerTable> createState() => _FclCheckerTableState();
}

class _FclCheckerTableState extends State<FclCheckerTable> {
  static final _checkerArrName = [
    [BioIoName.d170.name, BioIoName.d169.name, BioIoName.d185.name],
    [BioIoName.d172.name, BioIoName.d171.name, BioIoName.d186.name],
    [BioIoName.d174.name, BioIoName.d172.name, BioIoName.d187.name],
    [BioIoName.d176.name, BioIoName.d173.name, BioIoName.d188.name],
    [BioIoName.d177.name, BioIoName.d174.name, BioIoName.d189.name],
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
                      name: e.elementAt(0),
                      initialValue: "질병관리청 의료안전예방국 생물안전평가과",
                    )),
                    Flexible(
                        child: Row(
                      children: [
                        Expanded(
                            child: FormBuilderTextField(
                          name: e.elementAt(1),

                          decoration: const InputDecoration(hintText: "점검자성명"),
                        )),
                        SizedBox(
                          width: 10.w,
                        ),
                        FormBuilderSign(name: e.elementAt(2))
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
                  height: 90.h,
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
