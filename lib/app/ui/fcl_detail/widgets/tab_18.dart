import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:sisolab_flutter_biosafety/app/global/models/fcl_radio.dart';
import 'package:sisolab_flutter_biosafety/app/global/models/pre_data_box_item.dart';
import 'package:sisolab_flutter_biosafety/app/global/widgets/fcl/fcl_field.dart';
import 'package:sisolab_flutter_biosafety/app/global/widgets/fcl_divider.dart';
import 'package:sisolab_flutter_biosafety/app/global/widgets/pre_data_box.dart';
import 'package:sisolab_flutter_biosafety/app/ui/fcl_detail/vms/fcl_detail_vm.dart';
import 'package:sisolab_flutter_biosafety/core/constants/constant.dart';
import 'package:sisolab_flutter_biosafety/core/utils/extensions/list_widget_between.dart';

/// 7. 비상 시 가동성 확인
class Tab18 extends StatelessWidget {
  const Tab18({super.key});

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
              Text("7. 비상 시 가동성 확인", style: TextStyle(fontSize: 34.sp)),
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
          SizedBox(
            height: 47.h,
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              FclField(
                  noteName: "d130",
                  label: "비상장비(손전등, 구급상자) 비치",
                  imageName: "file37",
                  fclRadio: FclRadio(name: "d40", map: yesOrNoMap),
                  child: Obx(() => PreDataBox(
                        enable: vm.pastYearYn,
                        list: [
                          PreDataBoxItem(
                              value: vm.preData?.d40, radioMap: yesOrNoMap),
                          PreDataBoxItem(value: vm.preData?.d130)
                        ],
                      ))),
              FclField(
                  noteName: "d131",
                  label: "양방향 통신 시스템(인터폰, 전화 등)",
                  imageName: "file38",
                  fclRadio: FclRadio(name: "d41", map: yesOrNoMap),
                  child: Obx(() => PreDataBox(
                        enable: vm.pastYearYn,
                        list: [
                          PreDataBoxItem(
                              value: vm.preData?.d41, radioMap: yesOrNoMap),
                          PreDataBoxItem(value: vm.preData?.d131)
                        ],
                      ))),
              FclField(
                  noteName: "d132",
                  label: "CCTV 설치 위치 적절성 및 동작 확인",
                  imageName: "file39",
                  fclRadio: FclRadio(name: "d42", map: yesOrNoMap),
                  child: Obx(() => PreDataBox(
                        enable: vm.pastYearYn,
                        list: [
                          PreDataBoxItem(
                              value: vm.preData?.d43, radioMap: yesOrNoMap),
                          PreDataBoxItem(value: vm.preData?.d132)
                        ],
                      ))),
              FclField(
                  noteName: "d133",
                  label: "경보장치의 적정 위치 설치",
                  imageName: "file40",
                  fclRadio: FclRadio(name: "d43", map: yesOrNoMap),
                  child: Obx(() => PreDataBox(
                        enable: vm.pastYearYn,
                        list: [
                          PreDataBoxItem(
                              value: vm.preData?.d43, radioMap: yesOrNoMap),
                          PreDataBoxItem(value: vm.preData?.d133)
                        ],
                      ))),
              FclField(
                  noteName: "d134",
                  label: "실간 차압역전 및 양압 형성 시 경보",
                  imageName: "file41",
                  fclRadio: FclRadio(name: "d44", map: yesOrNoMap),
                  child: Obx(() => PreDataBox(
                        enable: vm.pastYearYn,
                        list: [
                          PreDataBoxItem(
                              value: vm.preData?.d44, radioMap: yesOrNoMap),
                          PreDataBoxItem(value: vm.preData?.d134)
                        ],
                      ))),
              FclField(
                  noteName: "d135",
                  label: "비상조명, 피난 유도등",
                  imageName: "file42",
                  fclRadio: FclRadio(name: "d45", map: yesOrNoMap),
                  child: Obx(() => PreDataBox(
                        enable: vm.pastYearYn,
                        list: [
                          PreDataBoxItem(
                              value: vm.preData?.d45, radioMap: yesOrNoMap),
                          PreDataBoxItem(value: vm.preData?.d135)
                        ],
                      ))),
              FclField(
                  noteName: "d136",
                  label: "소화설비/장비 구비",
                  imageName: "file43",
                  fclRadio: FclRadio(name: "d46", map: yesOrNoMap),
                  child: Obx(() => PreDataBox(
                        enable: vm.pastYearYn,
                        list: [
                          PreDataBoxItem(
                              value: vm.preData?.d46, radioMap: yesOrNoMap),
                          PreDataBoxItem(value: vm.preData?.d136)
                        ],
                      ))),
              FclField(
                  noteName: "d137",
                  label: "밀폐구역 내 스필 시 대응 장비(킷트) 등 구비",
                  imageName: "file44",
                  fclRadio: FclRadio(name: "d47", map: yesOrNoMap),
                  child: Obx(() => PreDataBox(
                        enable: vm.pastYearYn,
                        list: [
                          PreDataBoxItem(
                              value: vm.preData?.d47, radioMap: yesOrNoMap),
                          PreDataBoxItem(value: vm.preData?.d137)
                        ],
                      )))
            ].withWidgetBetween(Column(
              children: [
                SizedBox(
                  height: 47.h,
                ),
                const FclDivider.form(),
                SizedBox(
                  height: 47.h,
                )
              ],
            )),
          ),
          SizedBox(
            height: 47.h,
          ),
        ],
      );
}
