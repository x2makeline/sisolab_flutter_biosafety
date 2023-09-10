import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:sisolab_flutter_biosafety/app/global/widgets/fcl_divider.dart';
import 'package:sisolab_flutter_biosafety/app/global/widgets/fcl_input.dart';
import 'package:sisolab_flutter_biosafety/app/ui/fcl_detail/vms/fcl_detail_vm.dart';
import 'package:sisolab_flutter_biosafety/core/constants/constant.dart';

/// 2. 실험구역 설치 적절성 확인
class Tab4 extends StatelessWidget {
  const Tab4({super.key});

  FclDetailVm get vm => FclDetailVm.to;

  @override
  Widget build(BuildContext context) => Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text("설치 ∙ 운영 적격성 평가",
              style: TextStyle(fontSize: 34.sp, fontWeight: FontWeight.w500)),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text("2. 실험구역 설치 적절성 확인", style: TextStyle(fontSize: 34.sp)),
              SizedBox(height: 14.h),
              Row(
                children: [
                  Text("과년도 자료", style: TextStyle(fontSize: 28.sp)),
                  Obx(() => Checkbox(
                      value: vm.pastYearYn,
                      onChanged: (v) {
                        vm.setPastYearYn(v ?? false);
                      }))
                ],
              )
            ],
          ),
          SizedBox(
            height: 22.h,
          ),
          const FclDivider.black(),
          Obx(() => FclFieldView(
                  label: "시설 도면과의 일치성",
                  preYn: vm.pastYearYn,
                  fieldList: [
                    FclImageField(
                        name: 'attfile6str', initialValue: vm.io.attfile6str),
                    FclRadioField(
                        name: 'd10',
                        map: yesOrNoMap,
                        preValue: vm.preData?.d10,
                        initialValue: vm.io.d10),
                    FclNoteField(
                        name: 'd99',
                        initialValue: vm.io.d99,
                        preValue: vm.preData?.d99)
                  ])),
          Obx(() => FclFieldView(
                  label: "주출입구 잠금장치 및 출입통제",
                  preYn: vm.pastYearYn,
                  fieldList: [
                    FclImageField(
                        name: 'attfile7str', initialValue: vm.io.attfile7str),
                    FclRadioField(
                        name: 'd11',
                        map: yesOrNoMap,
                        preValue: vm.preData?.d11,
                        initialValue: vm.io.d11),
                    FclNoteField(
                        name: 'd100',
                        initialValue: vm.io.d100,
                        preValue: vm.preData?.d100)
                  ])),
          Obx(() => FclFieldView(
                  label: "장비 반출 가능한 문 설치",
                  preYn: vm.pastYearYn,
                  fieldList: [
                    FclImageField(
                        name: 'attfile8str', initialValue: vm.io.attfile8str),
                    FclRadioField(
                        name: 'd12',
                        map: yesOrNoMap,
                        preValue: vm.preData?.d12,
                        initialValue: vm.io.d12),
                    FclNoteField(
                        name: 'd101',
                        initialValue: vm.io.d101,
                        preValue: vm.preData?.d101)
                  ])),
          Obx(() => FclFieldView(
                  label: "밀폐구역 내 인터락(수동조작 가능)",
                  preYn: vm.pastYearYn,
                  fieldList: [
                    FclImageField(
                        name: 'attfile9str', initialValue: vm.io.attfile9str),
                    FclRadioField(
                        name: 'd13',
                        map: yesOrNoMap,
                        preValue: vm.preData?.d13,
                        initialValue: vm.io.d13),
                    FclNoteField(
                        name: 'd102',
                        initialValue: vm.io.d102,
                        preValue: vm.preData?.d102)
                  ])),
          Obx(() => FclFieldView(
                  label: "밀폐구역 내 인터락(수동조작 가능)",
                  preYn: vm.pastYearYn,
                  fieldList: [
                    FclImageField(
                        name: 'attfile10str', initialValue: vm.io.attfile10str),
                    FclRadioField(
                        name: 'd14',
                        map: yesOrNoMap,
                        preValue: vm.preData?.d14,
                        initialValue: vm.io.d14),
                    FclNoteField(
                        name: 'd103',
                        initialValue: vm.io.d103,
                        preValue: vm.preData?.d103)
                  ])),
          Obx(() => FclFieldView(
                  label: "비상샤워 설비 가동",
                  preYn: vm.pastYearYn,
                  lastDividerYn: false,
                  fieldList: [
                    FclImageField(
                        name: 'attfile11str', initialValue: vm.io.attfile11str),
                    FclRadioField(
                        name: 'd15',
                        map: yesOrNoMap,
                        preValue: vm.preData?.d15,
                        initialValue: vm.io.d15),
                    FclNoteField(
                        name: 'd104',
                        initialValue: vm.io.d104,
                        preValue: vm.preData?.d104)
                  ])),
        ],
      );
}
