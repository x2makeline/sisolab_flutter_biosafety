import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:sisolab_flutter_biosafety/app/global/widgets/fcl_divider.dart';
import 'package:sisolab_flutter_biosafety/app/global/widgets/fcl_input.dart';
import 'package:sisolab_flutter_biosafety/app/ui/fcl_detail/vms/fcl_detail_vm.dart';
import 'package:sisolab_flutter_biosafety/core/constants/constant.dart';

/// 4. 건축 특성(문과 천정, 등기구, 전기장비등의 마감, 관통, 코킹) 확인
class Tab23 extends StatelessWidget {
  const Tab23({super.key});

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
              Text("4. 건축 특성(문과 천정, 등기구, 전기장비등의 마감, 관통, 코킹) 확인",
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
                  label: "밀폐구역 내 접함 및 관통 부위의 기밀성",
                  preYn: vm.pastYearYn,
                  fieldList: [
                    FclImageField(
                        name: 'file14', ),
                    FclRadioField(
                        name: 'd18',
                        map: yesOrNoMap,
                        preValue: vm.preData?.d18,
                        initialValue: vm.io.d18),
                    FclNoteField(
                        name: 'd107',
                        initialValue: vm.io.d107,
                        preValue: vm.preData?.d107)
                  ])),
          Obx(() => FclFieldView(
                  label: "밀폐구역 내 전열 콘센트 기밀성",
                  preYn: vm.pastYearYn,
                  fieldList: [
                    FclImageField(
                        name: 'file15', ),
                    FclRadioField(
                        name: 'd19',
                        map: yesOrNoMap,
                        preValue: vm.preData?.d19,
                        initialValue: vm.io.d19),
                    FclNoteField(
                        name: 'd108',
                        initialValue: vm.io.d108,
                        preValue: vm.preData?.d108)
                  ])),
          Obx(() => FclFieldView(
                  label: "밀폐구역 내 조명기구 기밀성",
                  preYn: vm.pastYearYn,
                  fieldList: [
                    FclImageField(
                        name: 'file16', ),
                    FclRadioField(
                        name: 'd20',
                        map: yesOrNoMap,
                        preValue: vm.preData?.d20,
                        initialValue: vm.io.d20),
                    FclNoteField(
                        name: 'd109',
                        initialValue: vm.io.d109,
                        preValue: vm.preData?.d109)
                  ])),
          Obx(() => FclFieldView(
                  label: "멸균기-벽체 이음새부위 기밀성",
                  preYn: vm.pastYearYn,
                  fieldList: [
                    FclImageField(
                        name: 'file17', ),
                    FclRadioField(
                        name: 'd21',
                        map: yesOrNoMap,
                        preValue: vm.preData?.d21,
                        initialValue: vm.io.d21),
                    FclNoteField(
                        name: 'd110',
                        initialValue: vm.io.d110,
                        preValue: vm.preData?.d110)
                  ])),
          Obx(() => FclFieldView(
                  label: "기타 실험실 내부 벽체 연결부, 코너, 이음새 기밀성",
                  preYn: vm.pastYearYn,
                  fieldList: [
                    FclImageField(
                        name: 'file18', ),
                    FclRadioField(
                        name: 'd22',
                        map: yesOrNoMap,
                        preValue: vm.preData?.d22,
                        initialValue: vm.io.d22),
                    FclNoteField(
                        name: 'd111',
                        initialValue: vm.io.d111,
                        preValue: vm.preData?.d111)
                  ])),
          Obx(() => FclFieldView(
                  label: "밀폐구역 내 싱크와 배수 위치 확인 및 기밀성",
                  preYn: vm.pastYearYn,
                  fieldList: [
                    FclImageField(
                        name: 'file19', ),
                    FclRadioField(
                        name: 'd23',
                        map: yesOrNoMap,
                        preValue: vm.preData?.d23,
                        initialValue: vm.io.d23),
                    FclNoteField(
                        name: 'd112',
                        initialValue: vm.io.d112,
                        preValue: vm.preData?.d112)
                  ])),
          Obx(() => FclFieldView(
                  label: "실험실 내 온도, 습도 및 소음도",
                  preYn: vm.pastYearYn,
                  fieldList: [
                    FclImageField(
                        name: 'file20', ),
                    FclRadioField(
                        name: 'd24',
                        map: yesOrNoMap,
                        preValue: vm.preData?.d24,
                        initialValue: vm.io.d24),
                    FclNoteField(
                        name: 'd113',
                        initialValue: vm.io.d113,
                        preValue: vm.preData?.d113)
                  ])),
          Obx(() => FclFieldView(
                  label: "밀폐구역 내 바닥 마감상태",
                  preYn: vm.pastYearYn,
                  lastDividerYn: true,
                  fieldList: [
                    FclImageField(
                        name: 'file21', ),
                    FclRadioField(
                        name: 'd25',
                        map: yesOrNoMap,
                        preValue: vm.preData?.d25,
                        initialValue: vm.io.d25),
                    FclNoteField(
                        name: 'd114',
                        initialValue: vm.io.d114,
                        preValue: vm.preData?.d114)
                  ])),
        ],
      );
}
