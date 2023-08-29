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

/// (정기) 출입통제 관리기록 등
class ComingAndGoing extends StatelessWidget {
  const ComingAndGoing({super.key});

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
              Text("8) 출입통제 관리기록(출입대장 등) 유지되고 있는가?",
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
                    "- 출입대장 보유\n- 출입대장 현행화",
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
                    name: BioIoName.file31.name,
                  )),
              FclRadioGroup(
                name: BioIoName.d31.name,
                initialValue: vm.io.d31,
                labelWithKey: false,
                wrapAlignment: WrapAlignment.start,
                orientation: OptionsOrientation.wrap,
                map: const {"2": "2", "1": "1", "0": "0"},
              ),
              FormBuilderNote(
                name: BioIoName.d120.name,
              ),
            ],
          ),
          SizedBox(height: 50.h),
          const FclDivider.form(),
          SizedBox(height: 50.h),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text("9) 기관 생물안전교육이 적절히 수행되는가?",
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
                    "- 신규자 교육 실시\n- 연간 보수교육 실시\n- 국가지정 전문교육기관에서 제공하는 생물안전교육 프로그램에 매년 참여(운영요건 충족여부)",
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
                    name: BioIoName.file32.name,
                  )),
              FclRadioGroup(
                name: BioIoName.d32.name,
                initialValue: vm.io.d32,
                labelWithKey: false,
                wrapAlignment: WrapAlignment.start,
                orientation: OptionsOrientation.wrap,
                map: const {"3": "3", "2": "2", "1": "1", "0": "0"},
              ),
              FormBuilderNote(
                name: BioIoName.d121.name,
              ),
            ],
          ),
          SizedBox(height: 50.h),
          const FclDivider.form(),
          SizedBox(height: 50.h),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text("10) 유지보수 인력의 생물안전교육이 적절히 실시되는가?",
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
                    "- 신규자 교육 실시\n- 연간 보수교육 실시\n- 필요시 수시교육 실시",
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
                    name: BioIoName.file33.name,
                  )),
              FclRadioGroup(
                name: BioIoName.d33.name,
                initialValue: vm.io.d33,
                labelWithKey: false,
                wrapAlignment: WrapAlignment.start,
                orientation: OptionsOrientation.wrap,
                map: const {"3": "3", "2": "2", "1": "1", "0": "0"},
              ),
              FormBuilderNote(
                name: BioIoName.d122.name,
              ),
            ],
          ),
          SizedBox(height: 50.h),
          const FclDivider.form(),
          SizedBox(height: 50.h),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text("11) 연구자 정기검진 및 정상혈청 확보가 적절한가?",
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
                    "- 정기검진 실시\n- 정상혈청 보관\n- 혈청관리대장 보유",
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
                    name: BioIoName.file34.name,
                  )),
              FclRadioGroup(
                name: BioIoName.d34.name,
                initialValue: vm.io.d34,
                labelWithKey: false,
                wrapAlignment: WrapAlignment.start,
                orientation: OptionsOrientation.wrap,
                map: const {"3": "3", "2": "2", "1": "1", "0": "0"},
              ),
              FormBuilderNote(
                name: BioIoName.d123.name,
              ),
            ],
          ),
          SizedBox(height: 50.h),
          const FclDivider.form(),
          SizedBox(height: 50.h),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text("12) 전문위탁기관 관리 점검 보고서 및 전문위탁기관 인력 등에 대한 관리 적절성 여부",
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
                    "- 월간유지보고서 서명 날인\n- 유지보수 인력 출입대장 작성여부\n- 유지보수 장비 패스박스 사용대장 작성여부",
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
                    name: BioIoName.file35.name,
                  )),
              FclRadioGroup(
                name: BioIoName.d35.name,
                initialValue: vm.io.d35,
                labelWithKey: false,
                wrapAlignment: WrapAlignment.start,
                orientation: OptionsOrientation.wrap,
                map: const {"2": "2", "1": "1", "0": "0"},
              ),
              FormBuilderNote(
                name: BioIoName.d124.name,
              ),
            ],
          ),
          SizedBox(height: 50.h),
          const FclDivider.form(),
          SizedBox(height: 50.h),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text("13) 설치류 해충방지 장치설치 또는 프로그램이 있는가?",
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
                    "- 설치류 방제장치 설치 또는 프로그램 운영\n- 해충 방제장치 설치 또는 프로그램 운영",
                    style: TextStyle(fontSize: 28.sp),
                  ),
                ),
              ),
              SizedBox(
                height: 20.h,
              ),
              FclRadioGroup(
                name: BioIoName.d36.name,
                initialValue: vm.io.d36,
                labelWithKey: false,
                wrapAlignment: WrapAlignment.start,
                orientation: OptionsOrientation.wrap,
                map: const { "2": "2", "1": "1", "0": "0"},
              ),
              FormBuilderNote(
                name: BioIoName.d125.name,
              ),
            ],
          ),
          SizedBox(height: 50.h),
          const FclDivider.form(),
          SizedBox(height: 50.h),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text("동물) 실험동물 관련 법정 교육을 이수하였는가?",
                  style: context.textTheme.titleLarge),
              SizedBox(
                height: 20.h,
              ),
              FieldWithLabel(
                  label: "이미지 첨부",
                  child: FormBuilderFclImagePicker(
                    name: BioIoName.file36.name,
                  )),
              FclRadioGroup(
                name: BioIoName.d37.name,
                initialValue: vm.io.d37,
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
                name: BioIoName.d126.name,
              ),
            ],
          ),
          SizedBox(height: 50.h),
          const FclDivider.form(),
          SizedBox(height: 50.h),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text("14) 시설 설치·운영 특이사항에 대한 확인 검토",
                  style: context.textTheme.titleLarge),
              SizedBox(
                height: 20.h,
              ),
              FieldWithLabel(
                  label: "이미지 첨부",
                  child: FormBuilderFclImagePicker(
                    name: BioIoName.file37.name,
                  )),
              FclRadioGroup(
                name: BioIoName.d38.name,
                initialValue: vm.io.d38,
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
                name: BioIoName.d127.name,
              ),
            ],
          ),
          SizedBox(height: 50.h),
          const FclDivider.form(),
          SizedBox(height: 50.h),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text("15) 시설 정기 점검 결과 개선 사항 검토",
                  style: context.textTheme.titleLarge),
              SizedBox(
                height: 20.h,
              ),
              FieldWithLabel(
                  label: "이미지 첨부",
                  child: FormBuilderFclImagePicker(
                    name: BioIoName.file38.name,
                  )),
              FclRadioGroup(
                name: BioIoName.d67.name,
                initialValue: vm.io.d67,
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
                name: BioIoName.d128.name,
              ),
            ],
          ),
          SizedBox(
            height: 47.h,
          ),
        ],
      );
}
