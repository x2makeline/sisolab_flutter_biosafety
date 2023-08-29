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

/// (정기) 3. 비상 시 가동성 확인
class RegularChkAvailInCaseOfEmer extends StatelessWidget {
  const RegularChkAvailInCaseOfEmer({super.key});

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
              Text("3. 비상 시 가동성 확인", style: TextStyle(fontSize: 34.sp)),
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
              Text("3.1) 통신 시스템이 정상적으로 작동하는가?",
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
                    "- 전화기 설치 및 정상 작동\n- 데이터 전송시스템(컴퓨터, Fax 등) 설치 및 정상 작동\n- CCTV 모니터링 적정 각도 유지",
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
                    name: BioIoName.file17.name,
                  )),
              FclRadioGroup(
                name: BioIoName.d17.name,
                initialValue: vm.io.d17,
                labelWithKey: false,
                wrapAlignment: WrapAlignment.start,
                orientation: OptionsOrientation.wrap,
                map: const {"5": "5", "3": "3", "1": "1", "0": "0"},
              ),
              FormBuilderNote(
                name: BioIoName.d106.name,
              ),
            ],
          ),
          SizedBox(height: 50.h),
          const FclDivider.form(),
          SizedBox(height: 50.h),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text("3.2) 실간 차압역전(양압) 시 경보가 적절히 작동하는가?",
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
                    "- 차압 역전시 통제실 경보알람 정상작동\n- 차압 역전시 실험실내 경보알람 정상작동\n- 경보알람 시 시각 및 청각알람 모두 작동(동물실의 경우 시각알람만 작동해야함)",
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
                    name: BioIoName.file18.name,
                  )),
              FclRadioGroup(
                name: BioIoName.d18.name,
                initialValue: vm.io.d18,
                labelWithKey: false,
                wrapAlignment: WrapAlignment.start,
                orientation: OptionsOrientation.wrap,
                map: const {"5": "5", "3": "3", "1": "1", "0": "0"},
              ),
              FormBuilderNote(
                name: BioIoName.d107.name,
              ),
            ],
          ),
          SizedBox(height: 50.h),
          const FclDivider.form(),
          SizedBox(height: 50.h),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text("3.3) 비상전원공급(UPS)가 적절히 작동하는가?",
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
                    "- 한전 전원차단 시 UPS 연동시스템 정상작동\n- UPS 작동 시 실내 경보알람 정상작동\n- UPS 작동 시 통제실 경보알람 정상작동",
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
                    name: BioIoName.file19.name,
                  )),
              FclRadioGroup(
                name: BioIoName.d19.name,
                initialValue: vm.io.d19,
                labelWithKey: false,
                wrapAlignment: WrapAlignment.start,
                orientation: OptionsOrientation.wrap,
                map: const {"5": "5", "3": "3", "1": "1", "0": "0"},
              ),
              FormBuilderNote(
                name: BioIoName.d108.name,
              ),
            ],
          ),
          SizedBox(height: 50.h),
          const FclDivider.form(),
          SizedBox(height: 50.h),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text("3.4) 비상장비(손전등, 구급상자, 스필킷) 구비 및 적절히 작동하는가?",
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
                    "- 소화설비/장비 구비\n- 비상조명 피난 유도등 상태\n- 구급상자 및 스필킷 구비",
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
                    name: BioIoName.file20.name,
                  )),
              FclRadioGroup(
                name: BioIoName.d20.name,
                initialValue: vm.io.d20,
                labelWithKey: false,
                wrapAlignment: WrapAlignment.start,
                orientation: OptionsOrientation.wrap,
                map: const {"5": "5", "3": "3", "1": "1", "0": "0"},
              ),
              FormBuilderNote(
                name: BioIoName.d109.name,
              ),
            ],
          ),
          SizedBox(height: 50.h),
          const FclDivider.form(),
          SizedBox(height: 50.h),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text("동물) 동물탈출 시 연구자 행동 절차를 마련하고 게시하였는가?",
                  style: context.textTheme.titleLarge),
              SizedBox(
                height: 20.h,
              ),
              FieldWithLabel(
                  label: "이미지 첨부",
                  child: FormBuilderFclImagePicker(
                    name: BioIoName.file21.name,
                  )),
              FclRadioGroup(
                name: BioIoName.d21.name,
                initialValue: vm.io.d21,
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
                name: BioIoName.d110.name,
              ),
            ],
          ),
          SizedBox(height: 50.h),
          const FclDivider.form(),
          SizedBox(height: 50.h),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text("대량) 밀폐시스템 이상 및 대량 스필 발생시 비상대응 절차를 마련하고 게시하였는가?",
                  style: context.textTheme.titleLarge),
              SizedBox(
                height: 20.h,
              ),
              FieldWithLabel(
                  label: "이미지 첨부",
                  child: FormBuilderFclImagePicker(
                    name: BioIoName.file22.name,
                  )),
              FclRadioGroup(
                name: BioIoName.d22.name,
                initialValue: vm.io.d22,
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
                name: BioIoName.d111.name,
              ),
            ],
          ),
          SizedBox(
            height: 47.h,
          ),
        ],
      );
}
