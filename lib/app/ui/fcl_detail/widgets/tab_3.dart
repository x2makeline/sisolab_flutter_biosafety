import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:sisolab_flutter_biosafety/app/global/widgets/fcl_divider.dart';
import 'package:sisolab_flutter_biosafety/app/global/widgets/fcl_input.dart';
import 'package:sisolab_flutter_biosafety/app/ui/fcl_detail/vms/fcl_detail_vm.dart';
import 'package:sisolab_flutter_biosafety/core/constants/constant.dart';

/// 기본 자료 확인
class Tab3 extends StatelessWidget {
  const Tab3({super.key});

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
              Text("1. 시설 설치 운영 기본 자료 확인", style: TextStyle(fontSize: 34.sp)),
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
                  label: "연구자 및 관리자 생물안전교육 이수",
                  lastDividerYn: false,
                  preYn: vm.pastYearYn,
                  fieldList: [
                    FclImageField(name: 'd201', initialValue: vm.iof.d201),
                    FclNoteField(
                        name: 'd179',
                        initialValue: vm.io.d179,
                        preValue: vm.preData?.d179)
                  ])),
          Obx(() => FclFieldView(
                  label: "관리책임자",
                  lastDividerYn: false,
                  preYn: vm.pastYearYn,
                  fieldList: [
                    FclTextField2(
                        name: "d180",
                        initialValue: vm.io.d180,
                        preValue: vm.preData?.d180,
                        suffixType: TextSuffixType.count,
                        radioField: FclRadioField(
                            name: "d1",
                            map: yesOrNoMap2,
                            initialValue: vm.io.d1,
                            preValue: vm.preData?.d1)),
                    FclNoteField(
                        name: 'd181',
                        initialValue: vm.io.d181,
                        preValue: vm.preData?.d181)
                  ])),
          Obx(() => FclFieldView(
                  label: "관리자",
                  lastDividerYn: false,
                  preYn: vm.pastYearYn,
                  fieldList: [
                    FclTextField2(
                        name: "d87",
                        initialValue: vm.io.d87,
                        preValue: vm.preData?.d87,
                        suffixType: TextSuffixType.count,
                        radioField: FclRadioField(
                            name: "d2",
                            map: yesOrNoMap2,
                            initialValue: vm.io.d2,
                            preValue: vm.preData?.d2)),
                    FclNoteField(
                        name: 'd182',
                        initialValue: vm.io.d182,
                        preValue: vm.preData?.d182)
                  ])),
          Obx(() =>
              FclFieldView(label: "사용자", preYn: vm.pastYearYn, fieldList: [
                FclTextField2(
                    name: "d88",
                    initialValue: vm.io.d88,
                    preValue: vm.preData?.d88,
                    suffixType: TextSuffixType.count,
                    radioField: FclRadioField(
                        name: "d3",
                        map: yesOrNoMap2,
                        initialValue: vm.io.d3,
                        preValue: vm.preData?.d3)),
                FclNoteField(
                    name: 'd183',
                    initialValue: vm.io.d183,
                    preValue: vm.preData?.d183)
              ])),
          Obx(() => FclFieldView(
                  label: "밀폐구역 출입자 정상 혈청 보관",
                  lastDividerYn: false,
                  preYn: vm.pastYearYn,
                  fieldList: [
                    FclImageField(name: '202', initialValue: vm.iof.d202),
                    FclNoteField(
                        name: 'd89',
                        initialValue: vm.io.d89,
                        preValue: vm.preData?.d89)
                  ])),
          Obx(() => FclFieldView(
                  label: "관리책임자",
                  lastDividerYn: false,
                  preYn: vm.pastYearYn,
                  fieldList: [
                    FclTextField2(
                        name: "d90",
                        initialValue: vm.io.d90,
                        preValue: vm.preData?.d90,
                        suffixType: TextSuffixType.count,
                        radioField: FclRadioField(
                            name: "d4",
                            map: yesOrNoMap,
                            initialValue: vm.io.d4,
                            preValue: vm.preData?.d4)),
                    FclNoteField(
                        name: 'd91',
                        initialValue: vm.io.d91,
                        preValue: vm.preData?.d91)
                  ])),
          Obx(() => FclFieldView(
                  label: "관리자",
                  lastDividerYn: false,
                  preYn: vm.pastYearYn,
                  fieldList: [
                    FclTextField2(
                        name: "d92",
                        initialValue: vm.io.d92,
                        preValue: vm.preData?.d92,
                        suffixType: TextSuffixType.count,
                        radioField: FclRadioField(
                            name: "d5",
                            map: yesOrNoMap,
                            initialValue: vm.io.d5,
                            preValue: vm.preData?.d5)),
                    FclNoteField(
                        name: 'd93',
                        initialValue: vm.io.d93,
                        preValue: vm.preData?.d93)
                  ])),
          Obx(() =>
              FclFieldView(label: "관리자", preYn: vm.pastYearYn, fieldList: [
                FclTextField2(
                    name: "d94",
                    initialValue: vm.io.d94,
                    preValue: vm.preData?.d94,
                    suffixType: TextSuffixType.count,
                    radioField: FclRadioField(
                        name: "d6",
                        map: yesOrNoMap,
                        initialValue: vm.io.d6,
                        preValue: vm.preData?.d6)),
                FclNoteField(
                    name: 'd95',
                    initialValue: vm.io.d95,
                    preValue: vm.preData?.d95)
              ])),
          Obx(() => FclFieldView(
                  label: "검증서, 시설도면(건축,기계,전기,소방 등) 보관",
                  preYn: vm.pastYearYn,
                  fieldList: [
                    FclImageField(name: 'd203', initialValue: vm.iof.d203),
                    FclRadioField(
                        name: 'd7',
                        map: yesOrNoMap,
                        preValue: vm.preData?.d7,
                        initialValue: vm.io.d7),
                    FclNoteField(
                        name: 'd96',
                        initialValue: vm.io.d96,
                        preValue: vm.preData?.d96)
                  ])),
          Obx(() => FclFieldView(
                  label: "생물안전관리규정 수립",
                  preYn: vm.pastYearYn,
                  fieldList: [
                    FclImageField(name: 'd204', initialValue: vm.iof.d204),
                    FclRadioField(
                        name: 'd8',
                        map: yesOrNoMap,
                        preValue: vm.preData?.d8,
                        initialValue: vm.io.d8),
                    FclNoteField(
                        name: 'd97',
                        initialValue: vm.io.d97,
                        preValue: vm.preData?.d97)
                  ])),
          Obx(() => FclFieldView(
                  lastDividerYn: false,
                  label: "기관생물안전지침(시설운영사항 별도) 마련",
                  preYn: vm.pastYearYn,
                  fieldList: [
                    FclImageField(name: 'd205', initialValue: vm.iof.d205),
                    FclRadioField(
                        name: 'd9',
                        map: yesOrNoMap,
                        preValue: vm.preData?.d9,
                        initialValue: vm.io.d9),
                    FclNoteField(
                        name: 'd98',
                        initialValue: vm.io.d98,
                        preValue: vm.preData?.d98)
                  ])),
        ],
      );
}
