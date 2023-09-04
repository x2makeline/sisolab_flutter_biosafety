import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:sisolab_flutter_biosafety/app/data/models/bio_io.dart';
import 'package:sisolab_flutter_biosafety/app/global/models/fcl_radio.dart';
import 'package:sisolab_flutter_biosafety/app/global/widgets/fcl/fcl_image_note_template.dart';
import 'package:sisolab_flutter_biosafety/app/global/widgets/fcl/fcl_person_template.dart';
import 'package:sisolab_flutter_biosafety/app/global/widgets/fcl_divider.dart';
import 'package:sisolab_flutter_biosafety/app/ui/fcl_detail/fcl_new_detail_fields.dart';
import 'package:sisolab_flutter_biosafety/app/ui/fcl_detail/vms/fcl_detail_vm.dart';

/// 기본 자료 확인
class Tab3 extends StatelessWidget {
  const Tab3({super.key});

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
              Text("1. 시설 설치 운영 기본 자료 확인", style: TextStyle(fontSize: 34.sp)),
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
            children: <Widget>[
              Text("연구자 및 관리자 생물안전교육 이수", style: context.textTheme.titleLarge),
              SizedBox(
                height: 23.h,
              ),
              FclImageNoteTemplate(
                initialImage: vm.io.attfile1str,
                label: "이미지 첨부", 
                noteName: "d179",
                initialNote: vm.io.d179,
                imageName: "attfile1str",
              ),
              SizedBox(
                height: 40.h,
              ),
              FclPersonTemplate(
                  label: "관리책임자",
                  initialNote: vm.io.d181,
                  initialRadio: vm.io.d1,
                  initialCount: vm.io.d180,
                  noteName: "d181",
                  radioName: "d1",
                  countName: "d180",
                  radioMap: FclNewDetailFields.cbtframManagerRadio.map!),
              SizedBox(
                height: 40.h,
              ),
              FclPersonTemplate(
                  label: "관리자",
                  initialNote: vm.io.d182,
                  initialRadio: vm.io.d2,
                  initialCount: vm.io.d87,
                  noteName: "d182",
                  radioName: "d2",
                  countName: "d87",
                  radioMap: FclNewDetailFields.cbtframAdministratorRadio.map!),
              SizedBox(
                height: 40.h,
              ),
              FclPersonTemplate(
                  label: "사용자",
                  initialNote: vm.io.d183,
                  initialRadio: vm.io.d3,
                  initialCount: vm.io.d88,
                  noteName: "d183",
                  radioName: "d3",
                  countName: "d88",
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
                initialNote: vm.io.d89, 
                initialImage: vm.io.attfile2str,
                noteName: "d89",
                imageName: "attfile2str",
              ),
              SizedBox(
                height: 40.h,
              ),
              FclPersonTemplate(
                  label: "관리책임자",
                  initialNote: vm.io.d91,
                  initialRadio: vm.io.d4,
                  initialCount: vm.io.d90,
                  noteName: "d91",
                  radioName: "d4",
                  countName: "d90",
                  radioMap: FclNewDetailFields.saepnssManagerRadio.map!),
              SizedBox(
                height: 40.h,
              ),
              FclPersonTemplate(
                  label: "관리자",
                  initialNote: vm.io.d93,
                  initialRadio: vm.io.d5,
                  initialCount: vm.io.d92,
                  noteName: "d93",
                  radioName: "d5",
                  countName: "d92",
                  radioMap: FclNewDetailFields.saepnssAdministratorRadio.map!),
              SizedBox(
                height: 40.h,
              ),
              FclPersonTemplate(
                  label: "사용자",
                  initialNote: vm.io.d95,
                  initialRadio: vm.io.d6,
                  initialCount: vm.io.d94,
                  noteName: "d95",
                  radioName: "d6",
                  countName: "d94",
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
                noteName: "d96",

                initialNote: vm.io.d96, 
                initialImage: vm.io.attfile3str,

                fclRadio: FclRadio(
                    initialValue: vm.io.d7,
                    name: "d7",
                    map: FclNewDetailFields.saepnssUserRadio.map!),
                // radioName: "d7",
                imageName: "attfile3str",
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
                initialNote: vm.io.d97,
                noteName: "d97",
                fclRadio: FclRadio(
                    initialValue: vm.io.d8,
                    name: "d8",
                    map: FclNewDetailFields.saepnssUserRadio.map!),
                initialImage: vm.io.attfile4str, 
                imageName: "attfile4str",
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
                initialNote: vm.io.d98,
                noteName: "d98",
                fclRadio: FclRadio(
                    initialValue: vm.io.d9,
                    name: "d9",
                    map: FclNewDetailFields.saepnssUserRadio.map!),
                initialImage: vm.io.attfile5str,
                imageName: "attfile5str",
              ),
              SizedBox(
                height: 47.h,
              ),
            ],
          )
        ],
      );
}
