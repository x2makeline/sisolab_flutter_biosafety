import 'package:flutter/material.dart';
import 'package:flutter_form_builder/flutter_form_builder.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:sisolab_flutter_biosafety/app/global/styles/color_styles.dart';
import 'package:sisolab_flutter_biosafety/app/global/widgets/fcl_divider.dart';
import 'package:sisolab_flutter_biosafety/app/global/widgets/fcl_input.dart';
import 'package:sisolab_flutter_biosafety/app/global/widgets/fcl_radio_group.dart';
import 'package:sisolab_flutter_biosafety/app/global/widgets/fcl_text_field.dart';
import 'package:sisolab_flutter_biosafety/app/global/widgets/field_with_label.dart';
import 'package:sisolab_flutter_biosafety/app/ui/fcl_detail/vms/fcl_detail_vm.dart';
import 'package:sisolab_flutter_biosafety/core/utils/extensions/list_space_between.dart';

/// 고위험 - 물리적 보안(보존구역)
class Tab31 extends StatefulWidget {
  const Tab31({Key? key}) : super(key: key);

  @override
  State<Tab31> createState() => _Tab31State();
}

class _Tab31State extends State<Tab31> {
  FclDetailVm get vm => FclDetailVm.to;

  final d37 = false.obs;
  final d38 = false.obs;
  final d39 = false.obs;
  final d40 = false.obs;
  final d41 = false.obs;
  final d42 = false.obs;
  final d43 = false.obs;

  @override
  void initState() {
    super.initState();
    d37.value = vm.io.d37 == "1";
    d38.value = vm.io.d38 == "1";
    d39.value = vm.io.d39 == "1";
    d40.value = vm.io.d40 == "1";
    d41.value = vm.io.d41 == "1";
    d42.value = vm.io.d42 == "1";
    d43.value = vm.io.d43 == "1";
  }

  @override
  Widget build(BuildContext context) => Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text("물리적 보안(보존구역)",
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
              label: "고위험병원체를 지정된 보존구역에 보관하고 있는가?",
              child: Obx(() => FclRadioGroup(
                  orientation: OptionsOrientation.wrap,
                  labelWithKey: false,
                  map: const {"1": "네", "2": "아니오"},
                  initialValue: vm.io.d37,
                  name: "d37")),
            ),
            FieldWithLabel(
                label:
                    "고위험병원체 보존구역의 관계자외 출입을 제한하기 위해 보존구역 출입구에 보안 잠금장치가 설치되어 운영되고 있는가?",
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
                          initialValue: vm.io.d38,
                          name: "d38",
                          onChanged: (d) {
                            d38.value = d == "1";
                          },
                          options: [
                            FormBuilderFieldOption(
                              value: "1",
                              child: Row(
                                children: [
                                  const Text("네 (보안 잠금장치 종류"),
                                  SizedBox(
                                      width: 200.w,
                                      child: Obx(() => FclTextField(
                                            enabled: d38.value,
                                            name: "d126",
                                            initialValue: vm.io.d126,
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
                    "고위험병원체 보존구역의 출입 모니터링(CCTV 등)을 위한 보안시스템을 운영하며 보안시스템이 잘 작동하는지 점검을 하고 있는가?",
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
                          initialValue: vm.io.d39,
                          name: "d39",
                          onChanged: (d) {
                            d39.value = d == "1";
                          },
                          options: [
                            FormBuilderFieldOption(
                              value: "1",
                              child: Row(
                                children: [
                                  const Text("네 (보안시스템 종류"),
                                  SizedBox(
                                      width: 200.w,
                                      child: Obx(() => FclTextField(
                                            enabled: d39.value,
                                            name: "d127",
                                            initialValue: vm.io.d127,
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
                  "고위험병원체 보존구역의 출입 모니터링 녹화화면을 실시간 또는 주기적(매일 또는 주1회)으로 확인하고 있는가?",
              child: Obx(() => FclRadioGroup(
                  orientation: OptionsOrientation.wrap,
                  labelWithKey: false,
                  map: const {"1": "네", "2": "아니오"},
                  initialValue: vm.io.d40,
                  name: "d40")),
            ),
            FieldWithLabel(
                label: "고위험병원체 보존 장비에 보안 잠금장치가 설치되어 있는가?",
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
                          initialValue: vm.io.d41,
                          name: "d41",
                          onChanged: (d) {
                            d41.value = d == "1";
                          },
                          options: [
                            FormBuilderFieldOption(
                              value: "1",
                              child: Row(
                                children: [
                                  const Text("네 (보안 잠금장치 종류"),
                                  SizedBox(
                                      width: 200.w,
                                      child: Obx(() => FclTextField(
                                            enabled: d41.value,
                                            name: "d128",
                                            initialValue: vm.io.d128,
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
              label: "고위험병원체를 잠금장치가 있는 구분된 보관상자 또는 전용 보존 장비에 보관하고 있는가?",
              child: Obx(() => FclRadioGroup(
                  orientation: OptionsOrientation.wrap,
                  labelWithKey: false,
                  map: const {"1": "네", "2": "아니오"},
                  initialValue: vm.io.d42,
                  name: "d42")),
            ),
            Column(
              children: [
                const FclFieldView(
                    firstPaddingYn: false,
                    lastDividerYn: false,
                    lastPaddingYn: false,
                    label: '고위험병원체 보존용기(vial, tube 등)에 라벨표기를 하고 있는가?',
                    desc: ['※ 고위험병원체의 경우 병원체명, 관리번호 등 식별번호와 제조일자 등의 관련 정보'],
                    fieldList: []),
                DefaultTextStyle(
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
                          initialValue: vm.io.d43,
                          name: "d43",
                          onChanged: (d) {
                            d43.value = d == "1";
                          },
                          options: [
                            FormBuilderFieldOption(
                              value: "1",
                              child: Row(
                                children: [
                                  const Text("네 (표기방법"),
                                  SizedBox(
                                      width: 200.w,
                                      child: Obx(() => FclTextField(
                                            enabled: d43.value,
                                            name: "d129",
                                            initialValue: vm.io.d129,
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
                        )))
              ],
            )
          ].withSpaceBetween(height: 40.h),
          SizedBox(
            height: 40.h,
          ),
        ],
      );
}
