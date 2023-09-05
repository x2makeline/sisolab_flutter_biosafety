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
                  noteName: "d115",
                  label: "손 소독기 및 눈 세척기 적정 위치 설치",
                  imageName: "file22",
                  fclRadio: FclRadio(name: "d26", map: yesOrNoMap),
                  child: Obx(() => PreDataBox(
                        enable: vm.pastYearYn,
                        list: [
                          PreDataBoxItem(
                              value: vm.preData?.d26, radioMap: yesOrNoMap),
                          PreDataBoxItem(value: vm.preData?.d115)
                        ],
                      ))),
              FclField(
                  noteName: "d116",
                  label: "패스박스 도어 기밀성",
                  imageName: "file23",
                  fclRadio: FclRadio(name: "d27", map: yesOrNoMap),
                  child: Obx(() => PreDataBox(
                        enable: vm.pastYearYn,
                        list: [
                          PreDataBoxItem(
                              value: vm.preData?.d27, radioMap: yesOrNoMap),
                          PreDataBoxItem(value: vm.preData?.d116)
                        ],
                      ))),
              FclField(
                  noteName: "d117",
                  label: "패스박스 도어 인터락 설정",
                  imageName: "file24",
                  fclRadio: FclRadio(name: "d28", map: yesOrNoMap),
                  child: Obx(() => PreDataBox(
                        enable: vm.pastYearYn,
                        list: [
                          PreDataBoxItem(
                              value: vm.preData?.d28, radioMap: yesOrNoMap),
                          PreDataBoxItem(value: vm.preData?.d117)
                        ],
                      ))),
              FclField(
                  noteName: "d118",
                  label: "멸균기 열침투 테스트(BI 멸균 테스트)",
                  imageName: "file25",
                  fclRadio: FclRadio(name: "d29", map: yesOrNoMap),
                  child: Obx(() => PreDataBox(
                        enable: vm.pastYearYn,
                        list: [
                          PreDataBoxItem(
                              value: vm.preData?.d29, radioMap: yesOrNoMap),
                          PreDataBoxItem(value: vm.preData?.d118)
                        ],
                      ))),
              FclField(
                  noteName: "d119",
                  label: "생물안전작업대 적정 기류흐름 및 작동",
                  imageName: "file26",
                  fclRadio: FclRadio(name: "d30", map: yesOrNoMap),
                  child: Obx(() => PreDataBox(
                        enable: vm.pastYearYn,
                        list: [
                          PreDataBoxItem(
                              value: vm.preData?.d30, radioMap: yesOrNoMap),
                          PreDataBoxItem(value: vm.preData?.d119)
                        ],
                      ))),
              FclField(
                  noteName: "d120",
                  label: "생물안전작업대 설치 위치",
                  imageName: "file27",
                  fclRadio: FclRadio(name: "d31", map: yesOrNoMap),
                  child: Obx(() => PreDataBox(
                        enable: vm.pastYearYn,
                        list: [
                          PreDataBoxItem(
                              value: vm.preData?.d31, radioMap: yesOrNoMap),
                          PreDataBoxItem(value: vm.preData?.d120)
                        ],
                      ))),
              FclField(
                  noteName: "d121",
                  label: "Isolator 기밀성",
                  imageName: "file28",
                  fclRadio: FclRadio(name: "d32", map: yesOrNoMap),
                  child: Obx(() => PreDataBox(
                        enable: vm.pastYearYn,
                        list: [
                          PreDataBoxItem(
                              value: vm.preData?.d32, radioMap: yesOrNoMap),
                          PreDataBoxItem(value: vm.preData?.d121)
                        ],
                      ))),
              FclField(
                  noteName: "d122",
                  label: "폐수처리 설비 제균필터 확인 및 설비 출입 통제",
                  imageName: "file29",
                  fclRadio: FclRadio(name: "d33", map: yesOrNoMap),
                  child: Obx(() => PreDataBox(
                        enable: vm.pastYearYn,
                        list: [
                          PreDataBoxItem(
                              value: vm.preData?.d33, radioMap: yesOrNoMap),
                          PreDataBoxItem(value: vm.preData?.d122)
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
