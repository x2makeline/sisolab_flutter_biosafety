import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:sisolab_flutter_biosafety/app/global/widgets/fcl_divider.dart';
import 'package:sisolab_flutter_biosafety/app/global/widgets/fcl_input.dart';
import 'package:sisolab_flutter_biosafety/app/ui/fcl_detail/vms/fcl_detail_vm.dart';
import 'package:sisolab_flutter_biosafety/core/constants/constant.dart';

/// 11. 급, 배기 연동 확인
class Tab21 extends StatelessWidget {
  const Tab21({super.key});

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
              Text("11. 급, 배기 연동 확인", style: TextStyle(fontSize: 34.sp)),
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
                  label: "급기팬 1 OFF의 경우, 실내 설정압력 유지 (상시음압)",
                  preYn: vm.pastYearYn,
                  fieldList: [
                    FclImageField(
                        name: 'file54', initialValue: vm.io.file54),
                    FclRadioField(
                        name: 'd58',
                        map: yesOrNoMap,
                        preValue: vm.preData?.d58,
                        initialValue: vm.io.d58),
                    FclNoteField(
                        name: 'd148',
                        initialValue: vm.io.d148,
                        preValue: vm.preData?.d148)
                  ])),
          Obx(() => FclFieldView(
                  label: "급기팬 2 OFF의 경우, 실내 설정압력 유지 (상시음압)",
                  preYn: vm.pastYearYn,
                  fieldList: [
                    FclImageField(
                        name: 'file55', initialValue: vm.io.file55),
                    FclRadioField(
                        name: 'd59',
                        map: yesOrNoMap,
                        preValue: vm.preData?.d59,
                        initialValue: vm.io.d59),
                    FclNoteField(
                        name: 'd149',
                        initialValue: vm.io.d149,
                        preValue: vm.preData?.d149)
                  ])),
          Obx(() => FclFieldView(
                  label: "배기팬 1 OFF의 경우, 실내 설정압력 유지 (상시음압)",
                  preYn: vm.pastYearYn,
                  fieldList: [
                    FclImageField(
                        name: 'file56', initialValue: vm.io.file56),
                    FclRadioField(
                        name: 'd60',
                        map: yesOrNoMap,
                        preValue: vm.preData?.d60,
                        initialValue: vm.io.d60),
                    FclNoteField(
                        name: 'd150',
                        initialValue: vm.io.d150,
                        preValue: vm.preData?.d150)
                  ])),
          Obx(() => FclFieldView(
                  label: "배기팬 2 OFF의 경우, 실내 설정압력 유지 (상시음압)",
                  preYn: vm.pastYearYn,
                  fieldList: [
                    FclImageField(
                        name: 'file57', initialValue: vm.io.file57),
                    FclRadioField(
                        name: 'd61',
                        map: yesOrNoMap,
                        preValue: vm.preData?.d61,
                        initialValue: vm.io.d61),
                    FclNoteField(
                        name: 'd151',
                        initialValue: vm.io.d151,
                        preValue: vm.preData?.d151)
                  ]))
        ],
      );
}
