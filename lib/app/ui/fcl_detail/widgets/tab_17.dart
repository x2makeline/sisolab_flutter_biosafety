import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:sisolab_flutter_biosafety/app/global/widgets/fcl_divider.dart';
import 'package:sisolab_flutter_biosafety/app/global/widgets/fcl_input.dart';
import 'package:sisolab_flutter_biosafety/app/ui/fcl_detail/vms/fcl_detail_vm.dart';
import 'package:sisolab_flutter_biosafety/core/constants/constant.dart';

/// 12. 헤파필터 유닛 및 배기덕트 누기 확인
class Tab17 extends StatelessWidget {
  const Tab17({super.key});

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
              Text("12. 헤파필터 유닛 및 배기덕트 누기 확인",
                  style: TextStyle(fontSize: 34.sp)),
              SizedBox(height: 14.h),
              Row(
                children: [
                  Text("과년도 자료", style: TextStyle(fontSize: 28.sp)),
                  Obx(() => Checkbox(
                      value: vm.pastYearYn,
                      onChanged: (v) {
                        vm.pastYearYn = v ?? false;
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
                  label: "헤파필터 유닛, 배기덕트 압력 감소 시험",
                  preYn: vm.pastYearYn,
                  fieldList: [
                    FclImageField(
                        name: 'attfile58str', initialValue: vm.io.attfile58str),
                    FclRadioField(
                        name: 'd62',
                        map: yesOrNoMap,
                        preValue: vm.preData?.d62,
                        initialValue: vm.io.d62),
                    FclNoteField(
                        name: 'd152',
                        initialValue: vm.io.d152,
                        preValue: vm.preData?.d152)
                  ])),
          Obx(() => FclFieldView(
                  label: "헤파필터 유닛 완전성 테스트(PAO 테스트)",
                  preYn: vm.pastYearYn,
                  fieldList: [
                    FclImageField(
                        name: 'attfile59str', initialValue: vm.io.attfile59str),
                    FclRadioField(
                        name: 'd63',
                        map: yesOrNoMap,
                        preValue: vm.preData?.d63,
                        initialValue: vm.io.d63),
                    FclNoteField(
                        name: 'd153',
                        initialValue: vm.io.d153,
                        preValue: vm.preData?.d153)
                  ]))
        ],
      );
}
