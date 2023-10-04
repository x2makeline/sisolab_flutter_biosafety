import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:sisolab_flutter_biosafety/app/global/widgets/fcl_divider.dart';
import 'package:sisolab_flutter_biosafety/app/global/widgets/fcl_input.dart';
import 'package:sisolab_flutter_biosafety/app/ui/fcl_detail/vms/fcl_detail_vm.dart';
import 'package:sisolab_flutter_biosafety/core/constants/constant.dart';

/// 13. 시설 자동제어시스템의 재부팅시, 운영 설정값 유지
class Tab13 extends StatelessWidget {
  const Tab13({super.key});

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
              Text("13. 시설 자동제어시스템의 재부팅시, 운영 설정값 유지",
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
                  label: "시설 자동제어시스템의 재부팅시, 운영 설정값 유지",
                  preYn: vm.pastYearYn,
                  fieldList: [
                    FclImageField(
                        name: 'file60', initialValue: vm.io.file60),
                    FclRadioField(
                        name: 'd64',
                        map: yesOrNoMap,
                        preValue: vm.preData?.d64,
                        initialValue: vm.io.d64),
                    FclNoteField(
                        name: 'd154',
                        initialValue: vm.io.d154,
                        preValue: vm.preData?.d154)
                  ]))
        ],
      );
}
