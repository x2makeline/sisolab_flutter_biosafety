import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:sisolab_flutter_biosafety/app/global/widgets/fcl_divider.dart';
import 'package:sisolab_flutter_biosafety/app/global/widgets/fcl_input.dart';
import 'package:sisolab_flutter_biosafety/app/ui/fcl_detail/vms/fcl_detail_vm.dart';
import 'package:sisolab_flutter_biosafety/core/constants/constant.dart';

/// 14. HVAC 덕트시스템 제작 손상 등 품질상태
class Tab12 extends StatelessWidget {
  const Tab12({super.key});

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
              Text("14. HVAC 덕트시스템 제작 손상 등 품질상태",
                  style: TextStyle(fontSize: 34.sp)),
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
                  label: "HVAC 덕트시스템 제작 손상 등 품질상태",
                  preYn: vm.pastYearYn,
                  fieldList: [
                    FclImageField(
                        name: 'file61', initialValue: vm.io.file61),
                    FclRadioField(
                        name: 'd65',
                        map: yesOrNoMap,
                        preValue: vm.preData?.d65,
                        initialValue: vm.io.d65),
                    FclNoteField(
                        name: 'd155',
                        initialValue: vm.io.d155,
                        preValue: vm.preData?.d155)
                  ]))
        ],
      );
}
