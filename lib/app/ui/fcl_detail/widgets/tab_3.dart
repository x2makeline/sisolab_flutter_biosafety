import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:sisolab_flutter_biosafety/app/global/widgets/fcl_divider.dart';
import 'package:sisolab_flutter_biosafety/app/global/widgets/fcl_input.dart';
import 'package:sisolab_flutter_biosafety/app/ui/fcl_detail/vms/fcl_detail_vm.dart';
import 'package:sisolab_flutter_biosafety/core/constants/constant.dart';
import 'package:sisolab_flutter_biosafety/core/utils/mc_logger.dart';

/// 기본 자료 확인
class Tab3 extends GetView<FclDetailVm> {
  const Tab3({super.key});

  @override
  Widget build(BuildContext context) {
    pLogger.i("Tab3 build");
    return Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text("설치 ∙ 운영 적격성 평가",
              style: TextStyle(fontSize: 34.sp, fontWeight: FontWeight.w500)),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text("1. 시설 설치 운영 기본 자료 확인", style: TextStyle(fontSize: 34.sp)),
              SizedBox(height: 14.h),
              Row(
                children: [
                  Text("과년도 자료", style: TextStyle(fontSize: 28.sp)),
                  Obx(() => Checkbox(
                      value: controller.pastYearYn,
                      onChanged: (v) {
                        controller.setPastYearYn(v ?? false);
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
                  label: "연구자 및 관리자 생물안전교육 이수",
                  lastDividerYn: false,
                  preYn: controller.pastYearYn,
                  fieldList: [
                    FclImageField(
                        name: 'd201', initialValue: controller.iof.d201),
                    FclNoteField(
                        name: 'd179',
                        initialValue: controller.io.d179,
                        preValue: controller.preData?.d179)
                  ])),
          Obx(() => FclFieldView(
                  label: "관리책임자",
                  lastDividerYn: false,
                  preYn: controller.pastYearYn,
                  fieldList: [
                    FclTextField2(
                        name: "d180",
                        initialValue: controller.io.d180,
                        preValue: controller.preData?.d180,
                        suffixType: TextSuffixType.count,
                        radioField: FclRadioField(
                            name: "d1",
                            map: yesOrNoMap2,
                            initialValue: controller.io.d1,
                            preValue: controller.preData?.d1)),
                    FclNoteField(
                        name: 'd181',
                        initialValue: controller.io.d181,
                        preValue: controller.preData?.d181)
                  ])),
          Obx(() => FclFieldView(
                  label: "관리자",
                  lastDividerYn: false,
                  preYn: controller.pastYearYn,
                  fieldList: [
                    FclTextField2(
                        name: "d87",
                        initialValue: controller.io.d87,
                        preValue: controller.preData?.d87,
                        suffixType: TextSuffixType.count,
                        radioField: FclRadioField(
                            name: "d2",
                            map: yesOrNoMap2,
                            initialValue: controller.io.d2,
                            preValue: controller.preData?.d2)),
                    FclNoteField(
                        name: 'd182',
                        initialValue: controller.io.d182,
                        preValue: controller.preData?.d182)
                  ])),
          Obx(() => FclFieldView(
                  label: "사용자",
                  preYn: controller.pastYearYn,
                  fieldList: [
                    FclTextField2(
                        name: "d88",
                        initialValue: controller.io.d88,
                        preValue: controller.preData?.d88,
                        suffixType: TextSuffixType.count,
                        radioField: FclRadioField(
                            name: "d3",
                            map: yesOrNoMap2,
                            initialValue: controller.io.d3,
                            preValue: controller.preData?.d3)),
                    FclNoteField(
                        name: 'd183',
                        initialValue: controller.io.d183,
                        preValue: controller.preData?.d183)
                  ])),
          Obx(() => FclFieldView(
                  label: "밀폐구역 출입자 정상 혈청 보관",
                  lastDividerYn: false,
                  preYn: controller.pastYearYn,
                  fieldList: [
                    FclImageField(
                        name: 'd202', initialValue: controller.iof.d202),
                    FclNoteField(
                        name: 'd89',
                        initialValue: controller.io.d89,
                        preValue: controller.preData?.d89)
                  ])),
          Obx(() => FclFieldView(
                  label: "관리책임자",
                  lastDividerYn: false,
                  preYn: controller.pastYearYn,
                  fieldList: [
                    FclTextField2(
                        name: "d90",
                        initialValue: controller.io.d90,
                        preValue: controller.preData?.d90,
                        suffixType: TextSuffixType.count,
                        radioField: FclRadioField(
                            name: "d4",
                            map: yesOrNoMap,
                            initialValue: controller.io.d4,
                            preValue: controller.preData?.d4)),
                    FclNoteField(
                        name: 'd91',
                        initialValue: controller.io.d91,
                        preValue: controller.preData?.d91)
                  ])),
          Obx(() => FclFieldView(
                  label: "관리자",
                  lastDividerYn: false,
                  preYn: controller.pastYearYn,
                  fieldList: [
                    FclTextField2(
                        name: "d92",
                        initialValue: controller.io.d92,
                        preValue: controller.preData?.d92,
                        suffixType: TextSuffixType.count,
                        radioField: FclRadioField(
                            name: "d5",
                            map: yesOrNoMap,
                            initialValue: controller.io.d5,
                            preValue: controller.preData?.d5)),
                    FclNoteField(
                        name: 'd93',
                        initialValue: controller.io.d93,
                        preValue: controller.preData?.d93)
                  ])),
          Obx(() => FclFieldView(
                  label: "관리자",
                  preYn: controller.pastYearYn,
                  fieldList: [
                    FclTextField2(
                        name: "d94",
                        initialValue: controller.io.d94,
                        preValue: controller.preData?.d94,
                        suffixType: TextSuffixType.count,
                        radioField: FclRadioField(
                            name: "d6",
                            map: yesOrNoMap,
                            initialValue: controller.io.d6,
                            preValue: controller.preData?.d6)),
                    FclNoteField(
                        name: 'd95',
                        initialValue: controller.io.d95,
                        preValue: controller.preData?.d95)
                  ])),
          Obx(() => FclFieldView(
                  label: "검증서, 시설도면(건축,기계,전기,소방 등) 보관",
                  preYn: controller.pastYearYn,
                  fieldList: [
                    FclImageField(
                        name: 'd203', initialValue: controller.iof.d203),
                    FclRadioField(
                        name: 'd7',
                        map: yesOrNoMap,
                        preValue: controller.preData?.d7,
                        initialValue: controller.io.d7),
                    FclNoteField(
                        name: 'd96',
                        initialValue: controller.io.d96,
                        preValue: controller.preData?.d96)
                  ])),
          Obx(() => FclFieldView(
                  label: "생물안전관리규정 수립",
                  preYn: controller.pastYearYn,
                  fieldList: [
                    FclImageField(
                        name: 'd204', initialValue: controller.iof.d204),
                    FclRadioField(
                        name: 'd8',
                        map: yesOrNoMap,
                        preValue: controller.preData?.d8,
                        initialValue: controller.io.d8),
                    FclNoteField(
                        name: 'd97',
                        initialValue: controller.io.d97,
                        preValue: controller.preData?.d97)
                  ])),
          Obx(() => FclFieldView(
                  lastDividerYn: false,
                  label: "기관생물안전지침(시설운영사항 별도) 마련",
                  preYn: controller.pastYearYn,
                  fieldList: [
                    FclImageField(
                        name: 'd205', initialValue: controller.iof.d205),
                    FclRadioField(
                        name: 'd9',
                        map: yesOrNoMap,
                        preValue: controller.preData?.d9,
                        initialValue: controller.io.d9),
                    FclNoteField(
                        name: 'd98',
                        initialValue: controller.io.d98,
                        preValue: controller.preData?.d98)
                  ])),
        ],
      );
  }
}
