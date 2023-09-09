import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:sisolab_flutter_biosafety/app/global/widgets/empty_box.dart';
import 'package:sisolab_flutter_biosafety/app/global/widgets/fcl_divider.dart';
import 'package:sisolab_flutter_biosafety/app/global/widgets/fcl_input.dart';
import 'package:sisolab_flutter_biosafety/app/ui/fcl_detail/vms/fcl_detail_vm.dart';
import 'package:sisolab_flutter_biosafety/core/constants/constant.dart';

/// (정기) 출입통제 관리기록 등
class Tab16 extends StatelessWidget {
  const Tab16({super.key});

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
              const EmptyBox(),
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
                desc: const ["- 출입대장 보유", "- 출입대장 현행화"],
                label: "8) 출입통제 관리기록(출입대장 등) 유지되고 있는가?",
                lastDividerYn: false,
                fieldList: [
                  FclImageField(
                      name: "attfile31str",
                      initialValue: vm.io.attfile31str,
                      preValue: vm.preData?.attfile31str),
                  FclRadioField(
                      name: "d31",
                      map: const {"2": "2", "1": "1", "0": "0"},
                      initialValue: vm.io.d31,
                      preValue: vm.preData?.d31),
                  FclNoteField(
                      name: 'd120',
                      initialValue: vm.io.d120,
                      preValue: vm.preData?.d120)
                ],
                preYn: vm.pastYearYn,
              )),
          Obx(() => FclFieldView(
                desc: const [
                  "- 신규자 교육 실시",
                  "- 연간 보수교육 실시",
                  "- 국가지정 전문교육기관에서 제공하는 생물안전교육 프로그램에 매년 참여(운영요건 충족여부)"
                ],
                label: "9) 기관 생물안전교육이 적절히 수행되는가?",
                lastDividerYn: false,
                fieldList: [
                  FclImageField(
                      name: "attfile32str",
                      initialValue: vm.io.attfile32str,
                      preValue: vm.preData?.attfile32str),
                  FclRadioField(
                      name: "d32",
                      map: const {"3": "3", "2": "2", "1": "1", "0": "0"},
                      initialValue: vm.io.d32,
                      preValue: vm.preData?.d32),
                  FclNoteField(
                      name: 'd121',
                      initialValue: vm.io.d121,
                      preValue: vm.preData?.d121)
                ],
                preYn: vm.pastYearYn,
              )),
          Obx(() => FclFieldView(
                desc: const ["- 신규자 교육 실시", "- 연간 보수교육 실시", "- 필요시 수시교육 실시"],
                label: "10) 유지보수 인력의 생물안전교육이 적절히 실시되는가?",
                lastDividerYn: false,
                fieldList: [
                  FclImageField(
                      name: "attfile33str",
                      initialValue: vm.io.attfile33str,
                      preValue: vm.preData?.attfile33str),
                  FclRadioField(
                      name: "d33",
                      map: const {"3": "3", "2": "2", "1": "1", "0": "0"},
                      initialValue: vm.io.d33,
                      preValue: vm.preData?.d33),
                  FclNoteField(
                      name: 'd122',
                      initialValue: vm.io.d122,
                      preValue: vm.preData?.d122)
                ],
                preYn: vm.pastYearYn,
              )),
          Obx(() => FclFieldView(
                desc: const ["- 정기검진 실시", "- 정상혈청 보관", "- 혈청관리대장 보유"],
                label: "11) 연구자 정기검진 및 정상혈청 확보가 적절한가?",
                lastDividerYn: false,
                fieldList: [
                  FclImageField(
                      name: "attfile34str",
                      initialValue: vm.io.attfile34str,
                      preValue: vm.preData?.attfile34str),
                  FclRadioField(
                      name: "d34",
                      map: const {"3": "3", "2": "2", "1": "1", "0": "0"},
                      initialValue: vm.io.d34,
                      preValue: vm.preData?.d34),
                  FclNoteField(
                      name: 'd123',
                      initialValue: vm.io.d123,
                      preValue: vm.preData?.d123)
                ],
                preYn: vm.pastYearYn,
              )),
          Obx(() => FclFieldView(
                desc: const [
                  "- 월간유지보고서 서명 날인",
                  "- 유지보수 인력 출입대장 작성여부",
                  "- 유지보수 장비 패스박스 사용대장 작성여부"
                ],
                label: "12) 전문위탁기관 관리 점검 보고서 및 전문위탁기관 인력 등에 대한 관리 적절성 여부",
                lastDividerYn: false,
                fieldList: [
                  FclImageField(
                      name: "attfile35str",
                      initialValue: vm.io.attfile35str,
                      preValue: vm.preData?.attfile35str),
                  FclRadioField(
                      name: "d35",
                      map: const {"2": "2", "1": "1", "0": "0"},
                      initialValue: vm.io.d35,
                      preValue: vm.preData?.d35),
                  FclNoteField(
                      name: 'd124',
                      initialValue: vm.io.d124,
                      preValue: vm.preData?.d124)
                ],
                preYn: vm.pastYearYn,
              )),
          Obx(() => FclFieldView(
                desc: const [
                  "- 설치류 방제장치 설치 또는 프로그램 운영",
                  "- 해충 방제장치 설치 또는 프로그램 운영"
                ],
                label: "13) 설치류 해충방지 장치설치 또는 프로그램이 있는가?",
                lastDividerYn: false,
                fieldList: [
                  // FclImageField(
                  //     name: "attfile36str",
                  //     initialValue: vm.io.attfile36str,
                  //     preValue: vm.preData?.attfile36str),
                  FclRadioField(
                      name: "d36",
                      map: const {"2": "2", "1": "1", "0": "0"},
                      initialValue: vm.io.d36,
                      preValue: vm.preData?.d36),
                  FclNoteField(
                      name: 'd125',
                      initialValue: vm.io.d125,
                      preValue: vm.preData?.d125)
                ],
                preYn: vm.pastYearYn,
              )),
          Obx(() => FclFieldView(
                label: "동물) 실험동물 관련 법정 교육을 이수하였는가?",
                lastDividerYn: false,
                fieldList: [
                  FclImageField(
                      name: "attfile36str",
                      initialValue: vm.io.attfile36str,
                      preValue: vm.preData?.attfile36str),
                  FclRadioField(
                      name: "d37",
                      map: passOrNaMap,
                      initialValue: vm.io.d37,
                      preValue: vm.preData?.d37),
                  FclNoteField(
                      name: 'd126',
                      initialValue: vm.io.d126,
                      preValue: vm.preData?.d126)
                ],
                preYn: vm.pastYearYn,
              )),
          Obx(() => FclFieldView(
                label: "14) 시설 설치·운영 특이사항에 대한 확인 검토",
                lastDividerYn: false,
                fieldList: [
                  FclImageField(
                      name: "attfile37str",
                      initialValue: vm.io.attfile37str,
                      preValue: vm.preData?.attfile37str),
                  FclRadioField(
                      name: "d38",
                      map: passOrNaMap,
                      initialValue: vm.io.d38,
                      preValue: vm.preData?.d38),
                  FclNoteField(
                      name: 'd127',
                      initialValue: vm.io.d127,
                      preValue: vm.preData?.d127)
                ],
                preYn: vm.pastYearYn,
              )),
          Obx(() => FclFieldView(
                label: "15) 시설 정기 점검 결과 개선 사항 검토",
                lastDividerYn: false,
                fieldList: [
                  FclImageField(
                      name: "attfile38str",
                      initialValue: vm.io.attfile38str,
                      preValue: vm.preData?.attfile38str),
                  FclRadioField(
                      name: "d67",
                      map: passOrNaMap,
                      initialValue: vm.io.d67,
                      preValue: vm.preData?.d67),
                  FclNoteField(
                      name: 'd128',
                      initialValue: vm.io.d128,
                      preValue: vm.preData?.d128)
                ],
                preYn: vm.pastYearYn,
              ))
        ],
      );
}
