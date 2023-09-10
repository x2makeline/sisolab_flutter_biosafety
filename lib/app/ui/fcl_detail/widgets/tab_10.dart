import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:sisolab_flutter_biosafety/app/global/widgets/fcl_divider.dart';
import 'package:sisolab_flutter_biosafety/app/global/widgets/fcl_input.dart';
import 'package:sisolab_flutter_biosafety/app/ui/fcl_detail/vms/fcl_detail_vm.dart';
import 'package:sisolab_flutter_biosafety/core/constants/constant.dart';

/// 10. 밀폐구역 내 환기 회수 확인
class Tab10 extends StatelessWidget {
  const Tab10({super.key});

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
              Text("10. 밀폐구역 내 환기 회수 확인", style: TextStyle(fontSize: 34.sp)),
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
                  label: "유효 교정장비 사용한 급, 배기 풍량 측정",
                  preYn: vm.pastYearYn,
                  fieldList: [
                    FclImageField(
                        name: 'attfile53str', initialValue: vm.io.attfile53str),
                    FclRadioField(
                        name: 'd57',
                        map: yesOrNoMap,
                        preValue: vm.preData?.d57,
                        initialValue: vm.io.d57),
                    FclNoteField(
                        name: 'd147',
                        initialValue: vm.io.d147,
                        preValue: vm.preData?.d147)
                  ])),
        ],
      );
}
