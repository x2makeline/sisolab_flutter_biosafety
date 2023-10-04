import 'package:flutter/material.dart';
import 'package:flutter_form_builder/flutter_form_builder.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:sisolab_flutter_biosafety/app/global/widgets/fcl_divider.dart';
import 'package:sisolab_flutter_biosafety/app/global/widgets/fcl_input.dart';
import 'package:sisolab_flutter_biosafety/app/ui/fcl_detail/vms/fcl_detail_vm.dart';
import 'package:sisolab_flutter_biosafety/core/constants/constant.dart';

/// (정기) 1. 밀폐구역 설비 가동성 확인(유지관리보고서 또는 필드확인)
class Tab15 extends StatelessWidget {
  const Tab15({super.key});

  FclDetailVm get vm => FclDetailVm.to;

  @override
  Widget build(BuildContext context) => Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text("세부점검사항",
              style: TextStyle(fontSize: 34.sp, fontWeight: FontWeight.w500)),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text("1. 밀폐구역 설비 가동성 확인(유지관리보고서 또는 필드확인)",
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
                  label: "1.1) 손소독기가 적절히 운영되는가?",
                  preYn: vm.pastYearYn,
                  fieldList: [
                    FclImageField(
                        name: 'file1', initialValue: vm.io.file1),
                    FclRadioField(
                        orientation: OptionsOrientation.vertical,
                        labelWithKey: true,
                        name: 'd1',
                        map: const {
                          "5":
                              "실험실(전실 포함)과 공용구역(복도, 탈의전실)에 모두 손소독기가 설치되어있고 모두 정상 작동",
                          "3":
                              "실험실(전실 포함)과 공용구역(복도, 탈의전실)에 모두 손소독기가 설치되어있으나 일부 작동 불량",
                          "1":
                              "실험실(전실 포함) 내 손소독기가 설치되어있지 않으나 공용구역(복도, 탈의전실)에 설치",
                          "0": "밀폐구역내 손소독기 미설치"
                        },
                        preValue: vm.preData?.d1,
                        initialValue: vm.io.d1),
                  ])),
          Obx(() => FclFieldView(
                  label: '잠금장치 방식 선택',
                  preYn: vm.pastYearYn,
                  fieldList: [
                    FclRadioField(
                        name: 'd2',
                        map: const {
                          "카드키": "카드키",
                          "생채인식": "생채인식",
                          "번호입력": "번호입력",
                          "기타": "기타 (물리적 키 등)"
                        },
                        preValue: vm.preData?.d2,
                        initialValue: vm.io.d2),
                  ])),
          Obx(() => FclFieldView(
                  label: "1.2) 실간 인터락 작동(수동조작 가능)이 적절한가?",
                  preYn: vm.pastYearYn,
                  fieldList: [
                    FclImageField(
                        name: 'file2', initialValue: vm.io.file2),
                    FclRadioField(
                        orientation: OptionsOrientation.vertical,
                        labelWithKey: true,
                        name: 'd3',
                        map: const {
                          "5": '6개 인터락시험 중 모두 정상작동',
                          '3': "6개 인터락시험 중 1~2개 미작동",
                          '1': "6개 인터락시험 중 3~4개 미작동",
                          '0': "6개 인터락시험 중 6개 모두 미작동"
                        },
                        preValue: vm.preData?.d3,
                        initialValue: vm.io.d3),
                    FclNoteField(
                        name: 'd90',
                        initialValue: vm.io.d90,
                        preValue: vm.preData?.d90)
                  ])),
          Obx(() => FclFieldView(
                  label: "1.3) 비상샤워장비가 정상 작동하며 바닥이 양호한가?",
                  preYn: vm.pastYearYn,
                  fieldList: [
                    FclImageField(
                        name: 'file3', initialValue: vm.io.file3),
                    FclRadioField(
                        orientation: OptionsOrientation.vertical,
                        labelWithKey: true,
                        name: 'd4',
                        map: const {
                          "3": '비상샤워설비 작동 이상',
                          '2': "비상샤워설비 작동가능하나 바닥마감상태 불량",
                          '0': "비상샤워설비 작동가능하며 바닥마감상태 양호"
                        },
                        preValue: vm.preData?.d4,
                        initialValue: vm.io.d4),
                    FclNoteField(
                        name: 'd91',
                        initialValue: vm.io.d91,
                        preValue: vm.preData?.d91)
                  ])),
          Obx(() => FclFieldView(
                  label: "1.4) 각 실 환기횟수는 적정한가? (자동제어시스템 또는 풍량실측 확인)",
                  preYn: vm.pastYearYn,
                  fieldList: [
                    FclImageField(
                        name: 'file4', initialValue: vm.io.file4),
                    FclRadioField(
                        orientation: OptionsOrientation.vertical,
                        labelWithKey: true,
                        name: 'd5',
                        map: const {
                          "5": '4개 실, 복도 환기횟수시험결과 모두 불만족',
                          '3': "4개 실, 복도 환기횟수시험결과 중 1~2개 만족",
                          '1': "4개 실, 복도 환기횟수시험결과 중 3개 만족",
                          '0': "4개 실, 복도 환기횟수시험결과 모두 만족"
                        },
                        preValue: vm.preData?.d5,
                        initialValue: vm.io.d5),
                    FclNoteField(
                        name: 'd93',
                        initialValue: vm.io.d93,
                        preValue: vm.preData?.d93)
                  ])),
          Obx(() => FclFieldView(
                  label:
                      "1.5) 밀폐구역 내 생물학적 위험도에 따른 순차적 음압이 형성되고 적절한 실간 차압을 유지하는가? (실내 차압계 및 연무테스트 확인)",
                  preYn: vm.pastYearYn,
                  fieldList: [
                    FclImageField(
                        name: 'file5', initialValue: vm.io.file5),
                    FclRadioField(
                        orientation: OptionsOrientation.vertical,
                        labelWithKey: true,
                        name: 'd196',
                        map: const {
                          "5": '밀폐구역 내 차압 역전',
                          '3':
                              "밀폐구역 내 기류흐름이 적절한 방향으로 형성되었으나 실간 차압(그래프)이 -10~-15 Pa 유지 못함",
                          '0': "밀폐구역 내 기류흐름이 적절한 방향으로 형성되며 실간차압 -10~-15 Pa 유지"
                        },
                        preValue: vm.preData?.d196,
                        initialValue: vm.io.d196),
                    FclNoteField(
                        name: 'd94',
                        initialValue: vm.io.d94,
                        preValue: vm.preData?.d94)
                  ])),
          Obx(() => FclFieldView(
                  label: '1.6) 밀폐구역 내 이음매 완전성(벽체, 천장 등)을 확보하였는가?(연무테스트 확인)',
                  preYn: vm.pastYearYn,
                  fieldList: [
                    FclImageField(
                        name: 'file6', initialValue: vm.io.file6),
                    FclRadioField(
                        orientation: OptionsOrientation.vertical,
                        labelWithKey: true,
                        name: 'd6',
                        map: const {
                          "5": '천장, 벽체, 전열 콘센트 등 누기 9곳 이상',
                          '3': "천장, 벽체, 전열 콘센트 등 누기 6~8곳",
                          '1': "천장, 벽체, 전열 콘센트 등 누기 3~5곳",
                          '0': "천장, 벽체, 전열 콘센트 등 누기 0~2곳"
                        },
                        preValue: vm.preData?.d6,
                        initialValue: vm.io.d6),
                    FclNoteField(
                        name: 'd95',
                        initialValue: vm.io.d95,
                        preValue: vm.preData?.d95)
                  ])),
          Obx(() => FclFieldView(
                  label: '1.7) 밀폐구역 내 이음매 완전성(벽체, 천장 등)을 확보하였는가?(연무테스트 확인)',
                  preYn: vm.pastYearYn,
                  desc: const [
                    "- 출입문 자동 닫힘 기능이 정상 작동 여부",
                    "- 밀폐구역 내 적정 온습도가 정상 유지 여부"
                  ],
                  fieldList: [
                    FclImageField(
                        name: 'file7', initialValue: vm.io.file7),
                    FclRadioField(
                        name: 'd7',
                        map: const {"2": '2', '1': "1", '0': "0"},
                        preValue: vm.preData?.d7,
                        initialValue: vm.io.d7),
                    FclNoteField(
                        name: 'd96',
                        initialValue: vm.io.d96,
                        preValue: vm.preData?.d96)
                  ])),
          Obx(() => FclFieldView(
                  lastDividerYn: false,
                  label: '동물실은 외부와의 최소음압 70 Pa을 유지하는가?',
                  preYn: vm.pastYearYn,
                  fieldList: [
                    FclImageField(
                        name: 'file8', initialValue: vm.io.file8),
                    FclRadioField(
                        name: 'd8',
                        map: passOrNaMap,
                        preValue: vm.preData?.d8,
                        initialValue: vm.io.d8),
                    FclNoteField(
                        name: 'd97',
                        initialValue: vm.io.d97,
                        preValue: vm.preData?.d97)
                  ]))
        ],
      );
}
