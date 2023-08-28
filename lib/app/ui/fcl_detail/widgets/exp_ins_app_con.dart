import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:sisolab_flutter_biosafety/app/data/models/bio_io.dart';
import 'package:sisolab_flutter_biosafety/app/ui/fcl_detail/vms/fcl_detail_vm.dart';
import 'package:sisolab_flutter_biosafety/app/global/models/fcl_radio.dart';
import 'package:sisolab_flutter_biosafety/app/global/widgets/fcl/fcl_field.dart';
import 'package:sisolab_flutter_biosafety/app/global/widgets/fcl_divider.dart';
import 'package:sisolab_flutter_biosafety/app/ui/fcl_detail/fcl_new_detail_fields.dart';
import 'package:sisolab_flutter_biosafety/core/utils/extensions/list_widget_between.dart';

/// 2. 실험구역 설치 적절성 확인
class ExpInsAppCon extends StatelessWidget {
  const ExpInsAppCon({super.key});

  FclDetailVm get controller => FclDetailVm.to;

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
                      value: controller.pastYearYn,
                      onChanged: (v) {
                        controller.pastYearYn = v ?? false;
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
                noteName: BioIoName.d99.name,
                label: "시설 도면과의 일치성",
                imageName: BioIoName.file6.name,
                fclRadio: FclRadio(
                    name: BioIoName.d10.name,
                    map: FclNewDetailFields.saepnssUserRadio.map!),
              ),
              FclField(
                noteName: BioIoName.d100.name,
                label: "주출입구 잠금장치 및 출입통제",
                imageName: BioIoName.file7.name,
                fclRadio: FclRadio(
                    name: BioIoName.d11.name,
                    map: FclNewDetailFields.saepnssUserRadio.map!),
              ),
              FclField(
                noteName: BioIoName.d101.name,
                label: "장비 반출 가능한 문 설치",
                imageName: BioIoName.file8.name,
                fclRadio: FclRadio(
                    name: BioIoName.d12.name,
                    map: FclNewDetailFields.saepnssUserRadio.map!),
              ),
              FclField(
                noteName: BioIoName.d102.name,
                label: "밀폐구역 내 인터락(수동조작 가능)",
                imageName: BioIoName.file9.name,
                fclRadio: FclRadio(
                    name: BioIoName.d13.name,
                    map: FclNewDetailFields.saepnssUserRadio.map!),
              ),
              FclField(
                noteName: BioIoName.d103.name,
                label: "도어 자동 닫힘",
                imageName: BioIoName.file10.name,
                fclRadio: FclRadio(
                    name: BioIoName.d14.name,
                    map: FclNewDetailFields.saepnssUserRadio.map!),
              ),
              FclField(
                noteName: BioIoName.d104.name,
                label: "비상샤워 설비 가동",
                imageName: BioIoName.file11.name,
                fclRadio: FclRadio(
                    name: BioIoName.d15.name,
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
