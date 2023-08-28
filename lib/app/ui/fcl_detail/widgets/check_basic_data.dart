import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:sisolab_flutter_biosafety/app/data/models/bio_io.dart';
import 'package:sisolab_flutter_biosafety/app/ui/fcl_detail/fcl_new_detail_fields.dart';
import 'package:sisolab_flutter_biosafety/app/ui/fcl_detail/vms/fcl_detail_vm.dart';
import 'package:sisolab_flutter_biosafety/app/global/models/fcl_radio.dart';
import 'package:sisolab_flutter_biosafety/app/global/widgets/fcl/fcl_image_note_template.dart';
import 'package:sisolab_flutter_biosafety/app/global/widgets/fcl/fcl_person_template.dart';
import 'package:sisolab_flutter_biosafety/app/global/widgets/fcl_divider.dart';

/// 기본 자료 확인
class CheckBasicData extends StatelessWidget {
  const CheckBasicData({super.key});

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
              Text("1. 시설 설치 운영 기본 자료 확인", style: TextStyle(fontSize: 34.sp)),
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
            children: <Widget>[
              Text("연구자 및 관리자 생물안전교육 이수", style: context.textTheme.titleLarge),
              SizedBox(
                height: 23.h,
              ),
              FclImageNoteTemplate(
                label: "이미지 첨부",
                noteName: BioIoName.d179.name,
                imageName: BioIoName.file1.name,
              ),
              SizedBox(
                height: 40.h,
              ),
              FclPersonTemplate(
                  label: "관리책임자",
                  noteName: BioIoName.d181.name,
                  radioName: BioIoName.d1.name,
                  countName: BioIoName.d180.name,
                  radioMap: FclNewDetailFields.cbtframManagerRadio.map!),
              SizedBox(
                height: 40.h,
              ),
              FclPersonTemplate(
                  label: "관리자",
                  noteName: BioIoName.d182.name,
                  radioName: BioIoName.d2.name,
                  countName: BioIoName.d87.name,
                  radioMap: FclNewDetailFields.cbtframAdministratorRadio.map!),
              SizedBox(
                height: 40.h,
              ),
              FclPersonTemplate(
                  label: "사용자",
                  noteName: BioIoName.d183.name,
                  radioName: BioIoName.d3.name,
                  countName: BioIoName.d88.name,
                  radioMap: FclNewDetailFields.cbtframUserRadio.map!),
              SizedBox(
                height: 47.h,
              ),
              const FclDivider.form(),
              SizedBox(
                height: 47.h,
              ),
              Text("밀폐구역 출입자 정상 혈청 보관",
                  style: Theme.of(context).textTheme.titleLarge),
              SizedBox(
                height: 23.h,
              ),
              FclImageNoteTemplate(
                label: "이미지 첨부",
                noteName: BioIoName.d89.name,
                imageName: BioIoName.file2.name,
              ),
              SizedBox(
                height: 40.h,
              ),
              FclPersonTemplate(
                  label: "관리책임자",
                  noteName: BioIoName.d91.name,
                  radioName: BioIoName.d4.name,
                  countName: BioIoName.d90.name,
                  radioMap: FclNewDetailFields.saepnssManagerRadio.map!),
              SizedBox(
                height: 40.h,
              ),
              FclPersonTemplate(
                  label: "관리자",
                  noteName: BioIoName.d93.name,
                  radioName: BioIoName.d5.name,
                  countName: BioIoName.d92.name,
                  radioMap: FclNewDetailFields.saepnssAdministratorRadio.map!),
              SizedBox(
                height: 40.h,
              ),
              FclPersonTemplate(
                  label: "사용자",
                  noteName: BioIoName.d95.name,
                  radioName: BioIoName.d6.name,
                  countName: BioIoName.d94.name,
                  radioMap: FclNewDetailFields.saepnssUserRadio.map!),
              SizedBox(
                height: 47.h,
              ),
              const FclDivider.form(),
              SizedBox(
                height: 47.h,
              ),
              Text("검증서, 시설도면(건축,기계,전기,소방 등) 보관",
                  style: context.textTheme.titleLarge),
              FclImageNoteTemplate(
                label: "이미지 첨부",
                noteName: BioIoName.d96.name,
                fclRadio: FclRadio(
                    name: BioIoName.d7.name,
                    map: FclNewDetailFields.saepnssUserRadio.map!),
                // radioName: BioIoName.d7.name,
                imageName: BioIoName.file3.name,
              ),
              SizedBox(
                height: 47.h,
              ),
              const FclDivider.form(),
              SizedBox(
                height: 47.h,
              ),
              Text("생물안전관리규정 수립", style: context.textTheme.titleLarge),
              FclImageNoteTemplate(
                label: "이미지 첨부",
                noteName: BioIoName.d97.name,
                fclRadio: FclRadio(
                    name: BioIoName.d8.name,
                    map: FclNewDetailFields.saepnssUserRadio.map!),
                imageName: BioIoName.file4.name,
              ),
              SizedBox(
                height: 47.h,
              ),
              const FclDivider.form(),
              SizedBox(
                height: 47.h,
              ),
              Text("기관생물안전지침(시설운영사항 별도) 마련",
                  style: context.textTheme.titleLarge),
              FclImageNoteTemplate(
                label: "이미지 첨부",
                noteName: BioIoName.d98.name,
                fclRadio: FclRadio(
                    name: BioIoName.d9.name,
                    map: FclNewDetailFields.saepnssUserRadio.map!),
                imageName: BioIoName.file5.name,
              ),
              SizedBox(
                height: 47.h,
              ),
            ],
          )
        ],
      );
}
