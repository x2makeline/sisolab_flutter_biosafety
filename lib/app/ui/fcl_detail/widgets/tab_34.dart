import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:sisolab_flutter_biosafety/app/global/widgets/fcl_divider.dart';
import 'package:sisolab_flutter_biosafety/app/global/widgets/fcl_input.dart';
import 'package:sisolab_flutter_biosafety/app/ui/fcl_detail/vms/fcl_detail_vm.dart';
import 'package:sisolab_flutter_biosafety/core/constants/constant.dart';

/// 고위험 - 인적 보안
class Tab34 extends StatelessWidget {
  const Tab34({super.key});

  FclDetailVm get vm => FclDetailVm.to;

  @override
  Widget build(BuildContext context) => Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text("인적 보안",
              style: TextStyle(fontSize: 34.sp, fontWeight: FontWeight.w500)),
          SizedBox(
            height: 22.h,
          ),
          const FclDivider.black(),
          Obx(() => FclFieldView(
                  label:
                      "고위험병원체 관리자, 취급자 등을 채용하기 전에 고위험병원체 취급기준(「감염병의 예방 및 관리에 관한 법률」제23조의4 및 시행규칙 제20조의9) 에 해당여부를 확인하는가?",
                  fieldList: [
                    FclRadioField(
                        name: 'd51',
                        map: yesOrNoNumMap2,
                        initialValue: vm.io.d51),
                  ])),
          Obx(() => FclFieldView(
                  lastDividerYn: false,
                  label:
                      "고위험병원체를 작업할 경우 단독으로 출입하여 작업하지 못하게 하는 “두 작업자 규칙”을 시행하고 있는가?",
                  fieldList: [
                    FclRadioField(
                        name: 'd52',
                        map: {...yesOrNoNumMap2, "3": "해당 없음(보존용의 경우)"},
                        initialValue: vm.io.d52),
                  ])),
        ],
      );
}
