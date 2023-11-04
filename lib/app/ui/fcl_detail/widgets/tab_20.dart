import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:sisolab_flutter_biosafety/app/global/widgets/fcl_divider.dart';
import 'package:sisolab_flutter_biosafety/app/global/widgets/fcl_input.dart';
import 'package:sisolab_flutter_biosafety/app/ui/fcl_detail/vms/fcl_detail_vm.dart';
import 'package:sisolab_flutter_biosafety/core/constants/constant.dart';

/// 9. 내부로의 일방향 공기흐름 확인
class Tab20 extends StatelessWidget {
  const Tab20({super.key});

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
              Text("9. 내부로의 일방향 공기흐름 확인", style: TextStyle(fontSize: 34.sp)),
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
                  label: "실험구역 내 상대적으로 순차적인 음압 유지(환기횟수 10회 이상)",
                  preYn: vm.pastYearYn,
                  fieldList: [
                    FclImageField(
                        name: 'file50', ),
                    FclRadioField(
                        name: 'd53',
                        map: yesOrNoMap,
                        preValue: vm.preData?.d53,
                        initialValue: vm.io.d53),
                    FclNoteField(
                        name: 'd143',
                        initialValue: vm.io.d143,
                        preValue: vm.preData?.d143)
                  ])),
          Obx(() => FclFieldView(
                  label: "차압 측정(청정지역과 오염지역은 최소 –24 Pa 유지)",
                  preYn: vm.pastYearYn,
                  fieldList: [
                    FclRadioField(
                        name: 'd54',
                        map: yesOrNoMap,
                        preValue: vm.preData?.d54,
                        initialValue: vm.io.d54),
                    FclNoteField(
                        name: 'd144',
                        initialValue: vm.io.d144,
                        preValue: vm.preData?.d144)
                  ])),
          Obx(() => FclFieldView(
                  label: "밀폐구역 내 실간차압이 -7.6 Pa 이상 유지",
                  preYn: vm.pastYearYn,
                  fieldList: [
                    FclImageField(
                        name: 'file51', ),
                    FclRadioField(
                        name: 'd55',
                        map: yesOrNoMap,
                        preValue: vm.preData?.d55,
                        initialValue: vm.io.d55),
                    FclNoteField(
                        name: 'd145',
                        initialValue: vm.io.d145,
                        preValue: vm.preData?.d145)
                  ])),
          Obx(() => FclFieldView(
                  label: "밀폐구역 내 실간 일방향 기류 확인",
                  preYn: vm.pastYearYn,
                  fieldList: [
                    FclImageField(
                        name: 'file52', ),
                    FclRadioField(
                        name: 'd56',
                        map: yesOrNoMap,
                        preValue: vm.preData?.d56,
                        initialValue: vm.io.d56),
                    FclNoteField(
                        name: 'd146',
                        initialValue: vm.io.d146,
                        preValue: vm.preData?.d146)
                  ]))
        ],
      );
}
