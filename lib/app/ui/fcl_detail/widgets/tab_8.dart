import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:sisolab_flutter_biosafety/app/global/widgets/fcl_divider.dart';
import 'package:sisolab_flutter_biosafety/app/global/widgets/fcl_input.dart';
import 'package:sisolab_flutter_biosafety/app/ui/fcl_detail/vms/fcl_detail_vm.dart';
import 'package:sisolab_flutter_biosafety/core/constants/constant.dart';

/// (정기) 3. 비상 시 가동성 확인
class Tab8 extends StatelessWidget {
  const Tab8({super.key});

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
              Text("3. 비상 시 가동성 확인", style: TextStyle(fontSize: 34.sp)),
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
                  label: '3.1) 통신 시스템이 정상적으로 작동하는가?',
                  preYn: vm.pastYearYn,
                  desc: const [
                    "- 전화기 설치 및 정상 작동",
                    "- 데이터 전송시스템(컴퓨터, Fax 등) 설치 및 정상 작동",
                    "- CCTV 모니터링 적정 각도 유지"
                  ],
                  fieldList: [
                    FclImageField(name: 'd217', initialValue: vm.iof.d217),
                    FclRadioField(
                        name: 'd17',
                        map: const {"5": "5", "3": "3", "1": "1", "0": "0"},
                        preValue: vm.preData?.d17,
                        initialValue: vm.io.d17),
                    FclNoteField(
                        name: 'd106',
                        initialValue: vm.io.d106,
                        preValue: vm.preData?.d106)
                  ])),
          Obx(() => FclFieldView(
                  label: '3.2) 실간 차압역전(양압) 시 경보가 적절히 작동하는가?',
                  preYn: vm.pastYearYn,
                  desc: const [
                    "- 차압 역전시 통제실 경보알람 정상작동",
                    "- 차압 역전시 실험실내 경보알람 정상작동",
                    "- 경보알람 시 시각 및 청각알람 모두 작동(동물실의 경우 시각알람만 작동해야함)"
                  ],
                  fieldList: [
                    FclImageField(name: 'd218', initialValue: vm.iof.d218),
                    FclRadioField(
                        name: 'd18',
                        map: const {"5": "5", "3": "3", "1": "1", "0": "0"},
                        preValue: vm.preData?.d18,
                        initialValue: vm.io.d18),
                    FclNoteField(
                        name: 'd107',
                        initialValue: vm.io.d107,
                        preValue: vm.preData?.d107)
                  ])),
          Obx(() => FclFieldView(
                  label: '3.3) 비상전원공급(UPS)가 적절히 작동하는가?',
                  preYn: vm.pastYearYn,
                  desc: const [
                    "- 한전 전원차단 시 UPS 연동시스템 정상작동",
                    "- UPS 작동 시 실내 경보알람 정상작동",
                    "- UPS 작동 시 통제실 경보알람 정상작동"
                  ],
                  fieldList: [
                    FclImageField(name: 'd219', initialValue: vm.iof.d219),
                    FclRadioField(
                        name: 'd19',
                        map: const {"5": "5", "3": "3", "1": "1", "0": "0"},
                        preValue: vm.preData?.d19,
                        initialValue: vm.io.d19),
                    FclNoteField(
                        name: 'd108',
                        initialValue: vm.io.d108,
                        preValue: vm.preData?.d108)
                  ])),
          Obx(() => FclFieldView(
                  label: '3.4) 비상장비(손전등, 구급상자, 스필킷) 구비 및 적절히 작동하는가?',
                  preYn: vm.pastYearYn,
                  desc: const [
                    "- 소화설비/장비 구비",
                    "- 비상조명 피난 유도등 상태",
                    "- 구급상자 및 스필킷 구비"
                  ],
                  fieldList: [
                    FclImageField(name: 'd220', initialValue: vm.iof.d220),
                    FclRadioField(
                        name: 'd20',
                        map: const {"5": "5", "3": "3", "1": "1", "0": "0"},
                        preValue: vm.preData?.d20,
                        initialValue: vm.io.d20),
                    FclNoteField(
                        name: 'd109',
                        initialValue: vm.io.d109,
                        preValue: vm.preData?.d109)
                  ])),
          Obx(() => FclFieldView(
                  label: '동물) 동물탈출 시 연구자 행동 절차를 마련하고 게시하였는가?',
                  preYn: vm.pastYearYn,
                  fieldList: [
                    FclImageField(name: 'd221', initialValue: vm.iof.d221),
                    FclRadioField(
                        name: 'd21',
                        map: passOrNaMap,
                        preValue: vm.preData?.d21,
                        initialValue: vm.io.d21),
                    FclNoteField(
                        name: 'd110',
                        initialValue: vm.io.d110,
                        preValue: vm.preData?.d110)
                  ])),
          Obx(() => FclFieldView(
                  label: '대량) 밀폐시스템 이상 및 대량 스필 발생시 비상대응 절차를 마련하고 게시하였는가?',
                  preYn: vm.pastYearYn,
                  lastDividerYn: false,
                  fieldList: [
                    FclImageField(name: 'd222', initialValue: vm.iof.d222),
                    FclRadioField(
                        name: 'd22',
                        map: passOrNaMap,
                        preValue: vm.preData?.d22,
                        initialValue: vm.io.d22),
                    FclNoteField(
                        name: 'd111',
                        initialValue: vm.io.d111,
                        preValue: vm.preData?.d111)
                  ]))
        ],
      );
}
