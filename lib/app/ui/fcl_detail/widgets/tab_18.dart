import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:sisolab_flutter_biosafety/app/global/widgets/fcl_divider.dart';
import 'package:sisolab_flutter_biosafety/app/global/widgets/fcl_input.dart';
import 'package:sisolab_flutter_biosafety/app/ui/fcl_detail/vms/fcl_detail_vm.dart';
import 'package:sisolab_flutter_biosafety/core/constants/constant.dart';

/// 7. 비상 시 가동성 확인
class Tab18 extends StatelessWidget {
  const Tab18({super.key});

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
              Text("7. 비상 시 가동성 확인", style: TextStyle(fontSize: 34.sp)),
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
                  label: "비상장비(손전등, 구급상자) 비치",
                  preYn: vm.pastYearYn,
                  fieldList: [
                    FclImageField(name: 'd237', initialValue: vm.iof.d237),
                    FclRadioField(
                        name: 'd40',
                        map: yesOrNoMap,
                        preValue: vm.preData?.d40,
                        initialValue: vm.io.d40),
                    FclNoteField(
                        name: 'd130',
                        initialValue: vm.io.d130,
                        preValue: vm.preData?.d130)
                  ])),
          Obx(() => FclFieldView(
                  label: "양방향 통신 시스템(인터폰, 전화 등)",
                  preYn: vm.pastYearYn,
                  fieldList: [
                    FclImageField(name: 'd238', initialValue: vm.iof.d238),
                    FclRadioField(
                        name: 'd41',
                        map: yesOrNoMap,
                        preValue: vm.preData?.d41,
                        initialValue: vm.io.d41),
                    FclNoteField(
                        name: 'd131',
                        initialValue: vm.io.d131,
                        preValue: vm.preData?.d131)
                  ])),
          Obx(() => FclFieldView(
                  label: "CCTV 설치 위치 적절성 및 동작 확인",
                  preYn: vm.pastYearYn,
                  fieldList: [
                    FclImageField(name: 'd239', initialValue: vm.iof.d239),
                    FclRadioField(
                        name: 'd42',
                        map: yesOrNoMap,
                        preValue: vm.preData?.d42,
                        initialValue: vm.io.d42),
                    FclNoteField(
                        name: 'd132',
                        initialValue: vm.io.d132,
                        preValue: vm.preData?.d132)
                  ])),
          Obx(() => FclFieldView(
                  label: "경보장치의 적정 위치 설치",
                  preYn: vm.pastYearYn,
                  fieldList: [
                    FclImageField(name: 'd240', initialValue: vm.iof.d240),
                    FclRadioField(
                        name: 'd43',
                        map: yesOrNoMap,
                        preValue: vm.preData?.d43,
                        initialValue: vm.io.d43),
                    FclNoteField(
                        name: 'd133',
                        initialValue: vm.io.d133,
                        preValue: vm.preData?.d133)
                  ])),
          Obx(() => FclFieldView(
                  label: "실간 차압역전 및 양압 형성 시 경보",
                  preYn: vm.pastYearYn,
                  fieldList: [
                    FclImageField(name: 'd241', initialValue: vm.iof.d241),
                    FclRadioField(
                        name: 'd44',
                        map: yesOrNoMap,
                        preValue: vm.preData?.d44,
                        initialValue: vm.io.d44),
                    FclNoteField(
                        name: 'd134',
                        initialValue: vm.io.d134,
                        preValue: vm.preData?.d134)
                  ])),
          Obx(() => FclFieldView(
                  label: "비상조명, 피난 유도등",
                  preYn: vm.pastYearYn,
                  fieldList: [
                    FclImageField(name: 'd242', initialValue: vm.iof.d242),
                    FclRadioField(
                        name: 'd45',
                        map: yesOrNoMap,
                        preValue: vm.preData?.d45,
                        initialValue: vm.io.d45),
                    FclNoteField(
                        name: 'd135',
                        initialValue: vm.io.d135,
                        preValue: vm.preData?.d135)
                  ])),
          Obx(() => FclFieldView(
                  label: "소화설비/장비 구비",
                  preYn: vm.pastYearYn,
                  fieldList: [
                    FclImageField(name: 'd243', initialValue: vm.iof.d243),
                    FclRadioField(
                        name: 'd46',
                        map: yesOrNoMap,
                        preValue: vm.preData?.d46,
                        initialValue: vm.io.d46),
                    FclNoteField(
                        name: 'd136',
                        initialValue: vm.io.d136,
                        preValue: vm.preData?.d136)
                  ])),
          Obx(() => FclFieldView(
                  label: "밀폐구역 내 스필 시 대응 장비(킷트) 등 구비",
                  preYn: vm.pastYearYn,
                  lastDividerYn: false,
                  fieldList: [
                    FclImageField(name: 'd244', initialValue: vm.iof.d244),
                    FclRadioField(
                        name: 'd47',
                        map: yesOrNoMap,
                        preValue: vm.preData?.d47,
                        initialValue: vm.io.d47),
                    FclNoteField(
                        name: 'd137',
                        initialValue: vm.io.d137,
                        preValue: vm.preData?.d137)
                  ])),
        ],
      );
}
