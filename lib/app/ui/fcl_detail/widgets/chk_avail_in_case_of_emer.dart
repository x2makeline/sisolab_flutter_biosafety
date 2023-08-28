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

/// 7. 비상 시 가동성 확인
class ChkAvailInCaseOfEmer extends StatelessWidget {
  const ChkAvailInCaseOfEmer({super.key});

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
              Text("7. 비상 시 가동성 확인", style: TextStyle(fontSize: 34.sp)),
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
                noteName: BioIoName.d130.name,
                label: "비상장비(손전등, 구급상자) 비치",
                imageName: BioIoName.file37.name,
                fclRadio: FclRadio(
                    name: BioIoName.d40.name,
                    map: FclNewDetailFields.saepnssUserRadio.map!),
              ),
              FclField(
                noteName: BioIoName.d131.name,
                label: "양방향 통신 시스템(인터폰, 전화 등)",
                imageName: BioIoName.file38.name,
                fclRadio: FclRadio(
                    name: BioIoName.d41.name,
                    map: FclNewDetailFields.saepnssUserRadio.map!),
              ),
              FclField(
                noteName: BioIoName.d132.name,
                label: "CCTV 설치 위치 적절성 및 동작 확인",
                imageName: BioIoName.file39.name,
                fclRadio: FclRadio(
                    name: BioIoName.d42.name,
                    map: FclNewDetailFields.saepnssUserRadio.map!),
              ),
              FclField(
                noteName: BioIoName.d133.name,
                label: "경보장치의 적정 위치 설치",
                imageName: BioIoName.file40.name,
                fclRadio: FclRadio(
                    name: BioIoName.d43.name,
                    map: FclNewDetailFields.saepnssUserRadio.map!),
              ),
              FclField(
                noteName: BioIoName.d134.name,
                label: "실간 차압역전 및 양압 형성 시 경보",
                imageName: BioIoName.file41.name,
                fclRadio: FclRadio(
                    name: BioIoName.d44.name,
                    map: FclNewDetailFields.saepnssUserRadio.map!),
              ),
              FclField(
                noteName: BioIoName.d135.name,
                label: "비상조명, 피난 유도등",
                imageName: BioIoName.file42.name,
                fclRadio: FclRadio(
                    name: BioIoName.d45.name,
                    map: FclNewDetailFields.saepnssUserRadio.map!),
              ),
              FclField(
                noteName: BioIoName.d136.name,
                label: "소화설비/장비 구비",
                imageName: BioIoName.file43.name,
                fclRadio: FclRadio(
                    name: BioIoName.d46.name,
                    map: FclNewDetailFields.saepnssUserRadio.map!),
              ),
              FclField(
                noteName: BioIoName.d137.name,
                label: "밀폐구역 내 스필 시 대응 장비(킷트) 등 구비",
                imageName: BioIoName.file44.name,
                fclRadio: FclRadio(
                    name: BioIoName.d47.name,
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
