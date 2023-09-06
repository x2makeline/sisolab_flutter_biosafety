import 'package:flutter/material.dart';
import 'package:flutter_form_builder/flutter_form_builder.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:sisolab_flutter_biosafety/app/global/widgets/fcl_divider.dart';
import 'package:sisolab_flutter_biosafety/app/global/widgets/fcl_input.dart';
import 'package:sisolab_flutter_biosafety/app/ui/fcl_detail/vms/fcl_detail_vm.dart';
import 'package:sisolab_flutter_biosafety/core/constants/constant.dart';

/// (정기) 2. 생물안전장비 가동성 확인(보고서 또는 필드 확인)
class Tab22 extends StatelessWidget {
  const Tab22({super.key});

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
              Text("2. 생물안전장비 가동성 확인(보고서 또는 필드 확인)",
                  style: TextStyle(fontSize: 34.sp)),
              SizedBox(height: 14.h),
              Row(
                children: [
                  Text("과년도 자료", style: TextStyle(fontSize: 28.sp)),
                  Obx(() => Checkbox(
                      value: vm.pastYearYn,
                      onChanged: (v) {
                        vm.pastYearYn = v ?? false;
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
                  label: '2.1) 주출입구 잠금장치 및 보안장치가 적절히 설치‧운영되고 있는가?',
                  preYn: vm.pastYearYn,
                  fieldList: [
                    FclImageField(
                        name: 'attfile9str', initialValue: vm.io.attfile9str),
                    FclRadioField(
                        orientation: OptionsOrientation.vertical,
                        labelWithKey: true,
                        name: 'd9',
                        map: const {
                          "5": "주출입구 잠금장치가 설치되어 있지 않으며 CCTV가 설치되지 않은 실험실이 존재함.",
                          "3": "주출입구 잠금장치가 설치되어 있으며 CCTV가 설치되지 않은 실험실이 존재함.",
                          "1":
                              "주출입구 잠금장치가 설치되어 있으며 모든 실험실에 CCTV가 설치됨. CCTV 영상자료의 3개월치 저장이 불가능함.",
                          "0":
                              "주출입구 잠금장치가 설치되어 있으며 모든 실험실에 CCTV가 설치됨. CCTV 영상자료의 3개월치 저장이 가능함."
                        },
                        preValue: vm.preData?.d9,
                        initialValue: vm.io.d9),
                    FclNoteField(
                        name: 'd98',
                        initialValue: vm.io.d98,
                        preValue: vm.preData?.d98)
                  ])),
          Obx(() => FclFieldView(
                  label: '2.2) 주출입구 잠금장치 및 보안장치가 적절히 설치‧운영되고 있는가?',
                  preYn: vm.pastYearYn,
                  fieldList: [
                    FclImageField(
                        name: 'attfile10str', initialValue: vm.io.attfile10str),
                    FclRadioField(
                        orientation: OptionsOrientation.vertical,
                        labelWithKey: true,
                        name: 'd10',
                        map: const {
                          "2": "주출입구 잠금장치가 설치되어 있지 않으며 CCTV가 설치되지 않은 실험실이 존재함.",
                          "1": "주출입구 잠금장치가 설치되어 있으며 CCTV가 설치되지 않은 실험실이 존재함.",
                          "0":
                              "주출입구 잠금장치가 설치되어 있으며 모든 실험실에 CCTV가 설치됨. CCTV 영상자료의 3개월치 저장이 불가능함.",
                        },
                        preValue: vm.preData?.d10,
                        initialValue: vm.io.d10),
                    FclNoteField(
                        name: 'd99',
                        initialValue: vm.io.d99,
                        preValue: vm.preData?.d99)
                  ])),
          Obx(() => FclFieldView(
                  label: '2.3) 패스박스 작동상태가 적합한가?',
                  preYn: vm.pastYearYn,
                  fieldList: [
                    FclImageField(
                        name: 'attfile11str', initialValue: vm.io.attfile11str),
                    FclRadioField(
                        orientation: OptionsOrientation.vertical,
                        labelWithKey: true,
                        name: 'd11',
                        map: const {
                          "5": "기밀이 불량하고 인터락 미작동",
                          "3": "기밀이 불량하거나 인터락 미작동",
                          "1": "기밀이 양호하고 인터락이 정상이지만 UV intensity가 40 uw/cm 이하",
                          "0": "기밀이 양호하고 인터락이 정상작동하며 UV intensity가 40 uw/cm 이상"
                        },
                        preValue: vm.preData?.d11,
                        initialValue: vm.io.d11),
                    FclNoteField(
                        name: 'd100',
                        initialValue: vm.io.d100,
                        preValue: vm.preData?.d100)
                  ])),
          Obx(() => FclFieldView(
                  label: '2.4) 멸균기 작동(BI 테스트 포함)상태가 적합한가?',
                  preYn: vm.pastYearYn,
                  fieldList: [
                    FclImageField(
                        name: 'attfile12str', initialValue: vm.io.attfile12str),
                    FclRadioField(
                        orientation: OptionsOrientation.vertical,
                        labelWithKey: true,
                        name: 'd12',
                        map: const {
                          "5": "멸균공정(121 ℃, 30 min) 작동 이상",
                          "3": "멸균공정에 이상이 없으나 누기 발견",
                          "1": "멸균공정에 이상이 없고 누기가 발견되지 않으나 소음도 65 dB 초과",
                          "0": "멸균공정에 이상이 없고 누기가 발견되지 않으며 소음도 65 dB 미만"
                        },
                        preValue: vm.preData?.d12,
                        initialValue: vm.io.d12),
                    FclNoteField(
                        name: 'd101',
                        initialValue: vm.io.d101,
                        preValue: vm.preData?.d101)
                  ])),
          Obx(() => FclFieldView(
              label: '2.5) 생물안전작업대 작동상태가 적합한가?(풍속 실측 또는 BSC 디스플레이 확인)',
              desc: const ['※ 적정유입풍속 : 0.5 ± 0.025 m/s'],
              preYn: vm.pastYearYn,
              fieldList: [
                FclImageField(
                    name: 'attfile13str', initialValue: vm.io.attfile13str),
                FclRadioField(
                    orientation: OptionsOrientation.vertical,
                    labelWithKey: true,
                    name: 'd13',
                    map: const {
                      "5": "생물안전작업대 작동 이상",
                      "3": "적정유입풍속을 유지하지 못하거나 기류흐름(유입방향 및 하방향)이 적정하지 않음.",
                      "1": "적정유입풍속을 유지하며 기류흐름이 적정함. 소음도 70 dB 초과",
                      "0": "적정유입풍속을 유지하며 기류흐름이 적정함. 소음도 70 dB 미만"
                    },
                    preValue: vm.preData?.d13,
                    initialValue: vm.io.d13),
                FclNoteField(
                    name: 'd102',
                    initialValue: vm.io.d102,
                    preValue: vm.preData?.d102)
              ])),
          Obx(() => FclFieldView(
                  label: '동물) 동물실은 외부와의 최소음압 70 Pa을 유지하는가?',
                  preYn: vm.pastYearYn,
                  fieldList: [
                    FclImageField(
                        name: 'attfile14str', initialValue: vm.io.attfile14str),
                    FclRadioField(
                        name: 'd14',
                        map: passOrNaMap,
                        preValue: vm.preData?.d14,
                        initialValue: vm.io.d14),
                    FclNoteField(
                        name: 'd103',
                        initialValue: vm.io.d103,
                        preValue: vm.preData?.d103)
                  ])),
          Obx(() => FclFieldView(
                  label: '대량) 멸균조작이 가능한 배양장치 설치 및 정기적으로 밀페도 검사를 실시하는가?',
                  preYn: vm.pastYearYn,
                  fieldList: [
                    FclImageField(
                        name: 'attfile15str', initialValue: vm.io.attfile15str),
                    FclRadioField(
                        name: 'd15',
                        map: passOrNaMap,
                        preValue: vm.preData?.d15,
                        initialValue: vm.io.d15),
                    FclNoteField(
                        name: 'd104',
                        initialValue: vm.io.d104,
                        preValue: vm.preData?.d104)
                  ])),
          Obx(() => FclFieldView(
                  label:
                      '대량) 배양장치의 배기가스관에 제균용 필터(동등 이상의 제균용 기기) 부착 및 정기적으로 성능 검사를 실시하는가?',
                  preYn: vm.pastYearYn,
                  lastDividerYn: false,
                  fieldList: [
                    FclImageField(
                        name: 'attfile16str', initialValue: vm.io.attfile16str),
                    FclRadioField(
                        name: 'd16',
                        map: passOrNaMap,
                        preValue: vm.preData?.d16,
                        initialValue: vm.io.d16),
                    FclNoteField(
                        name: 'd105',
                        initialValue: vm.io.d105,
                        preValue: vm.preData?.d105)
                  ]))
        ],
      );
}
