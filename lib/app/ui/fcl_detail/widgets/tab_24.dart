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

/// 5. 생물안전장비 설치 및 검증 확인
class Tab24 extends StatelessWidget {
  const Tab24({super.key});

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
              Text("5. 생물안전장비 설치 및 검증 확인", style: TextStyle(fontSize: 34.sp)),
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
                noteName: BioIoName.d115.name,
                label: "손 소독기 및 눈 세척기 적정 위치 설치",
                imageName: BioIoName.file22.name,
                fclRadio: FclRadio(
                    name: BioIoName.d26.name,
                    map: FclNewDetailFields.saepnssUserRadio.map!),
              ),
              FclField(
                noteName: BioIoName.d116.name,
                label: "패스박스 도어 기밀성",
                imageName: BioIoName.file23.name,
                fclRadio: FclRadio(
                    name: BioIoName.d27.name,
                    map: FclNewDetailFields.saepnssUserRadio.map!),
              ),
              FclField(
                noteName: BioIoName.d117.name,
                label: "패스박스 도어 인터락 설정",
                imageName: BioIoName.file24.name,
                fclRadio: FclRadio(
                    name: BioIoName.d28.name,
                    map: FclNewDetailFields.saepnssUserRadio.map!),
              ),
              FclField(
                noteName: BioIoName.d118.name,
                label: "멸균기 열침투 테스트(BI 멸균 테스트)",
                imageName: BioIoName.file25.name,
                fclRadio: FclRadio(
                    name: BioIoName.d29.name,
                    map: FclNewDetailFields.saepnssUserRadio.map!),
              ),
              FclField(
                noteName: BioIoName.d119.name,
                label: "생물안전작업대 적정 기류흐름 및 작동",
                imageName: BioIoName.file26.name,
                fclRadio: FclRadio(
                    name: BioIoName.d30.name,
                    map: FclNewDetailFields.saepnssUserRadio.map!),
              ),
              FclField(
                noteName: BioIoName.d120.name,
                label: "생물안전작업대 설치 위치",
                imageName: BioIoName.file27.name,
                fclRadio: FclRadio(
                    name: BioIoName.d31.name,
                    map: FclNewDetailFields.saepnssUserRadio.map!),
              ),
              FclField(
                noteName: BioIoName.d121.name,
                label: "Isolator 기밀성",
                imageName: BioIoName.file28.name,
                fclRadio: FclRadio(
                    name: BioIoName.d32.name,
                    map: FclNewDetailFields.saepnssUserRadio.map!),
              ),
              FclField(
                noteName: BioIoName.d122.name,
                label: "폐수처리 설비 제균필터 확인 및 설비 출입 통제",
                imageName: BioIoName.file29.name,
                fclRadio: FclRadio(
                    name: BioIoName.d33.name,
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
