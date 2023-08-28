import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:sisolab_flutter_biosafety/app/data/models/bio_io.dart';
import 'package:sisolab_flutter_biosafety/app/ui/fcl_detail/fcl_new_detail_fields.dart';
import 'package:sisolab_flutter_biosafety/app/ui/fcl_detail/vms/fcl_detail_vm.dart';
import 'package:sisolab_flutter_biosafety/app/global/models/fcl_radio.dart';
import 'package:sisolab_flutter_biosafety/app/global/widgets/fcl/fcl_field.dart';
import 'package:sisolab_flutter_biosafety/app/global/widgets/fcl_divider.dart';
import 'package:sisolab_flutter_biosafety/core/utils/extensions/list_widget_between.dart';



/// 11. 급, 배기 연동 확인
class CheckSupplyAndExhaustInterlocking extends StatelessWidget {
  const CheckSupplyAndExhaustInterlocking({super.key});

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
              Text("11. 급, 배기 연동 확인", style: TextStyle(fontSize: 34.sp)),
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
                noteName: BioIoName.d148.name,
                label: "급기팬 1 OFF의 경우, 실내 설정압력 유지 (상시음압)",
                imageName: BioIoName.file54.name,
                fclRadio: FclRadio(
                    name: BioIoName.d58.name,
                    map: FclNewDetailFields.saepnssUserRadio.map!),
              ),
              FclField(
                noteName: BioIoName.d149.name,
                label: "급기팬 2 OFF의 경우, 실내 설정압력 유지 (상시음압)",
                imageName: BioIoName.file55.name,
                fclRadio: FclRadio(
                    name: BioIoName.d59.name,
                    map: FclNewDetailFields.saepnssUserRadio.map!),
              ),
              FclField(
                noteName: BioIoName.d150.name,
                label: "배기팬 1 OFF의 경우, 실내 설정압력 유지 (상시음압)",
                imageName: BioIoName.file56.name,
                fclRadio: FclRadio(
                    name: BioIoName.d60.name,
                    map: FclNewDetailFields.saepnssUserRadio.map!),
              ),
              FclField(
                noteName: BioIoName.d151.name,
                label: "배기팬 2 OFF의 경우, 실내 설정압력 유지 (상시음압)",
                imageName: BioIoName.file57.name,
                fclRadio: FclRadio(
                    name: BioIoName.d61.name,
                    map: FclNewDetailFields.saepnssUserRadio.map!),
              )
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
