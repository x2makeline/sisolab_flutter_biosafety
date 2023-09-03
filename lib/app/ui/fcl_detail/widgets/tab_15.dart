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

/// (정기) 1. 밀폐구역 설비 가동성 확인(유지관리보고서 또는 필드확인)
class Tab15 extends StatelessWidget {
  const Tab15({super.key});

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
              Text("1. 밀폐구역 설비 가동성 확인(유지관리보고서 또는 필드확인)",
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
              Text("1.1) 손소독기가 적절히 운영되는가?",
                  style: context.textTheme.titleLarge),
              SizedBox(
                height: 20.h,
              ),
              FieldWithLabel(
                  label: "이미지 첨부",
                  child: FormBuilderFclImagePicker(
                    name: BioIoName.file1.name,
                  )),
              FclRadioGroup(
                  initialValue: vm.io.d1,
                  map: const {
                    "5": "실험실(전실 포함)과 공용구역(복도, 탈의전실)에 모두 손소독기가 설치되어있고 모두 정상 작동",
                    "3":
                        "실험실(전실 포함)과 공용구역(복도, 탈의전실)에 모두 손소독기가 설치되어있으나 일부 작동 불량",
                    "1": "실험실(전실 포함) 내 손소독기가 설치되어있지 않으나 공용구역(복도, 탈의전실)에 설치",
                    "0": "밀폐구역내 손소독기 미설치"
                  },
                  name: BioIoName.d1.name),
              SizedBox(
                height: 50.h,
              ),
              FieldWithLabel(
                  label: "잠금장치 방식 선택",
                  child: FclRadioGroup(
                    labelWithKey: false,
                    map: const {
                      "카드키": "카드키",
                      "생채인식": "생채인식",
                      "번호입력": "번호입력",
                      "기타": "기타 (물리적 키 등)"
                    },
                    initialValue: vm.io.d2,
                    name: BioIoName.d2.name,
                    wrapAlignment: WrapAlignment.spaceBetween,
                    orientation: OptionsOrientation.wrap,
                  )),
              SizedBox(height: 50.h),
              const FclDivider.form(),
              SizedBox(height: 50.h),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text("1.2) 실간 인터락 작동(수동조작 가능)이 적절한가?",
                      style: context.textTheme.titleLarge),
                  SizedBox(
                    height: 20.h,
                  ),
                  FieldWithLabel(
                      label: "이미지 첨부",
                      child: FormBuilderFclImagePicker(
                        name: BioIoName.file2.name,
                      )),
                  FclRadioGroup(
                      name: BioIoName.d3.name,
                      initialValue: vm.io.d3,
                      map: const {
                        "5": '6개 인터락시험 중 모두 정상작동',
                        '3': "6개 인터락시험 중 1~2개 미작동",
                        '1': "6개 인터락시험 중 3~4개 미작동",
                        '0': "6개 인터락시험 중 6개 모두 미작동"
                      }),
                  FormBuilderNote(
                    name: BioIoName.d90.name,
                  ),
                ],
              ),
              SizedBox(height: 50.h),
              const FclDivider.form(),
              SizedBox(height: 50.h),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text("1.3) 비상샤워장비가 정상 작동하며 바닥이 양호한가?",
                      style: context.textTheme.titleLarge),
                  SizedBox(
                    height: 20.h,
                  ),
                  FieldWithLabel(
                      label: "이미지 첨부",
                      child: FormBuilderFclImagePicker(
                        name: BioIoName.file3.name,
                      )),
                  FclRadioGroup(
                      name: BioIoName.d4.name,
                      initialValue: vm.io.d4,
                      map: const {
                        "3": '비상샤워설비 작동 이상',
                        '2': "비상샤워설비 작동가능하나 바닥마감상태 불량",
                        '0': "비상샤워설비 작동가능하며 바닥마감상태 양호"
                      }),
                  FormBuilderNote(
                    name: BioIoName.d91.name,
                  ),
                ],
              ),
              SizedBox(height: 50.h),
              const FclDivider.form(),
              SizedBox(height: 50.h),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text("1.4) 각 실 환기횟수는 적정한가? (자동제어시스템 또는 풍량실측 확인)",
                      style: context.textTheme.titleLarge),
                  SizedBox(
                    height: 20.h,
                  ),
                  FieldWithLabel(
                      label: "이미지 첨부",
                      child: FormBuilderFclImagePicker(
                        name: BioIoName.file4.name,
                      )),
                  FclRadioGroup(
                      name: BioIoName.d5.name,
                      initialValue: vm.io.d5,
                      map: const {
                        "5": '4개 실, 복도 환기횟수시험결과 모두 불만족',
                        '3': "4개 실, 복도 환기횟수시험결과 중 1~2개 만족",
                        '1': "4개 실, 복도 환기횟수시험결과 중 3개 만족",
                        '0': "4개 실, 복도 환기횟수시험결과 모두 만족"
                      }),
                  FormBuilderNote(
                    name: BioIoName.d93.name,
                  ),
                ],
              ),
              SizedBox(height: 50.h),
              const FclDivider.form(),
              SizedBox(height: 50.h),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                      "1.5) 밀폐구역 내 생물학적 위험도에 따른 순차적 음압이 형성되고 적절한 실간 차압을 유지하는가? (실내 차압계 및 연무테스트 확인)",
                      style: context.textTheme.titleLarge),
                  SizedBox(
                    height: 20.h,
                  ),
                  FieldWithLabel(
                      label: "이미지 첨부",
                      child: FormBuilderFclImagePicker(
                        name: BioIoName.file5.name,
                      )),
                  FclRadioGroup(
                      name: BioIoName.d39.name,
                      initialValue: vm.io.d39,
                      map: const {
                        "5": '밀폐구역 내 차압 역전',
                        '3':
                            "밀폐구역 내 기류흐름이 적절한 방향으로 형성되었으나 실간 차압(그래프)이 -10~-15 Pa 유지 못함",
                        '0': "밀폐구역 내 기류흐름이 적절한 방향으로 형성되며 실간차압 -10~-15 Pa 유지"
                      }),
                  FormBuilderNote(
                    name: BioIoName.d94.name,
                  ),
                ],
              ),
              SizedBox(height: 50.h),
              const FclDivider.form(),
              SizedBox(height: 50.h),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text("1.6) 밀폐구역 내 이음매 완전성(벽체, 천장 등)을 확보하였는가?(연무테스트 확인)",
                      style: context.textTheme.titleLarge),
                  SizedBox(
                    height: 20.h,
                  ),
                  FieldWithLabel(
                      label: "이미지 첨부",
                      child: FormBuilderFclImagePicker(
                        name: BioIoName.file6.name,
                      )),
                  FclRadioGroup(
                      name: BioIoName.d6.name,
                      initialValue: vm.io.d6,
                      map: const {
                        "5": '천장, 벽체, 전열 콘센트 등 누기 9곳 이상',
                        '3': "천장, 벽체, 전열 콘센트 등 누기 6~8곳",
                        '1': "천장, 벽체, 전열 콘센트 등 누기 3~5곳",
                        '0': "천장, 벽체, 전열 콘센트 등 누기 0~2곳"
                      }),
                  FormBuilderNote(
                    name: BioIoName.d95.name,
                  ),
                ],
              ),
              SizedBox(height: 50.h),
              const FclDivider.form(),
              SizedBox(height: 50.h),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text("1.7) 밀폐구역 내 이음매 완전성(벽체, 천장 등)을 확보하였는가?(연무테스트 확인)",
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
                        "- 출입문 자동 닫힘 기능이 정상 작동 여부\n- 밀폐구역 내 적정 온습도가 정상 유지 여부",
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
                        name: BioIoName.file7.name,
                      )),
                  FclRadioGroup(
                      name: BioIoName.d7.name,
                      initialValue: vm.io.d7,
                      labelWithKey: false,
                      orientation: OptionsOrientation.wrap,
                      map: const {"2": '2', '1': "1", '0': "0"}),
                  FormBuilderNote(
                    name: BioIoName.d96.name,
                  ),
                ],
              ),
              SizedBox(height: 50.h),
              const FclDivider.form(),
              SizedBox(height: 50.h),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text("동물실은 외부와의 최소음압 70 Pa을 유지하는가?",
                      style: context.textTheme.titleLarge),
                  SizedBox(
                    height: 20.h,
                  ),
                  FieldWithLabel(
                      label: "이미지 첨부",
                      child: FormBuilderFclImagePicker(
                        name: BioIoName.file8.name,
                      )),
                  FclRadioGroup(
                      name: BioIoName.d8.name,
                      initialValue: vm.io.d8,
                      labelWithKey: false,
                      orientation: OptionsOrientation.wrap,
                      map: const {
                        "Pass": 'Pass',
                        'Fail': "Fail",
                        'N/A': "N/A"
                      }),
                  FormBuilderNote(
                    name: BioIoName.d97.name,
                  ),
                ],
              ),
            ],
          ),
          SizedBox(
            height: 47.h,
          ),
        ],
      );
}
