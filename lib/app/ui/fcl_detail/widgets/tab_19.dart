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

/// 8. 유틸리티 가동성 확인
class Tab19 extends StatelessWidget {
  const Tab19({super.key});

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
              Text("8. 유틸리티 가동성 확인", style: TextStyle(fontSize: 34.sp)),
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
                  noteName: "d138",
                  label: "데이터 전송용 전자시스템",
                  imageName: "file45",
                  fclRadio: FclRadio(name: "d48", map: yesOrNoMap),
                  child: Obx(() => PreDataBox(
                        enable: vm.pastYearYn,
                        list: [
                          PreDataBoxItem(
                              value: vm.preData?.d48, radioMap: yesOrNoMap),
                          PreDataBoxItem(value: vm.preData?.d138)
                        ],
                      ))),
              FclField(
                  noteName: "d139",
                  label: "배관역류 방지장치",
                  imageName: "file46",
                  fclRadio: FclRadio(name: "d49", map: yesOrNoMap),
                  child: Obx(() => PreDataBox(
                        enable: vm.pastYearYn,
                        list: [
                          PreDataBoxItem(
                              value: vm.preData?.d49, radioMap: yesOrNoMap),
                          PreDataBoxItem(value: vm.preData?.d139)
                        ],
                      ))),
              FclField(
                  noteName: "d140",
                  label: "내부 차압 측정 계기 및 경보장치",
                  imageName: "file47",
                  fclRadio: FclRadio(name: "d50", map: yesOrNoMap),
                  child: Obx(() => PreDataBox(
                        enable: vm.pastYearYn,
                        list: [
                          PreDataBoxItem(
                              value: vm.preData?.d50, radioMap: yesOrNoMap),
                          PreDataBoxItem(value: vm.preData?.d140)
                        ],
                      ))),
              FclField(
                  noteName: "d141",
                  label: "비상전원공급(UPS 등) 연동 확인",
                  imageName: "file48",
                  fclRadio: FclRadio(name: "d51", map: yesOrNoMap),
                  child: Obx(() => PreDataBox(
                        enable: vm.pastYearYn,
                        list: [
                          PreDataBoxItem(
                              value: vm.preData?.d51, radioMap: yesOrNoMap),
                          PreDataBoxItem(value: vm.preData?.d141)
                        ],
                      ))),
              FclField(
                  noteName: "d142",
                  label: "가스공급 장치 설치 및 출입통제 확인",
                  imageName: "file49",
                  fclRadio: FclRadio(name: "d52", map: yesOrNoMap),
                  child: Obx(() => PreDataBox(
                        enable: vm.pastYearYn,
                        list: [
                          PreDataBoxItem(
                              value: vm.preData?.d52, radioMap: yesOrNoMap),
                          PreDataBoxItem(value: vm.preData?.d142)
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
