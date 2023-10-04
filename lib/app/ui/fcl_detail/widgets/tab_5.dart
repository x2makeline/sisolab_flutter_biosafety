import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:sisolab_flutter_biosafety/app/global/widgets/fcl_divider.dart';
import 'package:sisolab_flutter_biosafety/app/global/widgets/fcl_input.dart';
import 'package:sisolab_flutter_biosafety/app/ui/fcl_detail/vms/fcl_detail_vm.dart';
import 'package:sisolab_flutter_biosafety/core/constants/constant.dart';

/// 공기조절
class Tab5 extends StatelessWidget {
  const Tab5({super.key});

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
              Text("3. 공기조절", style: TextStyle(fontSize: 34.sp)),
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
                  label: "급기 덕트에 헤파 필터 설치",
                  preYn: vm.pastYearYn,
                  fieldList: [
                    FclImageField(
                        name: 'file12', initialValue: vm.io.file12),
                    FclRadioField(
                        name: 'd16',
                        map: yesOrNoMap,
                        preValue: vm.preData?.d16,
                        initialValue: vm.io.d16),
                    FclNoteField(
                        name: 'd105',
                        initialValue: vm.io.d105,
                        preValue: vm.preData?.d105)
                  ])),
          Obx(() => FclFieldView(
                  label: "배기에 카본필터 등 냄새제거 장치 설치",
                  preYn: vm.pastYearYn,
                  lastDividerYn: false,
                  fieldList: [
                    FclImageField(
                        name: 'file13', initialValue: vm.io.file13),
                    FclRadioField(
                        name: 'd17',
                        map: yesOrNoMap,
                        preValue: vm.preData?.d17,
                        initialValue: vm.io.d17),
                    FclNoteField(
                        name: 'd106',
                        initialValue: vm.io.d106,
                        preValue: vm.preData?.d106)
                  ])),
        ],
      );
}
