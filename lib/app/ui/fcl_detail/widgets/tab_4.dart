import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:sisolab_flutter_biosafety/app/data/models/bio_io.dart';
import 'package:sisolab_flutter_biosafety/app/global/models/fcl_radio.dart';
import 'package:sisolab_flutter_biosafety/app/global/widgets/fcl/fcl_field.dart';
import 'package:sisolab_flutter_biosafety/app/global/widgets/fcl_divider.dart';
import 'package:sisolab_flutter_biosafety/app/ui/fcl_detail/fcl_new_detail_fields.dart';
import 'package:sisolab_flutter_biosafety/app/ui/fcl_detail/vms/fcl_detail_vm.dart';
import 'package:sisolab_flutter_biosafety/core/utils/extensions/list_widget_between.dart';

/// 2. 실험구역 설치 적절성 확인
class Tab4 extends StatelessWidget {
  const Tab4({super.key});

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
              Text("2. 실험구역 설치 적절성 확인", style: TextStyle(fontSize: 34.sp)),
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
                noteName: "d99",
                initialNote: vm.io.d99,
                label: "시설 도면과의 일치성",
                imageName: "attfile6str",
                initialImage: vm.io.attfile6str,
                fclRadio: FclRadio(
                    initialValue: vm.io.d10,
                    name: "d10",
                    map: FclNewDetailFields.saepnssUserRadio.map!),
              ),
              FclField(
                noteName: "d100",
                initialNote: vm.io.d100,
                label: "주출입구 잠금장치 및 출입통제",
                imageName: "attfile7str",
                initialImage: vm.io.attfile7str,
                fclRadio: FclRadio( 
                    initialValue: vm.io.d11,
                    name: "d11",
                    map: FclNewDetailFields.saepnssUserRadio.map!),
              ),
              FclField(
                noteName: "d101",
                initialNote: vm.io.d101,
                label: "장비 반출 가능한 문 설치",
                imageName: "attfile8str",
                initialImage: vm.io.attfile8str,
                fclRadio: FclRadio(
                    initialValue: vm.io.d12,
                    name: "d12",
                    map: FclNewDetailFields.saepnssUserRadio.map!),
              ),
              FclField(
                noteName: "d102",
                initialNote: vm.io.d102,
                label: "밀폐구역 내 인터락(수동조작 가능)",
                imageName: "attfile9str",
                initialImage: vm.io.attfile9str,
                fclRadio: FclRadio(
                    initialValue: vm.io.d13,
                    name: "d13",
                    map: FclNewDetailFields.saepnssUserRadio.map!),
              ),
              FclField(
                noteName: "d103",
                initialNote: vm.io.d103,
                label: "도어 자동 닫힘",
                imageName: "attfile10str",
                initialImage: vm.io.attfile10str,
                fclRadio: FclRadio(
                    initialValue: vm.io.d14,
                    name: "d14",
                    map: FclNewDetailFields.saepnssUserRadio.map!),
              ),
              FclField(
                initialNote: vm.io.d104,
                noteName: "d104",
                label: "비상샤워 설비 가동",
                initialImage: vm.io.attfile11str,
                imageName: "attfile11str",
                fclRadio: FclRadio(
                    initialValue: vm.io.d15,
                    name: "d15",
                    map: FclNewDetailFields.saepnssUserRadio.map!),
              ),
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
