import 'package:flutter/material.dart';
import 'package:flutter_form_builder/flutter_form_builder.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:sisolab_flutter_biosafety/app/data/models/bio_io.dart';
import 'package:sisolab_flutter_biosafety/app/global/widgets/fcl/fcl_image_picker.dart';
import 'package:sisolab_flutter_biosafety/app/global/widgets/fcl/fcl_radio_group.dart';
import 'package:sisolab_flutter_biosafety/app/global/widgets/fcl_divider.dart';
import 'package:sisolab_flutter_biosafety/app/global/widgets/field_with_label.dart';
import 'package:sisolab_flutter_biosafety/app/global/widgets/form_builder/form_builder_note.dart';
import 'package:sisolab_flutter_biosafety/app/ui/fcl_detail/vms/fcl_detail_vm.dart';

/// (정기) 4. 시설 내 생물안전 정보 제공 확인
class ConOfProvi extends StatelessWidget {
  const ConOfProvi({super.key});

  FclDetailVm get vm => FclDetailVm.to;

  @override
  Widget build(BuildContext context) => Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text("세부점검사항",
              style: TextStyle(fontSize: 34.sp, fontWeight: FontWeight.w500)),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text("4. 시설 내 생물안전 정보 제공 확인", style: TextStyle(fontSize: 34.sp)),
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
              Text("4.1) 생물위해표지판(사용병원체, 안전관리자명) 및 밀폐구역 내 비상시 연락체계도 게시",
                  style: context.textTheme.titleLarge),
              Padding(
                padding: EdgeInsets.all(10.sp),
                child: Container(
                  width: double.infinity,
                  padding: EdgeInsets.all(30.sp),
                  decoration: BoxDecoration(
                      border: Border.all(
                          color: const Color(0xff188657),
                          style: BorderStyle.solid,
                          width: 4)),
                  child: Text(
                    "- 주출입구 생물위해표지판 부착\n- 실험실 출입구 생물위해표지판 부착\n- 비상연락체계도 게시 및 현행화",
                    style: TextStyle(fontSize: 28.sp),
                  ),
                ),
              ),
              SizedBox(
                height: 20.h,
              ),
              FieldWithLabel(
                  label: "이미지 첨부",
                  child: FormBuilderFclImagePicker(
                    name: BioIoName.file23.name,
                  )),
              FclRadioGroup(
                name: BioIoName.d23.name,
                initialValue: vm.io.d23,
                labelWithKey: false,
                wrapAlignment: WrapAlignment.start,
                orientation: OptionsOrientation.wrap,
                map: const {"3": "3", "2": "2", "1": "1", "0": "0"},
              ),
              FormBuilderNote(
                name: BioIoName.d112.name,
              ),
            ],
          ),
          SizedBox(height: 50.h),
          const FclDivider.form(),
          SizedBox(height: 50.h),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text("4.2) 개인보호구 착‧탈의 절차를 게시하였는가?",
                  style: context.textTheme.titleLarge),
              Padding(
                padding: EdgeInsets.all(10.sp),
                child: Container(
                  width: double.infinity,
                  padding: EdgeInsets.all(30.sp),
                  decoration: BoxDecoration(
                      border: Border.all(
                          color: const Color(0xff188657),
                          style: BorderStyle.solid,
                          width: 4)),
                  child: Text(
                    "- 입갱의실 내 개인보호구 착의 절차 게시\n- 탈의실 내 개인보호구 탈의 절차 게시",
                    style: TextStyle(fontSize: 28.sp),
                  ),
                ),
              ),
              SizedBox(
                height: 20.h,
              ),
              FieldWithLabel(
                  label: "이미지 첨부",
                  child: FormBuilderFclImagePicker(
                    name: BioIoName.file24.name,
                  )),
              FclRadioGroup(
                name: BioIoName.d24.name,
                initialValue: vm.io.d24,
                labelWithKey: false,
                wrapAlignment: WrapAlignment.start,
                orientation: OptionsOrientation.wrap,
                map: const {"2": "2", "1": "1", "0": "0"},
              ),
              FormBuilderNote(
                name: BioIoName.d113.name,
              ),
            ],
          ),
          SizedBox(height: 50.h),
          const FclDivider.form(),
          SizedBox(height: 50.h),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text("4.3) 덕트나 배관의 유체종류 및 방향을 표기하였는가?",
                  style: context.textTheme.titleLarge),
              Padding(
                padding: EdgeInsets.all(10.sp),
                child: Container(
                  width: double.infinity,
                  padding: EdgeInsets.all(30.sp),
                  decoration: BoxDecoration(
                      border: Border.all(
                          color: const Color(0xff188657),
                          style: BorderStyle.solid,
                          width: 4)),
                  child: Text(
                    "- 덕트에 유체종류 및 방향 표기\n- 배관에 유체종류 및 방향 표기",
                    style: TextStyle(fontSize: 28.sp),
                  ),
                ),
              ),
              SizedBox(
                height: 20.h,
              ),
              FieldWithLabel(
                  label: "이미지 첨부",
                  child: FormBuilderFclImagePicker(
                    name: BioIoName.file25.name,
                  )),
              FclRadioGroup(
                name: BioIoName.d25.name,
                initialValue: vm.io.d25,
                labelWithKey: false,
                wrapAlignment: WrapAlignment.start,
                orientation: OptionsOrientation.wrap,
                map: const {"2": "2", "1": "1", "0": "0"},
              ),
              FormBuilderNote(
                name: BioIoName.d114.name,
              ),
            ],
          ),
          SizedBox(height: 50.h),
          const FclDivider.form(),
          SizedBox(height: 50.h),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text("대량) 배양장치 등에 각 등급에 맞는 표시를 부착하였는가?",
                  style: context.textTheme.titleLarge),
              SizedBox(
                height: 20.h,
              ),
              FieldWithLabel(
                  label: "이미지 첨부",
                  child: FormBuilderFclImagePicker(
                    name: BioIoName.file26.name,
                  )),
              FclRadioGroup(
                name: BioIoName.d26.name,
                initialValue: vm.io.d26,
                labelWithKey: false,
                wrapAlignment: WrapAlignment.start,
                orientation: OptionsOrientation.wrap,
                map: const {
                  "Pass": "Pass",
                  "Fail": "Fail",
                  "N/A": "N/A",
                },
              ),
              FormBuilderNote(
                name: BioIoName.d115.name,
              ),
            ],
          ),
          SizedBox(
            height: 47.h,
          ),
        ],
      );
}
