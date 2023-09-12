import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:sisolab_flutter_biosafety/app/global/widgets/fcl_divider.dart';
import 'package:sisolab_flutter_biosafety/app/global/widgets/fcl_input.dart';
import 'package:sisolab_flutter_biosafety/app/ui/fcl_detail/vms/fcl_detail_vm.dart';
import 'package:sisolab_flutter_biosafety/core/constants/constant.dart';

/// 고위험 - 관리장부 및 기록 관리
class Tab30 extends StatelessWidget {
  const Tab30({super.key});

  FclDetailVm get vm => FclDetailVm.to;

  @override
  Widget build(BuildContext context) => Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text("관리장부 및 기록관리",
              style: TextStyle(fontSize: 34.sp, fontWeight: FontWeight.w500)),
          SizedBox(
            height: 22.h,
          ),
          const FclDivider.black(),
          Obx(() => FclFieldView(
                  label:
                      "고위험병원체 유래 및 특성, 사용 및 용도, 보존수량, 분리, 이동, 폐기 등 정보를 관리(사용내역)대장에 기록하여 보관하고 있는가?",
                  desc: const [
                    '※ 관리(사용내역)대장은 고위험병원체 폐기 후 5년간 보관'
                  ],
                  fieldList: [
                    FclRadioField(
                        name: 'd34',
                        map: yesOrNoNumMap,
                        initialValue: vm.io.d34),
                  ])),
          Obx(() => FclFieldView(
                  label:
                      "고위험병원체 전부 폐기 또는 타 기관 이동 등으로 해당 고위험병원체를 보존하지 않는 경우에는 관리(사용내역)대장에 그 내용을 기록하고 관계 행정기관의 장에 통지하고 있는가?",
                  fieldList: [
                    FclRadioField(
                        name: 'd35',
                        map: yesOrNoNumMap2,
                        initialValue: vm.io.d35),
                  ])),
          Obx(() => FclFieldView(
                  label: "고위험병원체 관련 대장 및 관련자료(파일포함)의 보안이 유지되고 있는가?",
                  fieldList: [
                    FclRadioField(
                        name: 'd36',
                        map: yesOrNoNumMap2,
                        initialValue: vm.io.d36),
                  ])),
        ],
      );
}
