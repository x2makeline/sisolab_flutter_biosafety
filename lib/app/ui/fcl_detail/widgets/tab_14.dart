import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:sisolab_flutter_biosafety/app/global/widgets/fcl_divider.dart';
import 'package:sisolab_flutter_biosafety/app/global/widgets/fcl_input.dart';
import 'package:sisolab_flutter_biosafety/app/ui/fcl_detail/vms/fcl_detail_vm.dart';
import 'package:sisolab_flutter_biosafety/core/constants/constant.dart';

/// (정기) 4. 시설 내 생물안전 정보 제공 확인
class Tab14 extends StatelessWidget {
  const Tab14({super.key});

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
              Text("4. 시설 내 생물안전 정보 제공 확인", style: TextStyle(fontSize: 34.sp)),
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
                  label: '4.1) 생물위해표지판(사용병원체, 안전관리자명) 및 밀폐구역 내 비상시 연락체계도 게시',
                  preYn: vm.pastYearYn,
                  lastDividerYn: false,
                  desc: const [
                    "- 주출입구 생물위해표지판 부착",
                    "- 실험실 출입구 생물위해표지판 부착",
                    "- 비상연락체계도 게시 및 현행화"
                  ],
                  fieldList: [
                    FclImageField(
                        name: 'attfile23str', initialValue: vm.io.attfile23str),
                    FclRadioField(
                        name: 'd23',
                        map: const {"3": "3", "2": "2", "1": "1", "0": "0"},
                        preValue: vm.preData?.d23,
                        initialValue: vm.io.d23),
                    FclNoteField(
                        name: 'd112',
                        initialValue: vm.io.d112,
                        preValue: vm.preData?.d112)
                  ])),
          Obx(() => FclFieldView(
                  label: '4.2) 개인보호구 착‧탈의 절차를 게시하였는가?',
                  preYn: vm.pastYearYn,
                  lastDividerYn: false,
                  desc: const [
                    "- 입갱의실 내 개인보호구 착의 절차 게시",
                    "- 탈의실 내 개인보호구 탈의 절차 게시",
                  ],
                  fieldList: [
                    FclImageField(
                        name: 'attfile24str', initialValue: vm.io.attfile24str),
                    FclRadioField(
                        name: 'd24',
                        map: const {"2": "2", "1": "1", "0": "0"},
                        preValue: vm.preData?.d24,
                        initialValue: vm.io.d24),
                    FclNoteField(
                        name: 'd113',
                        initialValue: vm.io.d113,
                        preValue: vm.preData?.d113)
                  ])),
          Obx(() => FclFieldView(
                  label: '4.3) 덕트나 배관의 유체종류 및 방향을 표기하였는가?',
                  preYn: vm.pastYearYn,
                  lastDividerYn: false,
                  desc: const [
                    "- 덕트에 유체종류 및 방향 표기",
                    "- 배관에 유체종류 및 방향 표기"
                  ],
                  fieldList: [
                    FclImageField(
                        name: 'attfile25str', initialValue: vm.io.attfile25str),
                    FclRadioField(
                        name: 'd25',
                        map: const {"2": "2", "1": "1", "0": "0"},
                        preValue: vm.preData?.d25,
                        initialValue: vm.io.d25),
                    FclNoteField(
                        name: 'd114',
                        initialValue: vm.io.d114,
                        preValue: vm.preData?.d114)
                  ])),
          Obx(() => FclFieldView(
                  label: '대량) 배양장치 등에 각 등급에 맞는 표시를 부착하였는가?',
                  preYn: vm.pastYearYn,
                  lastDividerYn: false,
                  fieldList: [
                    FclImageField(
                        name: 'attfile26str', initialValue: vm.io.attfile26str),
                    FclRadioField(
                        name: 'd26',
                        map: passOrNaMap,
                        preValue: vm.preData?.d26,
                        initialValue: vm.io.d26),
                    FclNoteField(
                        name: 'd115',
                        initialValue: vm.io.d115,
                        preValue: vm.preData?.d115)
                  ]))
        ],
      );
}
