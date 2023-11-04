import 'package:flutter/material.dart';
import 'package:flutter_form_builder/flutter_form_builder.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:sisolab_flutter_biosafety/app/global/styles/color_styles.dart';
import 'package:sisolab_flutter_biosafety/app/global/widgets/fcl_divider.dart';
import 'package:sisolab_flutter_biosafety/app/global/widgets/fcl_radio_group.dart';
import 'package:sisolab_flutter_biosafety/app/global/widgets/fcl_text_field.dart';
import 'package:sisolab_flutter_biosafety/app/global/widgets/field_with_label.dart';
import 'package:sisolab_flutter_biosafety/app/ui/fcl_detail/vms/fcl_detail_vm.dart';
import 'package:sisolab_flutter_biosafety/core/utils/extensions/list_space_between.dart';

/// 고위험 - 실험실 안전관리에 관한 사항
class Tab36 extends StatefulWidget {
  const Tab36({Key? key}) : super(key: key);

  @override
  State<Tab36> createState() => _Tab36State();
}

class _Tab36State extends State<Tab36> {
  FclDetailVm get vm => FclDetailVm.to;

  final d68 = false.obs;
  final d69 = false.obs;
  final d70 = false.obs;

  @override
  void initState() {
    super.initState();
    d68.value = vm.io.d68 == "1";
    d69.value = vm.io.d69 == "1";
    d70.value = vm.io.d70 == "1";
  }

  @override
  Widget build(BuildContext context) => Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text("실험실 안전관리에 관한 사항",
              style: TextStyle(fontSize: 34.sp, fontWeight: FontWeight.w500)),
          SizedBox(
            height: 22.h,
          ),
          const FclDivider.black(),
          SizedBox(
            height: 47.h,
          ),
          ...[
            FieldWithLabel(
              label: "고위험병원체 취급ㆍ보존 구역과 사무구역을 구분하여 운영하고 있는가?",
              child: Obx(() => FclRadioGroup(
                  orientation: OptionsOrientation.wrap,
                  labelWithKey: false,
                  map: const {"1": "네", "2": "아니오"},
                  initialValue: vm.io.d63,
                  name: "d63")),
            ),
            FieldWithLabel(
              label: "실험실에서는 음식섭취, 흡연, 화장행위를 금지하고 있는가?",
              child: Obx(() => FclRadioGroup(
                  orientation: OptionsOrientation.wrap,
                  labelWithKey: false,
                  map: const {"1": "네", "2": "아니오"},
                  initialValue: vm.io.d64,
                  name: "d64")),
            ),
            FieldWithLabel(
              label:
                  "생물안전 확보를 위하여 취급하는 고위험병원체에 적절한 작업복, 장갑 등 개인보호장비 등을 비치ㆍ사용하고 있는가?",
              child: Obx(() => FclRadioGroup(
                  orientation: OptionsOrientation.wrap,
                  labelWithKey: false,
                  map: const {"1": "네", "2": "아니오"},
                  initialValue: vm.io.d65,
                  name: "d65")),
            ),
            FieldWithLabel(
              label: "보존구역 출입구 및 보존장비에 생물재해표시가 부착되어 있는가?",
              child: Obx(() => FclRadioGroup(
                  orientation: OptionsOrientation.wrap,
                  labelWithKey: false,
                  map: const {"1": "네", "2": "아니오", "3": "해당없음(식물병원균)"},
                  initialValue: vm.io.d66,
                  name: "d66")),
            ),
            FieldWithLabel(
              label: "고위험병원체 취급자의 정상 혈청을 보관하고 있는가? ※고위험병원체에 한함",
              child: Obx(() => FclRadioGroup(
                  orientation: OptionsOrientation.wrap,
                  labelWithKey: false,
                  map: const {"1": "네", "2": "아니오", "3": "해당없음"},
                  initialValue: vm.io.d67,
                  name: "d67")),
            ),
            FieldWithLabel(
                label:
                    "고위험병원체 취급시설의 설치·운영책임자, 생물안전관리책임자 및 고위험병원체 전담관리자에게 질병관리청 또는 질병관리청장이 지정한 안전관리전문기관에서 운영하는 지정교육 및 보수교육(「감염병의 예방 및 관리에 관한 법률」근거)을 하고 있는가?",
                child: DefaultTextStyle(
                    style: TextStyle(fontSize: 28.sp, color: ColorGroup.black),
                    child: Obx(() => FormBuilderRadioGroup(
                          wrapSpacing: 100.w,
                          decoration: const InputDecoration(
                              contentPadding: EdgeInsets.zero,
                              enabledBorder: OutlineInputBorder(
                                  borderSide: BorderSide.none),
                              disabledBorder: OutlineInputBorder(
                                  borderSide: BorderSide.none)),
                          orientation: OptionsOrientation.horizontal,
                          initialValue: vm.io.d68,
                          name: "d68",
                          onChanged: (d) {
                            d68.value = d == "1";
                          },
                          options: [
                            FormBuilderFieldOption(
                              value: "1",
                              child: Row(
                                children: [
                                  const Text("네 (교육 종류"),
                                  SizedBox(
                                      width: 200.w,
                                      child: Obx(() => FclTextField(
                                            enabled: d68.value,
                                            name: "d136",
                                            initialValue: vm.io.d136,
                                          ))),
                                  const Text(")")
                                ],
                              ),
                            ),
                            const FormBuilderFieldOption(
                              value: "2",
                              child: Text("아니오"),
                            ),
                          ],
                        )))),
            FieldWithLabel(
                label:
                    "고위험병원체 취급시설 사용자에게 연 2시간 이상 질병관리청 또는 질병관리청장이 지정한 안전 관리전문기관에서 운영하는 생물안전교육(「감염병의 예방 및 관리에 관한 법률」, ‘고위험병원체 취급시설 및 안전관리에 관한 고시’ 근거)을 하고 있는가?\n※ 교육 증빙자료 비치",
                child: DefaultTextStyle(
                    style: TextStyle(fontSize: 28.sp, color: ColorGroup.black),
                    child: Obx(() => FormBuilderRadioGroup(
                          wrapSpacing: 100.w,
                          decoration: const InputDecoration(
                              contentPadding: EdgeInsets.zero,
                              enabledBorder: OutlineInputBorder(
                                  borderSide: BorderSide.none),
                              disabledBorder: OutlineInputBorder(
                                  borderSide: BorderSide.none)),
                          orientation: OptionsOrientation.horizontal,
                          initialValue: vm.io.d69,
                          name: "d69",
                          onChanged: (d) {
                            d69.value = d == "1";
                          },
                          options: [
                            FormBuilderFieldOption(
                              value: "1",
                              child: Row(
                                children: [
                                  const Text("네 (교육 종류"),
                                  SizedBox(
                                      width: 200.w,
                                      child: Obx(() => FclTextField(
                                            enabled: d69.value,
                                            name: "d137",
                                            initialValue: vm.io.d137,
                                          ))),
                                  const Text(")")
                                ],
                              ),
                            ),
                            const FormBuilderFieldOption(
                              value: "2",
                              child: Text("아니오"),
                            ),
                          ],
                        )))),
            FieldWithLabel(
                label:
                    "고위험병원체 관리자, 취급자 등에게 사용시설 및 기관내 생물안전교육을 하고 있는가?\n※ 교육 증빙자료 비치",
                child: DefaultTextStyle(
                    style: TextStyle(fontSize: 28.sp, color: ColorGroup.black),
                    child: Obx(() => FormBuilderRadioGroup(
                          wrapSpacing: 100.w,
                          decoration: const InputDecoration(
                              contentPadding: EdgeInsets.zero,
                              enabledBorder: OutlineInputBorder(
                                  borderSide: BorderSide.none),
                              disabledBorder: OutlineInputBorder(
                                  borderSide: BorderSide.none)),
                          orientation: OptionsOrientation.horizontal,
                          initialValue: vm.io.d70,
                          name: "d70",
                          onChanged: (d) {
                            d70.value = d == "1";
                          },
                          options: [
                            FormBuilderFieldOption(
                              value: "1",
                              child: Row(
                                children: [
                                  const Text("네 (교육 종류"),
                                  SizedBox(
                                      width: 200.w,
                                      child: Obx(() => FclTextField(
                                            enabled: d70.value,
                                            name: "d138",
                                            initialValue: vm.io.d138,
                                          ))),
                                  const Text(")")
                                ],
                              ),
                            ),
                            const FormBuilderFieldOption(
                              value: "2",
                              child: Text("아니오"),
                            ),
                          ],
                        )))),
            FieldWithLabel(
              label: "기관자체의 생물안전관리 규정ㆍ지침이 있는가?",
              child: Obx(() => FclRadioGroup(
                  orientation: OptionsOrientation.wrap,
                  labelWithKey: false,
                  map: const {"1": "네", "2": "아니오"},
                  initialValue: vm.io.d71,
                  name: "d71")),
            ),
            FieldWithLabel(
              label: "고위험병원체 안전관리에 대한 사항의 기관생물안전위원회를 설치 및 운영하고 있는가?",
              child: Obx(() => FclRadioGroup(
                  orientation: OptionsOrientation.wrap,
                  labelWithKey: false,
                  map: const {"1": "네", "2": "아니오"},
                  initialValue: vm.io.d72,
                  name: "d72")),
            ),
            FieldWithLabel(
              label: "사고대응 매뉴얼을 보유하고 있는가?",
              child: Obx(() => FclRadioGroup(
                  orientation: OptionsOrientation.wrap,
                  labelWithKey: false,
                  map: const {"1": "네", "2": "아니오"},
                  initialValue: vm.io.d73,
                  name: "d73")),
            ),
            FieldWithLabel(
              label: "사고발생에 대한 비상대응체계(응급처치, 비상조치 등 안전관리방안)가 마련되어 있는가?",
              child: Obx(() => FclRadioGroup(
                  orientation: OptionsOrientation.wrap,
                  labelWithKey: false,
                  map: const {"1": "네", "2": "아니오"},
                  initialValue: vm.io.d74,
                  name: "d74")),
            ),
            FieldWithLabel(
              label: "감염성물질 안전수송지침이 있는가?",
              child: Obx(() => FclRadioGroup(
                  orientation: OptionsOrientation.wrap,
                  labelWithKey: false,
                  map: const {"1": "네", "2": "아니오"},
                  initialValue: vm.io.d75,
                  name: "d75")),
            ),
            FieldWithLabel(
              label:
                  "고위험병원체와 고위험병원체가 포함되는 검체 등 감염성 물질을 폐기하는 경우 고위험병원체 특성 및 보존형태 등을 고려하여 고압증기멸균 등 적합한 방법으로 사멸시킨 후 「폐기물관리법」에 따라 처리하고 있는가?",
              child: Obx(() => FclRadioGroup(
                  orientation: OptionsOrientation.wrap,
                  labelWithKey: false,
                  map: const {"1": "네", "2": "아니오", "3": "해당없음"},
                  initialValue: vm.io.d76,
                  name: "d76")),
            ),
            FieldWithLabel(
              label:
                  "고위험병원체 불활성화시 불활성화 방법에 대해 사전에 기관생물안전위원회의 심의를 거쳐 기관장의 승인을 받는가?",
              child: Obx(() => FclRadioGroup(
                  orientation: OptionsOrientation.wrap,
                  labelWithKey: false,
                  map: const {"1": "네", "2": "아니오", "3": "해당없음"},
                  initialValue: vm.io.d77,
                  name: "d77")),
            ),
            FieldWithLabel(
              label: "고위험병원체 불활성화시 불활성화 처리과정을 기록하여 보관하는가?",
              child: Obx(() => FclRadioGroup(
                  orientation: OptionsOrientation.wrap,
                  labelWithKey: false,
                  map: const {"1": "네", "2": "아니오", "3": "해당없음"},
                  initialValue: vm.io.d78,
                  name: "d78")),
            ),
            FieldWithLabel(
              label:
                  "불활성화된 고위험병원체를 신고 또는 허가받는 취급시설 외부로 반출하는 경우에는 비가역적으로 생육이 불가능한 것을 확인하는가?",
              child: Obx(() => FclRadioGroup(
                  orientation: OptionsOrientation.wrap,
                  labelWithKey: false,
                  map: const {"1": "네", "2": "아니오", "3": "해당없음"},
                  initialValue: vm.io.d79,
                  name: "d79")),
            )
          ].withSpaceBetween(height: 40.h),
          SizedBox(
            height: 40.h,
          ),
        ],
      );
}
