import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:sisolab_flutter_biosafety/app/global/widgets/fcl_divider.dart';
import 'package:sisolab_flutter_biosafety/app/global/widgets/fcl_input.dart';
import 'package:sisolab_flutter_biosafety/app/ui/fcl_detail/vms/fcl_detail_vm.dart';
import 'package:sisolab_flutter_biosafety/core/constants/constant.dart';

/// 8. 유틸리티 가동성 확인
class Tab19 extends StatelessWidget {
  const Tab19({super.key});

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
              Text("8. 유틸리티 가동성 확인", style: TextStyle(fontSize: 34.sp)),
              SizedBox(height: 14.h),
              Row(
                children: [
                  Text("과년도 자료", style: TextStyle(fontSize: 28.sp)),
                  Obx(() => Checkbox(
                      value: vm.pastYearYn,
                      onChanged: (v) {
                        vm.setPastYearYn(v ?? false);;
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
                  label: "데이터 전송용 전자시스템",
                  preYn: vm.pastYearYn,
                  fieldList: [
                    FclImageField(
                        name: 'attfile45str', initialValue: vm.io.attfile45str),
                    FclRadioField(
                        name: 'd48',
                        map: yesOrNoMap,
                        preValue: vm.preData?.d48,
                        initialValue: vm.io.d48),
                    FclNoteField(
                        name: 'd138',
                        initialValue: vm.io.d138,
                        preValue: vm.preData?.d138)
                  ])),
          Obx(() => FclFieldView(
                  label: "배관역류 방지장치",
                  preYn: vm.pastYearYn,
                  fieldList: [
                    FclImageField(
                        name: 'attfile46str', initialValue: vm.io.attfile46str),
                    FclRadioField(
                        name: 'd49',
                        map: yesOrNoMap,
                        preValue: vm.preData?.d49,
                        initialValue: vm.io.d49),
                    FclNoteField(
                        name: 'd139',
                        initialValue: vm.io.d139,
                        preValue: vm.preData?.d139)
                  ])),
          Obx(() => FclFieldView(
                  label: "내부 차압 측정 계기 및 경보장치",
                  preYn: vm.pastYearYn,
                  fieldList: [
                    FclImageField(
                        name: 'attfile47str', initialValue: vm.io.attfile47str),
                    FclRadioField(
                        name: 'd50',
                        map: yesOrNoMap,
                        preValue: vm.preData?.d50,
                        initialValue: vm.io.d50),
                    FclNoteField(
                        name: 'd140',
                        initialValue: vm.io.d140,
                        preValue: vm.preData?.d140)
                  ])),
          Obx(() => FclFieldView(
                  label: "비상전원공급(UPS 등) 연동 확인",
                  preYn: vm.pastYearYn,
                  fieldList: [
                    FclImageField(
                        name: 'attfile48str', initialValue: vm.io.attfile48str),
                    FclRadioField(
                        name: 'd51',
                        map: yesOrNoMap,
                        preValue: vm.preData?.d51,
                        initialValue: vm.io.d51),
                    FclNoteField(
                        name: 'd141',
                        initialValue: vm.io.d141,
                        preValue: vm.preData?.d141)
                  ])),
          Obx(() => FclFieldView(
                  label: "가스공급 장치 설치 및 출입통제 확인",
                  preYn: vm.pastYearYn,
                  lastDividerYn: false,
                  fieldList: [
                    FclImageField(
                        name: 'attfile49str', initialValue: vm.io.attfile49str),
                    FclRadioField(
                        name: 'd52',
                        map: yesOrNoMap,
                        preValue: vm.preData?.d52,
                        initialValue: vm.io.d52),
                    FclNoteField(
                        name: 'd142',
                        initialValue: vm.io.d142,
                        preValue: vm.preData?.d142)
                  ])),
        ],
      );
}
