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

/// 고위험 - 운송 보안
class Tab35 extends StatefulWidget {
  const Tab35({Key? key}) : super(key: key);

  @override
  State<Tab35> createState() => _Tab35State();
}

class _Tab35State extends State<Tab35> {
  FclDetailVm get vm => FclDetailVm.to;

  final d59 = false.obs;
  final d61 = false.obs;

  @override
  void initState() {
    super.initState();
    d59.value = vm.io.d59 == "1";
    d61.value = vm.io.d61 == "1";
  }

  @override
  Widget build(BuildContext context) => Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text("운송보안",
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
              label: "고위험병원체를 소속기관 또는 타 기관 등으로 운송하는 경우 법령에 따라 신고하고 진행하고 있는가?",
              child: Obx(() => FclRadioGroup(
                  orientation: OptionsOrientation.wrap,
                  labelWithKey: false,
                  map: const {
                    "1": "네",
                    "2": "아니오",
                    '3': "해당 없음(운송하지 않는 경우 또는 신고가 필요없는 경우)"
                  },
                  initialValue: vm.io.d53,
                  name: "d53")),
            ),
            FieldWithLabel(
              label: "고위험병원체를 수입이나 수출하는 경우 법령에 따라 허가를 받아서 진행하고 있는가?",
              child: Obx(() => FclRadioGroup(
                  orientation: OptionsOrientation.wrap,
                  labelWithKey: false,
                  map: const {"1": "네", "2": "아니오", '3': "해당 없음(수출입하지 않는 경우)"},
                  initialValue: vm.io.d54,
                  name: "d54")),
            ),
            FieldWithLabel(
              label:
                  "고위험병원체를 소속기관 또는 타 기관 등으로 분양ㆍ양도하는 경우 기관 확인과 분양하는 고위험병원체의 사용용도 및 목적을 확인하고 있는가?",
              child: Obx(() => FclRadioGroup(
                  orientation: OptionsOrientation.wrap,
                  labelWithKey: false,
                  map: const {
                    "1": "네",
                    "2": "아니오",
                    '3': "해당 없음(분양ㆍ양도하지 않는 경우)"
                  },
                  initialValue: vm.io.d55,
                  name: "d55")),
            ),
            FieldWithLabel(
              label:
                  "운송관련문서(운송계획서, 운송보고서, 인수확인증 등)에는 고위험병원체에 대한 설명과 정확한 수량이 포함되어 있는가?",
              child: Obx(() => FclRadioGroup(
                  orientation: OptionsOrientation.wrap,
                  labelWithKey: false,
                  map: const {"1": "네", "2": "아니오", '3': "해당 없음(운송하지 않는 경우)"},
                  initialValue: vm.io.d56,
                  name: "d56")),
            ),
            FieldWithLabel(
              label:
                  "고위험병원체 및 관련 검체 등의 수송시 감염성 물질은 쉽게 파손되지 않고 밀폐할 수 있는 1차 수송용기 내에 담고, 사고 등에 대비하여 내용물이 외부로 유출되지 않도록 3중 포장하고 있는가?",
              child: Obx(() => FclRadioGroup(
                  orientation: OptionsOrientation.wrap,
                  labelWithKey: false,
                  map: const {"1": "네", "2": "아니오", '3': "해당없음"},
                  initialValue: vm.io.d57,
                  name: "d57")),
            ),
            FieldWithLabel(
              label:
                  "고위험병원체 및 관련 검체 등의 수송시 3차 포장용기에 취급 시 주의사항 및 위해 표시를 부착하고 있는가?",
              child: Obx(() => FclRadioGroup(
                  orientation: OptionsOrientation.wrap,
                  labelWithKey: false,
                  map: const {"1": "네", "2": "아니오", '3': "해당없음"},
                  initialValue: vm.io.d58,
                  name: "d58")),
            ),
            FieldWithLabel(
                label: "운송에 대한 규정이나 매뉴얼이 마련되어 있거나 관련 가이드라인 등을 구비하고 있는가?",
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
                          initialValue: vm.io.d59,
                          name: "d59",
                          onChanged: (d) {
                            d59.value = d == "1";
                          },
                          options: [
                            FormBuilderFieldOption(
                              value: "1",
                              child: Row(
                                children: [
                                  const Text("네 (종류"),
                                  SizedBox(
                                      width: 200.w,
                                      child: Obx(() => FclTextField(
                                            enabled: d59.value,
                                            name: "d134",
                                            initialValue: vm.io.d134,
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
                              child: Text("해당 없음(운송하지 않는 경우)"),
                            ),
                          ],
                        )))),
            FieldWithLabel(
              label: "고위험병원체를 소속기관 또는 타 기관 등으로 운송하는 경우 운송방법은?",
              child: Obx(() => FclRadioGroup(
                  orientation: OptionsOrientation.wrap,
                  labelWithKey: false,
                  map: const {"1": "네", "2": "아니오", '3': "해당 없음(운송하지 않는 경우)"},
                  initialValue: vm.io.d60,
                  name: "d60")),
            ),
            FieldWithLabel(
                label: "운송업체 이용시 업체가 운송절차를 구비하고 있는지 확인하고 있는가?",
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
                          initialValue: vm.io.d61,
                          name: "d61",
                          onChanged: (d) {
                            d61.value = d == "1";
                          },
                          options: [
                            FormBuilderFieldOption(
                              value: "1",
                              child: Row(
                                children: [
                                  const Text("네 (운송절차 구비여부"),
                                  SizedBox(
                                      width: 200.w,
                                      child: Obx(() => FclTextField(
                                            enabled: d61.value,
                                            name: "d135",
                                            initialValue: vm.io.d135,
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
                              child: Text("해당 없음(운송하지 않는 경우)"),
                            ),
                          ],
                        )))),
            FieldWithLabel(
              label: "운송 중 도난이 발생한 경우 신고체계가 마련되어 있는가?",
              child: Obx(() => FclRadioGroup(
                  orientation: OptionsOrientation.wrap,
                  labelWithKey: false,
                  map: const {"1": "네", "2": "아니오", '3': "해당 없음(운송하지 않는 경우)"},
                  initialValue: vm.io.d62,
                  name: "d62")),
            )
          ].withSpaceBetween(height: 40.h),
          SizedBox(
            height: 40.h,
          ),
        ],
      );
}
