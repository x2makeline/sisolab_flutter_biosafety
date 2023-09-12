import 'package:flutter/material.dart';
import 'package:flutter_form_builder/flutter_form_builder.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:sisolab_flutter_biosafety/app/global/styles/color_styles.dart';
import 'package:sisolab_flutter_biosafety/app/global/widgets/fcl_date_field.dart';
import 'package:sisolab_flutter_biosafety/app/global/widgets/fcl_divider.dart';
import 'package:sisolab_flutter_biosafety/app/global/widgets/fcl_input.dart';
import 'package:sisolab_flutter_biosafety/app/global/widgets/fcl_text_field.dart';
import 'package:sisolab_flutter_biosafety/app/global/widgets/field_with_label.dart';
import 'package:sisolab_flutter_biosafety/app/ui/fcl_detail/vms/fcl_detail_vm.dart';
import 'package:sisolab_flutter_biosafety/core/utils/extensions/list_space_between.dart';

/// 고위험 - 고위험병원체 보유 및 보유량 확인
class Tab28 extends StatefulWidget {
  const Tab28({Key? key}) : super(key: key);

  @override
  State<Tab28> createState() => _Tab28State();
}

class _Tab28State extends State<Tab28> {
  FclDetailVm get vm => FclDetailVm.to;
  final d23 = false.obs;
  final d24 = false.obs;
  final d25 = false.obs;
  final d26 = false.obs;
  final d27 = false.obs;

  @override
  void initState() {
    super.initState();
    d23.value = vm.io.d23 == "5";
    d24.value = vm.io.d24 == "5";
    d25.value = vm.io.d25 == "3";
    d26.value = vm.io.d26 == "5";
    d27.value = vm.io.d27 == "5";
  }

  @override
  Widget build(BuildContext context) => Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text("고위험병원체 보유 및 보유량 확인",
              style: TextStyle(fontSize: 34.sp, fontWeight: FontWeight.w500)),
          SizedBox(
            height: 22.h,
          ),
          const FclDivider.black(),
          SizedBox(
            height: 47.h,
          ),
          ...[
            FclTextField(
              name: 'd106',
              initialValue: vm.io.d106,
              label: "명칭",
            ),
            FclTextField(
              name: 'd107',
              initialValue: vm.io.d107,
              label: "특성",
            ),
            FclTextField(
              name: 'd108',
              initialValue: vm.io.d108,
              label: "보유량",
            ),
            FieldWithLabel(
                label: "용도",
                child: DefaultTextStyle(
                    style: TextStyle(fontSize: 28.sp, color: ColorGroup.black),
                    child: FormBuilderRadioGroup(
                      wrapSpacing: 100.w,
                      decoration: const InputDecoration(
                          contentPadding: EdgeInsets.zero,
                          enabledBorder:
                              OutlineInputBorder(borderSide: BorderSide.none)),
                      orientation: OptionsOrientation.horizontal,
                      initialValue: vm.io.d23,
                      name: "d23",
                      onChanged: (d) {
                        d23.value = d == "5";
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
                                        enabled: d23.value,
                                        name: "d109",
                                        initialValue: vm.io.d109,
                                      ))),
                              const Text(")")
                            ],
                          ),
                        )
                      ],
                    ))),
            FclFieldView(lastDividerYn: false, label: "용도서술", fieldList: [
              FclNoteField(
                  hintText: "용도서술", name: 'd110', initialValue: vm.io.d110),
            ]),
            FieldWithLabel(
                label: "물질형태",
                child: DefaultTextStyle(
                    style: TextStyle(fontSize: 28.sp, color: ColorGroup.black),
                    child: FormBuilderRadioGroup(
                      wrapSpacing: 100.w,
                      decoration: const InputDecoration(
                          contentPadding: EdgeInsets.zero,
                          enabledBorder:
                              OutlineInputBorder(borderSide: BorderSide.none)),
                      orientation: OptionsOrientation.horizontal,
                      initialValue: vm.io.d24,
                      name: "d24",
                      onChanged: (d) {
                        d24.value = d == "5";
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
                                        enabled: d24.value,
                                        name: "d111",
                                        initialValue: vm.io.d111,
                                      ))),
                              const Text(")")
                            ],
                          ),
                        )
                      ],
                    ))),
            FieldWithLabel(
                label: "보존형태",
                child: DefaultTextStyle(
                    style: TextStyle(fontSize: 28.sp, color: ColorGroup.black),
                    child: FormBuilderRadioGroup(
                      wrapSpacing: 100.w,
                      decoration: const InputDecoration(
                          contentPadding: EdgeInsets.zero,
                          enabledBorder:
                              OutlineInputBorder(borderSide: BorderSide.none)),
                      orientation: OptionsOrientation.horizontal,
                      initialValue: vm.io.d25,
                      name: "d25",
                      onChanged: (d) {
                        d25.value = d == "3";
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
                                        enabled: d25.value,
                                        name: "d112",
                                        initialValue: vm.io.d112,
                                      ))),
                              const Text(")")
                            ],
                          ),
                        )
                      ],
                    ))),
            FieldWithLabel(
                label: "고위험병원체 보존 장비 또는 시설은?",
                child: DefaultTextStyle(
                    style: TextStyle(fontSize: 28.sp, color: ColorGroup.black),
                    child: FormBuilderRadioGroup(
                      wrapSpacing: 100.w,
                      decoration: const InputDecoration(
                          contentPadding: EdgeInsets.zero,
                          enabledBorder:
                              OutlineInputBorder(borderSide: BorderSide.none)),
                      orientation: OptionsOrientation.horizontal,
                      initialValue: vm.io.d26,
                      name: "d26",
                      onChanged: (d) {
                        d26.value = d == "5";
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
                                        enabled: d26.value,
                                        name: "d113",
                                        initialValue: vm.io.d113,
                                      ))),
                              const Text(")")
                            ],
                          ),
                        )
                      ],
                    ))),
            FieldWithLabel(
                label: "보유경위",
                child: DefaultTextStyle(
                    style: TextStyle(fontSize: 28.sp, color: ColorGroup.black),
                    child: FormBuilderRadioGroup(
                      wrapSpacing: 100.w,
                      decoration: const InputDecoration(
                          contentPadding: EdgeInsets.zero,
                          enabledBorder:
                              OutlineInputBorder(borderSide: BorderSide.none)),
                      orientation: OptionsOrientation.horizontal,
                      initialValue: vm.io.d27,
                      name: "d27",
                      onChanged: (d) {
                        d27.value = d == "5";
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
                                        enabled: d27.value,
                                        name: "d114",
                                        initialValue: vm.io.d114,
                                      ))),
                              const Text(")")
                            ],
                          ),
                        )
                      ],
                    ))),
            FieldWithLabel(
              label: "최초보유일",
              child: FclDateField(
                name: 'd115',
                initialDate: vm.io.d115,
              ),
            )
          ].withSpaceBetween(height: 40.h)
        ],
      );
}
