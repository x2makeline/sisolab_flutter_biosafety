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

/// 6. 생물안전 정보 제공 및 이행
class Tab25 extends StatelessWidget {
  const Tab25({super.key});

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
              Text("6. 생물안전 정보 제공 및 이행", style: TextStyle(fontSize: 34.sp)),
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
                noteName: "d123",
                label: "생물위해표지판(사용병원체, 안전관리자명) 게시",
                imageName: "file30",
                fclRadio: FclRadio(
                    name: "d34",
                    map: FclNewDetailFields.saepnssUserRadio.map!),
              ),
              FclField(
                noteName: "d124",
                label: "개인보호구 착,탈의 절차 게시",
                imageName: "file31",
                fclRadio: FclRadio(
                    name: "d35",
                    map: FclNewDetailFields.saepnssUserRadio.map!),
              ),
              FclField(
                noteName: "d125",
                label: "밀폐구역 내 각 실험실 입구 차압계 설치",
                imageName: "file32",
                fclRadio: FclRadio(
                    name: "d36",
                    map: FclNewDetailFields.saepnssUserRadio.map!),
              ),
              FclField(
                noteName: "d126",
                label: "밀폐구역 내 비상시 연락체계도 게시",
                imageName: "file33",
                fclRadio: FclRadio(
                    name: "d37",
                    map: FclNewDetailFields.saepnssUserRadio.map!),
              ),
              FclField(
                noteName: "d127",
                label: "덕트나 배관의 이름 표시",
                imageName: "file34",
                fclRadio: FclRadio(
                    name: "d38",
                    map: FclNewDetailFields.saepnssUserRadio.map!),
              ),
              FclField(
                noteName: "d128",
                label: "비상시 가동 및 운영 정지 시의 절차 게시(밀폐시스템 이상 및 대량 스필 발생 포함)",
                imageName: "file35",
                fclRadio: FclRadio(
                    name: "d67",
                    map: FclNewDetailFields.saepnssUserRadio.map!),
              ),
              FclField(
                noteName: "d129",
                label: "배양장치 등에 각 등급에 맞는 표시 부착",
                imageName: "file36",
                fclRadio: FclRadio(
                    name: "d39",
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
