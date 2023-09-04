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

/// (정기) 2. 생물안전장비 가동성 확인(보고서 또는 필드 확인)
class Tab22 extends StatelessWidget {
  const Tab22({super.key});

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
              Text("2. 생물안전장비 가동성 확인(보고서 또는 필드 확인)",
                  style: TextStyle(fontSize: 34.sp)),
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
              Text("2.1) 주출입구 잠금장치 및 보안장치가 적절히 설치‧운영되고 있는가?",
                  style: context.textTheme.titleLarge),
              SizedBox(
                height: 20.h,
              ),
              FieldWithLabel(
                  label: "이미지 첨부",
                  child: FormBuilderFclImagePicker(
                    name: "attfile9str",
                  )),
              FclRadioGroup(
                name: "d9",
                initialValue: vm.io.d9,
                map: const {
                  "5": "주출입구 잠금장치가 설치되어 있지 않으며 CCTV가 설치되지 않은 실험실이 존재함.",
                  "3": "주출입구 잠금장치가 설치되어 있으며 CCTV가 설치되지 않은 실험실이 존재함.",
                  "1":
                      "주출입구 잠금장치가 설치되어 있으며 모든 실험실에 CCTV가 설치됨. CCTV 영상자료의 3개월치 저장이 불가능함.",
                  "0":
                      "주출입구 잠금장치가 설치되어 있으며 모든 실험실에 CCTV가 설치됨. CCTV 영상자료의 3개월치 저장이 가능함."
                },
              ),
              FormBuilderNote(
                name: "d98",
              ),
            ],
          ),
          SizedBox(height: 50.h),
          const FclDivider.form(),
          SizedBox(height: 50.h),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text("2.2) 주출입구 잠금장치 및 보안장치가 적절히 설치‧운영되고 있는가?",
                  style: context.textTheme.titleLarge),
              SizedBox(
                height: 20.h,
              ),
              FieldWithLabel(
                  label: "이미지 첨부",
                  child: FormBuilderFclImagePicker(
                    name: "attfile10str",
                  )),
              FclRadioGroup(
                name: "d10",
                initialValue: vm.io.d10,
                map: const {
                  "2": "주출입구 잠금장치가 설치되어 있지 않으며 CCTV가 설치되지 않은 실험실이 존재함.",
                  "1": "주출입구 잠금장치가 설치되어 있으며 CCTV가 설치되지 않은 실험실이 존재함.",
                  "0":
                      "주출입구 잠금장치가 설치되어 있으며 모든 실험실에 CCTV가 설치됨. CCTV 영상자료의 3개월치 저장이 불가능함.",
                },
              ),
              FormBuilderNote(
                name: "d99",
              ),
            ],
          ),
          SizedBox(height: 50.h),
          const FclDivider.form(),
          SizedBox(height: 50.h),
          Text("2.3) 패스박스 작동상태가 적합한가?", style: context.textTheme.titleLarge),
          SizedBox(
            height: 20.h,
          ),
          FieldWithLabel(
              label: "이미지 첨부",
              child: FormBuilderFclImagePicker(
                name: "attfile11str",
              )),
          FclRadioGroup(
            initialValue: vm.io.d11,
            name: "d11",
            map: const {
              "5": "5 =  기밀이 불량하고 인터락 미작동",
              "3": "3 =  기밀이 불량하거나 인터락 미작동",
              "1": "1 =  기밀이 양호하고 인터락이 정상이지만 UV intensity가 40 uw/cm 이하",
              "0": "0 =  기밀이 양호하고 인터락이 정상작동하며 UV intensity가 40 uw/cm 이상"
            },
          ),
          FormBuilderNote(
            name: "d100",
          ),
          SizedBox(height: 50.h),
          const FclDivider.form(),
          SizedBox(height: 50.h),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text("2.4) 멸균기 작동(BI 테스트 포함)상태가 적합한가?",
                  style: context.textTheme.titleLarge),
              SizedBox(
                height: 20.h,
              ),
              FieldWithLabel(
                  label: "이미지 첨부",
                  child: FormBuilderFclImagePicker(
                    name: "attfile12str",
                  )),
              FclRadioGroup(
                initialValue: vm.io.d12,
                name: "d12",
                map: const {
                  "5": "5 =  멸균공정(121 ℃, 30 min) 작동 이상",
                  "3": "3 =  멸균공정에 이상이 없으나 누기 발견",
                  "1": "1 =  멸균공정에 이상이 없고 누기가 발견되지 않으나 소음도 65 dB 초과",
                  "0": "0 =  멸균공정에 이상이 없고 누기가 발견되지 않으며 소음도 65 dB 미만"
                },
              ),
              FormBuilderNote(
                name: "d101",
              ),
            ],
          ),
          SizedBox(height: 50.h),
          const FclDivider.form(),
          SizedBox(height: 50.h),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text("2.5) 생물안전작업대 작동상태가 적합한가?(풍속 실측 또는 BSC 디스플레이 확인)",
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
                    "※ 적정유입풍속 : 0.5 ± 0.025 m/s",
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
                    name: "attfile13str",
                  )),
              FclRadioGroup(
                initialValue: vm.io.d13,
                name: "d13",
                map: const {
                  "5": "5 =  멸균공정(121 ℃, 30 min) 작동 이상",
                  "3": "3 =  멸균공정에 이상이 없으나 누기 발견",
                  "1": "1 =  멸균공정에 이상이 없고 누기가 발견되지 않으나 소음도 65 dB 초과",
                  "0": "0 =  멸균공정에 이상이 없고 누기가 발견되지 않으며 소음도 65 dB 미만"
                },
              ),
              FormBuilderNote(
                name: "d102",
              )
            ],
          ),
          SizedBox(height: 50.h),
          const FclDivider.form(),
          SizedBox(height: 50.h),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text("동물) 동물실은 외부와의 최소음압 70 Pa을 유지하는가?",
                  style: context.textTheme.titleLarge),
              SizedBox(
                height: 20.h,
              ),
              FieldWithLabel(
                  label: "이미지 첨부",
                  child: FormBuilderFclImagePicker(
                    name: "attfile14str",
                  )),
              FclRadioGroup(
                initialValue: vm.io.d14,
                name: "d14",
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
                name: "d103",
              )
            ],
          ),
          SizedBox(height: 50.h),
          const FclDivider.form(),
          SizedBox(height: 50.h),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text("대량) 멸균조작이 가능한 배양장치 설치 및 정기적으로 밀페도 검사를 실시하는가?",
                  style: context.textTheme.titleLarge),
              SizedBox(
                height: 20.h,
              ),
              FieldWithLabel(
                  label: "이미지 첨부",
                  child: FormBuilderFclImagePicker(
                    name: "attfile15str",
                  )),
              FclRadioGroup(
                initialValue: vm.io.d15,
                name: "d15",
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
                name: "d104",
              )
            ],
          ),
          SizedBox(height: 50.h),
          const FclDivider.form(),
          SizedBox(height: 50.h),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                  "대량) 배양장치의 배기가스관에 제균용 필터(동등 이상의 제균용 기기) 부착 및 정기적으로 성능 검사를 실시하는가?",
                  style: context.textTheme.titleLarge),
              SizedBox(
                height: 20.h,
              ),
              FieldWithLabel(
                  label: "이미지 첨부",
                  child: FormBuilderFclImagePicker(
                    name: "attfile16str",
                  )),
              FclRadioGroup(
                initialValue: vm.io.d16,
                name: "d16",
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
                name: "d105",
              )
            ],
          ),
          SizedBox(
            height: 47.h,
          ),
        ],
      );
}
