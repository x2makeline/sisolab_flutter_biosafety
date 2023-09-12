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

/// 고위험 - 물리적 보안(취급구역)
class Tab32 extends StatefulWidget {
  const Tab32({Key? key}) : super(key: key);

  @override
  State<Tab32> createState() => _Tab32State();
}

class _Tab32State extends State<Tab32> {
  FclDetailVm get vm => FclDetailVm.to;

  final d45 = false.obs;
  final d46 = false.obs;
  final d47 = false.obs;

  @override
  void initState() {
    super.initState();
    d45.value = vm.io.d41 == "1";
    d46.value = vm.io.d42 == "1";
    d47.value = vm.io.d43 == "1";
  }

  @override
  Widget build(BuildContext context) => Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text("물리적 보안(취급구역)",
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
              label: "고위험병원체 취급 및 실험을 지정 구역에서만 실시하고 있는가?",
              child: Obx(() => FclRadioGroup(
                  orientation: OptionsOrientation.wrap,
                  labelWithKey: false,
                  map: const {"1": "네", "2": "아니오", '3': "해당 없음(보존용의 경우)"},
                  initialValue: vm.io.d44,
                  name: "d44")),
            ),
            FieldWithLabel(
                label:
                    "고위험병원체 취급구역의 관계자외 출입을 제한하기 위해 취급구역 출입구에 보안 잠금장치가 설치되어 운영되고 있는가?",
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
                          initialValue: vm.io.d45,
                          name: "d45",
                          onChanged: (d) {
                            d45.value = d == "1";
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
                                            enabled: d45.value,
                                            name: "d130",
                                            initialValue: vm.io.d130,
                                          ))),
                                  const Text(")")
                                ],
                              ),
                            ),
                            const FormBuilderFieldOption(
                              value: "2",
                              child: Text("아니오"),
                            ),
                            const FormBuilderFieldOption(
                              value: "3",
                              child: Text("해당 없음(보존용의 경우)"),
                            ),
                          ],
                        )))),
            FieldWithLabel(
                label:
                    "고위험병원체 취급구역의 출입 모니터링(CCTV 등)을 위한 보안시스템을 운영하며 보안시스템이 잘 작동하는지 점검을 하고 있는가?",
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
                          initialValue: vm.io.d46,
                          name: "d46",
                          onChanged: (d) {
                            d46.value = d == "1";
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
                                            enabled: d46.value,
                                            name: "d131",
                                            initialValue: vm.io.d131,
                                          ))),
                                  const Text(")")
                                ],
                              ),
                            ),
                            const FormBuilderFieldOption(
                              value: "2",
                              child: Text("아니오"),
                            ),
                            const FormBuilderFieldOption(
                              value: "3",
                              child: Text("해당 없음(보존용의 경우)"),
                            ),
                          ],
                        )))),
            FieldWithLabel(
                label:
                    "고위험병원체 취급구역의 작업 모니터링(CCTV 등)을 위한 보안시스템을 운영하며 보안시스템이 잘 작동하는지 점검을 하고 있는가?",
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
                          initialValue: vm.io.d47,
                          name: "d47",
                          onChanged: (d) {
                            d47.value = d == "1";
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
                                            enabled: d47.value,
                                            name: "d132",
                                            initialValue: vm.io.d132,
                                          ))),
                                  const Text(")")
                                ],
                              ),
                            ),
                            const FormBuilderFieldOption(
                              value: "2",
                              child: Text("아니오"),
                            ),
                            const FormBuilderFieldOption(
                              value: "3",
                              child: Text("해당 없음(보존용의 경우)"),
                            ),
                          ],
                        )))),
            FieldWithLabel(
              label:
                  "고위험병원체 취급구역의 작업 모니터링 녹화화면을 실시간 또는 주기적(매일 또는 주1회)으로 확인하고 있는가?",
              child: Obx(() => FclRadioGroup(
                  orientation: OptionsOrientation.wrap,
                  labelWithKey: false,
                  map: const {"1": "네", "2": "아니오", '3': "해당 없음(보존용의 경우)"},
                  initialValue: vm.io.d48,
                  name: "d48")),
            ),
          ].withSpaceBetween(height: 40.h),
          SizedBox(
            height: 40.h,
          ),
        ],
      );
}
