import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:sisolab_flutter_biosafety/app/global/widgets/fcl/fcl_image_note_template.dart';
import 'package:sisolab_flutter_biosafety/app/global/widgets/fcl/fcl_person_template.dart';
import 'package:sisolab_flutter_biosafety/app/global/widgets/fcl_divider.dart';
import 'package:sisolab_flutter_biosafety/app/ui/fcl_new_detail/fcl_new_detail_fields.dart';
import 'package:sisolab_flutter_biosafety/core/utils/extensions/double.dart';
import 'package:sisolab_flutter_biosafety/core/utils/extensions/list_space_between.dart';

class CheckBasicData extends StatelessWidget {
  CheckBasicData({super.key});

  final _pastYearYn = RxBool(false);

  bool get pastYearYn => _pastYearYn.value;

  @override
  Widget build(BuildContext context) => Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text("설치 ∙ 운영 적격성 평가",
              style: Theme.of(context).textTheme.headlineSmall),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text("1. 시설 설치 운영 기본 자료 확인",
                  style: Theme.of(context).textTheme.titleLarge),
              Row(
                children: [
                  Text("과년도 자료", style: TextStyle(fontSize: 28.sp)),
                  Obx(() => Checkbox(
                      value: pastYearYn,
                      onChanged: (v) {
                        _pastYearYn.value = v ?? false;
                      }))
                ],
              )
            ],
          ),
          const FclDivider.black(),
          SizedBox(
            height: 47.h,
          ),
          Text("연구자 및 관리자 생물안전교육 이수",
              style: Theme.of(context).textTheme.bodyLarge),
          SizedBox(height: 23.h,),
          Column(
            children: <Widget>[
              FclImageNoteTemplate(
                label: "이미지 첨부",
                noteName: FclNewDetailFields.cbtframImageNote.name,
                imageName: FclNewDetailFields.cbtframImage.name,
              ),
              FclPersonTemplate(
                  label: "관리책임자",
                  noteName: FclNewDetailFields.cbtframManagerNote.name,
                  radioName: FclNewDetailFields.cbtframManagerRadio.name,
                  countName: FclNewDetailFields.cbtframManagerCount.name,
                  radioMap: FclNewDetailFields.cbtframManagerRadio.map!),
              FclPersonTemplate(
                  label: "관리자",
                  noteName: FclNewDetailFields.cbtframAdministratorNote.name,
                  radioName: FclNewDetailFields.cbtframAdministratorRadio.name,
                  countName: FclNewDetailFields.cbtframAdministratorCount.name,
                  radioMap: FclNewDetailFields.cbtframAdministratorRadio.map!),
              FclPersonTemplate(
                  label: "사용자",
                  noteName: FclNewDetailFields.cbtframUserNote.name,
                  radioName: FclNewDetailFields.cbtframUserRadio.name,
                  countName: FclNewDetailFields.cbtframUserCount.name,
                  radioMap: FclNewDetailFields.cbtframUserRadio.map!),
              const Divider(),
              Text("밀폐구역 출입자 정상 혈청 보관",
                  style: Theme.of(context).textTheme.headlineSmall),
              FclImageNoteTemplate(
                label: "이미지 첨부",
                noteName: FclNewDetailFields.saepnssImageNote.name,
                imageName: FclNewDetailFields.saepnssImage.name,
              ),
              FclPersonTemplate(
                  label: "관리책임자",
                  noteName: FclNewDetailFields.saepnssManagerNote.name,
                  radioName: FclNewDetailFields.saepnssManagerRadio.name,
                  countName: FclNewDetailFields.saepnssManagerCount.name,
                  radioMap: FclNewDetailFields.saepnssManagerRadio.map!),
              FclPersonTemplate(
                  label: "관리자",
                  noteName: FclNewDetailFields.saepnssAdministratorNote.name,
                  radioName: FclNewDetailFields.saepnssAdministratorRadio.name,
                  countName: FclNewDetailFields.saepnssAdministratorCount.name,
                  radioMap: FclNewDetailFields.saepnssAdministratorRadio.map!),
              FclPersonTemplate(
                  label: "사용자",
                  noteName: FclNewDetailFields.saepnssUserNote.name,
                  radioName: FclNewDetailFields.saepnssUserRadio.name,
                  countName: FclNewDetailFields.saepnssUserCount.name,
                  radioMap: FclNewDetailFields.saepnssUserRadio.map!)
            ].withSpaceBetween(height: 39.h),
          )
        ],
      );
}
