import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:sisolab_flutter_biosafety/app/global/widgets/fcl_divider.dart';
import 'package:sisolab_flutter_biosafety/app/global/widgets/fcl_input.dart';
import 'package:sisolab_flutter_biosafety/app/ui/fcl_detail/vms/fcl_detail_vm.dart';
import 'package:sisolab_flutter_biosafety/core/constants/constant.dart';

/// 5. 생물안전장비 설치 및 검증 확인
class Tab24 extends StatelessWidget {
  const Tab24({super.key});

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
              Text("5. 생물안전장비 설치 및 검증 확인", style: TextStyle(fontSize: 34.sp)),
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
                  label: "손 소독기 및 눈 세척기 적정 위치 설치",
                  preYn: vm.pastYearYn,
                  fieldList: [
                    FclImageField(
                        name: 'attfile22str', initialValue: vm.io.attfile22str),
                    FclRadioField(
                        name: 'd26',
                        map: yesOrNoMap,
                        preValue: vm.preData?.d26,
                        initialValue: vm.io.d26),
                    FclNoteField(
                        name: 'd115',
                        initialValue: vm.io.d115,
                        preValue: vm.preData?.d115)
                  ])),
          Obx(() => FclFieldView(
                  label: "패스박스 도어 기밀성",
                  preYn: vm.pastYearYn,
                  fieldList: [
                    FclImageField(
                        name: 'attfile23str', initialValue: vm.io.attfile23str),
                    FclRadioField(
                        name: 'd27',
                        map: yesOrNoMap,
                        preValue: vm.preData?.d27,
                        initialValue: vm.io.d27),
                    FclNoteField(
                        name: 'd116',
                        initialValue: vm.io.d116,
                        preValue: vm.preData?.d116)
                  ])),
          Obx(() => FclFieldView(
                  label: "패스박스 도어 인터락 설정",
                  preYn: vm.pastYearYn,
                  fieldList: [
                    FclImageField(
                        name: 'attfile24str', initialValue: vm.io.attfile24str),
                    FclRadioField(
                        name: 'd28',
                        map: yesOrNoMap,
                        preValue: vm.preData?.d28,
                        initialValue: vm.io.d28),
                    FclNoteField(
                        name: 'd117',
                        initialValue: vm.io.d117,
                        preValue: vm.preData?.d117)
                  ])),
          Obx(() => FclFieldView(
                  label: "멸균기 열침투 테스트(BI 멸균 테스트)",
                  preYn: vm.pastYearYn,
                  fieldList: [
                    FclImageField(
                        name: 'attfile25str', initialValue: vm.io.attfile25str),
                    FclRadioField(
                        name: 'd29',
                        map: yesOrNoMap,
                        preValue: vm.preData?.d29,
                        initialValue: vm.io.d29),
                    FclNoteField(
                        name: 'd118',
                        initialValue: vm.io.d118,
                        preValue: vm.preData?.d118)
                  ])),
          Obx(() => FclFieldView(
                  label: "생물안전작업대 적정 기류흐름 및 작동",
                  preYn: vm.pastYearYn,
                  fieldList: [
                    FclImageField(
                        name: 'attfile26str', initialValue: vm.io.attfile26str),
                    FclRadioField(
                        name: 'd30',
                        map: yesOrNoMap,
                        preValue: vm.preData?.d30,
                        initialValue: vm.io.d30),
                    FclNoteField(
                        name: 'd119',
                        initialValue: vm.io.d119,
                        preValue: vm.preData?.d119)
                  ])),
          Obx(() => FclFieldView(
                  label: "생물안전작업대 설치 위치",
                  preYn: vm.pastYearYn,
                  fieldList: [
                    FclImageField(
                        name: 'attfile27str', initialValue: vm.io.attfile27str),
                    FclRadioField(
                        name: 'd31',
                        map: yesOrNoMap,
                        preValue: vm.preData?.d31,
                        initialValue: vm.io.d31),
                    FclNoteField(
                        name: 'd120',
                        initialValue: vm.io.d120,
                        preValue: vm.preData?.d120)
                  ])),
          Obx(() => FclFieldView(
                  label: "Isolator 기밀성",
                  preYn: vm.pastYearYn,
                  fieldList: [
                    FclImageField(
                        name: 'attfile28str', initialValue: vm.io.attfile28str),
                    FclRadioField(
                        name: 'd32',
                        map: yesOrNoMap,
                        preValue: vm.preData?.d32,
                        initialValue: vm.io.d32),
                    FclNoteField(
                        name: 'd121',
                        initialValue: vm.io.d121,
                        preValue: vm.preData?.d121)
                  ])),
          Obx(() => FclFieldView(
                  label: "폐수처리 설비 제균필터 확인 및 설비 출입 통제",
                  preYn: vm.pastYearYn,
                  lastDividerYn: false,
                  fieldList: [
                    FclImageField(
                        name: 'attfile29str', initialValue: vm.io.attfile29str),
                    FclRadioField(
                        name: 'd33',
                        map: yesOrNoMap,
                        preValue: vm.preData?.d33,
                        initialValue: vm.io.d33),
                    FclNoteField(
                        name: 'd122',
                        initialValue: vm.io.d122,
                        preValue: vm.preData?.d122)
                  ]))
        ],
      );
}
