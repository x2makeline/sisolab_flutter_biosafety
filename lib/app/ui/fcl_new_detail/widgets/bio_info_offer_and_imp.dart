import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:sisolab_flutter_biosafety/app/data/models/bio_io.dart';
import 'package:sisolab_flutter_biosafety/app/global/models/fcl_detail_controller.dart';
import 'package:sisolab_flutter_biosafety/app/global/models/fcl_radio.dart';
import 'package:sisolab_flutter_biosafety/app/global/widgets/fcl/fcl_field.dart';
import 'package:sisolab_flutter_biosafety/app/global/widgets/fcl_divider.dart';
import 'package:sisolab_flutter_biosafety/app/ui/fcl_new_detail/fcl_new_detail_fields.dart';
import 'package:sisolab_flutter_biosafety/core/utils/extensions/list_widget_between.dart';

/// 6. 생물안전 정보 제공 및 이행
class BioInfoOfferAndImp extends StatelessWidget {
  const BioInfoOfferAndImp({super.key});

  FclDetailController get controller => FclDetailController.to;

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
                noteName: BioIoName.d123.name,
                label: "생물위해표지판(사용병원체, 안전관리자명) 게시",
                imageName: BioIoName.file30.name,
                fclRadio: FclRadio(
                    name: BioIoName.d34.name,
                    map: FclNewDetailFields.saepnssUserRadio.map!),
              ),
              FclField(
                noteName: BioIoName.d124.name,
                label: "개인보호구 착,탈의 절차 게시",
                imageName: BioIoName.file31.name,
                fclRadio: FclRadio(
                    name: BioIoName.d35.name,
                    map: FclNewDetailFields.saepnssUserRadio.map!),
              ),
              FclField(
                noteName: BioIoName.d125.name,
                label: "밀폐구역 내 각 실험실 입구 차압계 설치",
                imageName: BioIoName.file32.name,
                fclRadio: FclRadio(
                    name: BioIoName.d36.name,
                    map: FclNewDetailFields.saepnssUserRadio.map!),
              ),
              FclField(
                noteName: BioIoName.d126.name,
                label: "밀폐구역 내 비상시 연락체계도 게시",
                imageName: BioIoName.file33.name,
                fclRadio: FclRadio(
                    name: BioIoName.d37.name,
                    map: FclNewDetailFields.saepnssUserRadio.map!),
              ),
              FclField(
                noteName: BioIoName.d127.name,
                label: "덕트나 배관의 이름 표시",
                imageName: BioIoName.file34.name,
                fclRadio: FclRadio(
                    name: BioIoName.d38.name,
                    map: FclNewDetailFields.saepnssUserRadio.map!),
              ),
              FclField(
                noteName: BioIoName.d128.name,
                label: "비상시 가동 및 운영 정지 시의 절차 게시(밀폐시스템 이상 및 대량 스필 발생 포함)",
                imageName: BioIoName.file35.name,
                fclRadio: FclRadio(
                    name: BioIoName.d67.name,
                    map: FclNewDetailFields.saepnssUserRadio.map!),
              ),
              FclField(
                noteName: BioIoName.d129.name,
                label: "배양장치 등에 각 등급에 맞는 표시 부착",
                imageName: BioIoName.file36.name,
                fclRadio: FclRadio(
                    name: BioIoName.d39.name,
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
