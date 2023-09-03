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

/// 4. 건축 특성(문과 천정, 등기구, 전기장비등의 마감, 관통, 코킹) 확인
class BuildingCharacConf extends StatelessWidget {
  const BuildingCharacConf({super.key});

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
                noteName: BioIoName.d107.name,
                initialNote: vm.io.d107,
                initialImage: vm.io.file14,
                label: "밀폐구역 내 접함 및 관통 부위의 기밀성",
                imageName: BioIoName.file14.name,
                fclRadio: FclRadio(
                    initialValue: vm.io.d18,
                    name: BioIoName.d18.name,
                    map: FclNewDetailFields.saepnssUserRadio.map!),
              ),
              FclField(
                noteName: BioIoName.d108.name,
                initialNote: vm.io.d108,
                initialImage: vm.io.file15,
                label: "밀폐구역 내 전열 콘센트 기밀성",
                imageName: BioIoName.file15.name,
                fclRadio: FclRadio(
                    initialValue: vm.io.d19,
                    name: BioIoName.d19.name,
                    map: FclNewDetailFields.saepnssUserRadio.map!),
              ),
              FclField(
                noteName: BioIoName.d109.name,
                initialNote: vm.io.d109,
                initialImage: vm.io.file16,
                label: "밀폐구역 내 조명기구 기밀성",
                imageName: BioIoName.file16.name,
                fclRadio: FclRadio(
                    initialValue: vm.io.d20,
                    name: BioIoName.d20.name,
                    map: FclNewDetailFields.saepnssUserRadio.map!),
              ),
              FclField(
                noteName: BioIoName.d110.name,
                initialNote: vm.io.d110,
                initialImage: vm.io.file17,
                label: "멸균기-벽체 이음새부위 기밀성",
                imageName: BioIoName.file17.name,
                fclRadio: FclRadio(
                    initialValue: vm.io.d21,
                    name: BioIoName.d21.name,
                    map: FclNewDetailFields.saepnssUserRadio.map!),
              ),
              FclField(
                noteName: BioIoName.d111.name,
                initialNote: vm.io.d111,
                initialImage: vm.io.file18,
                label: "기타 실험실 내부 벽체 연결부, 코너, 이음새 기밀성",
                imageName: BioIoName.file18.name,
                fclRadio: FclRadio(
                    initialValue: vm.io.d22,
                    name: BioIoName.d22.name,
                    map: FclNewDetailFields.saepnssUserRadio.map!),
              ),
              FclField(
                noteName: BioIoName.d112.name,
                initialNote: vm.io.d112,
                initialImage: vm.io.file19,
                label: "밀폐구역 내 싱크와 배수 위치 확인 및 기밀성",
                imageName: BioIoName.file19.name,
                fclRadio: FclRadio(
                    initialValue: vm.io.d23,
                    name: BioIoName.d23.name,
                    map: FclNewDetailFields.saepnssUserRadio.map!),
              ),
              FclField(
                noteName: BioIoName.d113.name,
                initialNote: vm.io.d113,
                initialImage: vm.io.file20,
                label: "실험실 내 온도, 습도 및 소음도",
                imageName: BioIoName.file20.name,
                fclRadio: FclRadio(
                    initialValue: vm.io.d24,
                    name: BioIoName.d24.name,
                    map: FclNewDetailFields.saepnssUserRadio.map!),
              ),
              FclField(
                noteName: BioIoName.d114.name,
                initialNote: vm.io.d114,
                initialImage: vm.io.file21,
                label: "밀폐구역 내 바닥 마감상태",
                imageName: BioIoName.file21.name,
                fclRadio: FclRadio(
                    initialValue: vm.io.d25,
                    name: BioIoName.d25.name,
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
