import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:sisolab_flutter_biosafety/app/global/widgets/fcl_divider.dart';
import 'package:sisolab_flutter_biosafety/app/global/widgets/fcl_input.dart';
import 'package:sisolab_flutter_biosafety/app/ui/fcl_detail/vms/fcl_detail_vm.dart';
import 'package:sisolab_flutter_biosafety/core/constants/constant.dart';

/// 6. 생물안전 정보 제공 및 이행
class Tab25 extends StatelessWidget {
  const Tab25({super.key});

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
              Text("6. 생물안전 정보 제공 및 이행", style: TextStyle(fontSize: 34.sp)),
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
                  label: "생물위해표지판(사용병원체, 안전관리자명) 게시",
                  preYn: vm.pastYearYn,
                  fieldList: [
                    FclImageField(
                        name: 'attfile30str', initialValue: vm.io.attfile30str),
                    FclRadioField(
                        name: 'd34',
                        map: yesOrNoMap,
                        preValue: vm.preData?.d34,
                        initialValue: vm.io.d34),
                    FclNoteField(
                        name: 'd123',
                        initialValue: vm.io.d123,
                        preValue: vm.preData?.d123)
                  ])),
          Obx(() => FclFieldView(
                  label: "개인보호구 착,탈의 절차 게시",
                  preYn: vm.pastYearYn,
                  fieldList: [
                    FclImageField(
                        name: 'attfile31str', initialValue: vm.io.attfile31str),
                    FclRadioField(
                        name: 'd35',
                        map: yesOrNoMap,
                        preValue: vm.preData?.d35,
                        initialValue: vm.io.d35),
                    FclNoteField(
                        name: 'd124',
                        initialValue: vm.io.d124,
                        preValue: vm.preData?.d124)
                  ])),
          Obx(() => FclFieldView(
                  label: "밀폐구역 내 각 실험실 입구 차압계 설치",
                  preYn: vm.pastYearYn,
                  fieldList: [
                    FclImageField(
                        name: 'attfile32str', initialValue: vm.io.attfile32str),
                    FclRadioField(
                        name: 'd36',
                        map: yesOrNoMap,
                        preValue: vm.preData?.d36,
                        initialValue: vm.io.d36),
                    FclNoteField(
                        name: 'd125',
                        initialValue: vm.io.d125,
                        preValue: vm.preData?.d125)
                  ])),
          Obx(() => FclFieldView(
                  label: "밀폐구역 내 비상시 연락체계도 게시",
                  preYn: vm.pastYearYn,
                  fieldList: [
                    FclImageField(
                        name: 'attfile33str', initialValue: vm.io.attfile33str),
                    FclRadioField(
                        name: 'd37',
                        map: yesOrNoMap,
                        preValue: vm.preData?.d37,
                        initialValue: vm.io.d37),
                    FclNoteField(
                        name: 'd126',
                        initialValue: vm.io.d126,
                        preValue: vm.preData?.d126)
                  ])),
          Obx(() => FclFieldView(
                  label: "덕트나 배관의 이름 표시",
                  preYn: vm.pastYearYn,
                  fieldList: [
                    FclImageField(
                        name: 'attfile34str', initialValue: vm.io.attfile34str),
                    FclRadioField(
                        name: 'd38',
                        map: yesOrNoMap,
                        preValue: vm.preData?.d38,
                        initialValue: vm.io.d38),
                    FclNoteField(
                        name: 'd127',
                        initialValue: vm.io.d127,
                        preValue: vm.preData?.d127)
                  ])),
          Obx(() => FclFieldView(
                  label: "비상시 가동 및 운영 정지 시의 절차 게시(밀폐시스템 이상 및 대량 스필 발생 포함)",
                  preYn: vm.pastYearYn,
                  fieldList: [
                    FclImageField(
                        name: 'attfile35str', initialValue: vm.io.attfile35str),
                    FclRadioField(
                        name: 'd67',
                        map: yesOrNoMap,
                        preValue: vm.preData?.d67,
                        initialValue: vm.io.d67),
                    FclNoteField(
                        name: 'd128',
                        initialValue: vm.io.d128,
                        preValue: vm.preData?.d128)
                  ])),
          Obx(() => FclFieldView(
                  label: "배양장치 등에 각 등급에 맞는 표시 부착",
                  preYn: vm.pastYearYn,
                  lastDividerYn: true,
                  fieldList: [
                    FclImageField(
                        name: 'attfile36str', initialValue: vm.io.attfile36str),
                    FclRadioField(
                        name: 'd39',
                        map: yesOrNoMap,
                        preValue: vm.preData?.d39,
                        initialValue: vm.io.d39),
                    FclNoteField(
                        name: 'd129',
                        initialValue: vm.io.d129,
                        preValue: vm.preData?.d129)
                  ]))
        ],
      );
}
