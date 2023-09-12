import 'package:flutter/material.dart';
import 'package:flutter_form_builder/flutter_form_builder.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:sisolab_flutter_biosafety/app/global/styles/color_styles.dart';
import 'package:sisolab_flutter_biosafety/app/global/widgets/fcl_date_field.dart';
import 'package:sisolab_flutter_biosafety/app/global/widgets/fcl_divider.dart';
import 'package:sisolab_flutter_biosafety/app/global/widgets/fcl_input.dart';
import 'package:sisolab_flutter_biosafety/app/global/widgets/fcl_radio_group.dart';
import 'package:sisolab_flutter_biosafety/app/global/widgets/fcl_text_field.dart';
import 'package:sisolab_flutter_biosafety/app/global/widgets/field_with_label.dart';
import 'package:sisolab_flutter_biosafety/app/ui/fcl_detail/vms/fcl_detail_vm.dart';
import 'package:sisolab_flutter_biosafety/core/utils/extensions/list_space_between.dart';

/// 고위험 - 미신고 고위험병원체 보유 및 보유량 확인
class Tab29 extends StatefulWidget {
  const Tab29({Key? key}) : super(key: key);

  @override
  State<Tab29> createState() => _Tab29State();
}

class _Tab29State extends State<Tab29> {
  FclDetailVm get vm => FclDetailVm.to;

  final d28 = false.obs;
  final d29 = false.obs;
  final d30 = false.obs;
  final d31 = false.obs;
  final d32 = false.obs;
  final d33 = false.obs;

  @override
  void initState() {
    super.initState();
    d28.value = vm.io.d28 == "1";

    d29.value = vm.io.d29 == "5";
    d30.value = vm.io.d30 == "5";
    d31.value = vm.io.d31 == "3";
    d32.value = vm.io.d32 == "5";
    d33.value = vm.io.d33 == "5";
  }

  @override
  Widget build(BuildContext context) => Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text("미신고 고위험병원체 보유 및 보유량 확인",
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
              label: "미신고 고위험병원체",
              child: Obx(() => FclRadioGroup(
                  onChanged: (d) {
                    d28.value = d == "1";
                  },
                  orientation: OptionsOrientation.wrap,
                  labelWithKey: false,
                  map: const {"1": "있음", "2": "없음"},
                  initialValue: vm.io.d28,
                  name: "d28")),
            ),
            Obx(() => FclTextField(
                  name: 'd116',
                  enabled: d28.value,
                  initialValue: vm.io.d116,
                  label: "명칭",
                )),
            Obx(() => FclTextField(
                  name: 'd117',
                  enabled: d28.value,
                  initialValue: vm.io.d117,
                  label: "특성",
                )),
            Obx(() => FclTextField(
                  name: 'd118',
                  enabled: d28.value,
                  initialValue: vm.io.d118,
                  label: "보유량",
                )),
            FieldWithLabel(
                label: "용도",
                child: DefaultTextStyle(
                    style: TextStyle(fontSize: 28.sp, color: ColorGroup.black),
                    child: Obx(() => FormBuilderRadioGroup(
                          enabled: d28.value,
                          wrapSpacing: 100.w,
                          decoration: const InputDecoration(
                              contentPadding: EdgeInsets.zero,
                              enabledBorder: OutlineInputBorder(
                                  borderSide: BorderSide.none),
                              disabledBorder: OutlineInputBorder(
                                  borderSide: BorderSide.none)),
                          orientation: OptionsOrientation.horizontal,
                          initialValue: vm.io.d29,
                          name: "d29",
                          onChanged: (d) {
                            d29.value = d == "5";
                          },
                          options: [
                            const FormBuilderFieldOption(
                              value: "1",
                              child: Text("검사용"),
                            ),
                            const FormBuilderFieldOption(
                              value: "2",
                              child: Text("연구용"),
                            ),
                            const FormBuilderFieldOption(
                              value: "3",
                              child: Text("생산용"),
                            ),
                            const FormBuilderFieldOption(
                              value: "4",
                              child: Text("보존용"),
                            ),
                            FormBuilderFieldOption(
                              value: "5",
                              child: Row(
                                children: [
                                  const Text("기타 ("),
                                  SizedBox(
                                      width: 200.w,
                                      child: Obx(() => FclTextField(
                                            enabled: d28.value && d29.value,
                                            name: "d119",
                                            initialValue: vm.io.d119,
                                          ))),
                                  const Text(")")
                                ],
                              ),
                            )
                          ],
                        )))),
            Obx(() =>
                FclFieldView(lastDividerYn: false, label: "용도서술", fieldList: [
                  FclNoteField(
                      enabled: d28.value,
                      hintText: "용도서술",
                      name: 'd125',
                      initialValue: vm.io.d125),
                ])),
            FieldWithLabel(
                label: "물질형태",
                child: DefaultTextStyle(
                    style: TextStyle(fontSize: 28.sp, color: ColorGroup.black),
                    child: Obx(() => FormBuilderRadioGroup(
                          enabled: d28.value,
                          wrapSpacing: 100.w,
                          decoration: const InputDecoration(
                              contentPadding: EdgeInsets.zero,
                              disabledBorder: OutlineInputBorder(
                                  borderSide: BorderSide.none),
                              enabledBorder: OutlineInputBorder(
                                  borderSide: BorderSide.none)),
                          orientation: OptionsOrientation.horizontal,
                          initialValue: vm.io.d30,
                          name: "d30",
                          onChanged: (d) {
                            d30.value = d == "5";
                          },
                          options: [
                            const FormBuilderFieldOption(
                              value: "1",
                              child: Text("용액"),
                            ),
                            const FormBuilderFieldOption(
                              value: "2",
                              child: Text("펠렛"),
                            ),
                            const FormBuilderFieldOption(
                              value: "3",
                              child: Text("동결건조"),
                            ),
                            const FormBuilderFieldOption(
                              value: "4",
                              child: Text("조직표본(조직절편)"),
                            ),
                            FormBuilderFieldOption(
                              value: "5",
                              child: Row(
                                children: [
                                  const Text("기타 ("),
                                  SizedBox(
                                      width: 200.w,
                                      child: Obx(() => FclTextField(
                                            enabled: d28.value && d30.value,
                                            name: "d120",
                                            initialValue: vm.io.d120,
                                          ))),
                                  const Text(")")
                                ],
                              ),
                            )
                          ],
                        )))),
            FieldWithLabel(
                label: "보존형태",
                child: DefaultTextStyle(
                    style: TextStyle(fontSize: 28.sp, color: ColorGroup.black),
                    child: Obx(() => FormBuilderRadioGroup(
                          enabled: d28.value,
                          wrapSpacing: 100.w,
                          decoration: const InputDecoration(
                              contentPadding: EdgeInsets.zero,
                              disabledBorder: OutlineInputBorder(
                                  borderSide: BorderSide.none),
                              enabledBorder: OutlineInputBorder(
                                  borderSide: BorderSide.none)),
                          orientation: OptionsOrientation.horizontal,
                          initialValue: vm.io.d31,
                          name: "d31",
                          onChanged: (d) {
                            d31.value = d == "3";
                          },
                          options: [
                            const FormBuilderFieldOption(
                              value: "1",
                              child: Text("고형 또는 액체배지"),
                            ),
                            const FormBuilderFieldOption(
                              value: "2",
                              child: Text("동결"),
                            ),
                            FormBuilderFieldOption(
                              value: "3",
                              child: Row(
                                children: [
                                  const Text("기타 ("),
                                  SizedBox(
                                      width: 200.w,
                                      child: Obx(() => FclTextField(
                                            enabled: d28.value && d31.value,
                                            name: "d121",
                                            initialValue: vm.io.d121,
                                          ))),
                                  const Text(")")
                                ],
                              ),
                            )
                          ],
                        )))),
            FieldWithLabel(
                label: "고위험병원체 보존 장비 또는 시설은?",
                child: DefaultTextStyle(
                    style: TextStyle(fontSize: 28.sp, color: ColorGroup.black),
                    child: Obx(() => FormBuilderRadioGroup(
                          enabled: d28.value,
                          wrapSpacing: 100.w,
                          decoration: const InputDecoration(
                              disabledBorder: OutlineInputBorder(
                                  borderSide: BorderSide.none),
                              contentPadding: EdgeInsets.zero,
                              enabledBorder: OutlineInputBorder(
                                  borderSide: BorderSide.none)),
                          orientation: OptionsOrientation.horizontal,
                          initialValue: vm.io.d32,
                          name: "d32",
                          onChanged: (d) {
                            d32.value = d == "5";
                          },
                          options: [
                            const FormBuilderFieldOption(
                              value: "1",
                              child: Text("냉동고(-70℃ 이하)"),
                            ),
                            const FormBuilderFieldOption(
                              value: "2",
                              child: Text("냉동고(0℃ 미만)"),
                            ),
                            const FormBuilderFieldOption(
                              value: "3",
                              child: Text("냉동고"),
                            ),
                            const FormBuilderFieldOption(
                              value: "4",
                              child: Text("액체질소탱크"),
                            ),
                            FormBuilderFieldOption(
                              value: "5",
                              child: Row(
                                children: [
                                  const Text("기타 ("),
                                  SizedBox(
                                      width: 200.w,
                                      child: Obx(() => FclTextField(
                                            enabled: d28.value && d32.value,
                                            name: "d122",
                                            initialValue: vm.io.d122,
                                          ))),
                                  const Text(")")
                                ],
                              ),
                            )
                          ],
                        )))),
            FieldWithLabel(
                label: "보유경위",
                child: DefaultTextStyle(
                    style: TextStyle(fontSize: 28.sp, color: ColorGroup.black),
                    child: Obx(() => FormBuilderRadioGroup(
                          enabled: d28.value,
                          wrapSpacing: 100.w,
                          decoration: const InputDecoration(
                              disabledBorder: OutlineInputBorder(
                                  borderSide: BorderSide.none),
                              contentPadding: EdgeInsets.zero,
                              enabledBorder: OutlineInputBorder(
                                  borderSide: BorderSide.none)),
                          orientation: OptionsOrientation.horizontal,
                          initialValue: vm.io.d33,
                          name: "d33",
                          onChanged: (d) {
                            d33.value = d == "5";
                          },
                          options: [
                            const FormBuilderFieldOption(
                              value: "1",
                              child: Text("수입"),
                            ),
                            const FormBuilderFieldOption(
                              value: "2",
                              child: Text("분리"),
                            ),
                            const FormBuilderFieldOption(
                              value: "3",
                              child: Text("분양"),
                            ),
                            const FormBuilderFieldOption(
                              value: "4",
                              child: Text("이동"),
                            ),
                            FormBuilderFieldOption(
                              value: "5",
                              child: Row(
                                children: [
                                  const Text("기타 ("),
                                  SizedBox(
                                      width: 200.w,
                                      child: Obx(() => FclTextField(
                                            enabled: d28.value && d33.value,
                                            name: "d123",
                                            initialValue: vm.io.d123,
                                          ))),
                                  const Text(")")
                                ],
                              ),
                            )
                          ],
                        )))),
            FieldWithLabel(
              label: "최초보유일",
              child: Obx(() => FclDateField(
                    enabled: d28.value,
                    name: 'd124',
                    initialDate: vm.io.d124,
                  )),
            )
          ].withSpaceBetween(height: 40.h)
        ],
      );
}
