import 'package:flutter/material.dart';
import 'package:flutter_form_builder/flutter_form_builder.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:sisolab_flutter_biosafety/app/global/styles/color_styles.dart';
import 'package:sisolab_flutter_biosafety/app/global/widgets/fcl_radio_group.dart';
import 'package:sisolab_flutter_biosafety/app/global/widgets/fcl_divider.dart';
import 'package:sisolab_flutter_biosafety/app/global/widgets/fcl_date_field.dart';
import 'package:sisolab_flutter_biosafety/app/global/widgets/fcl_text_field.dart';
import 'package:sisolab_flutter_biosafety/app/global/widgets/tight_grid_view.dart';
import 'package:sisolab_flutter_biosafety/app/ui/fcl_detail/vms/fcl_detail_vm.dart';

import '../../../global/widgets/field_with_label.dart';

/// 고위험 - 점검개요
class Tab27 extends StatefulWidget {
  const Tab27({Key? key}) : super(key: key);

  @override
  State<Tab27> createState() => _Tab27State();
}

class _Tab27State extends State<Tab27> {
  FclDetailVm get vm => FclDetailVm.to;
  final d13 = false.obs;
  final d14 = false.obs;
  final d15 = false.obs;
  final d16 = false.obs;
  final d17 = false.obs;
  final d18 = false.obs;
  final d19 = false.obs;
  final d20 = false.obs;
  final d21 = false.obs;
  final d22 = false.obs;

  @override
  void initState() {
    super.initState();
    d13.value = vm.io.d13 == "5";
    d14.value = vm.io.d14 == "1";
    d15.value = vm.io.d15 == "1";
    d16.value = vm.io.d16 == "1";
    d17.value = vm.io.d17 == "1";
    d18.value = vm.io.d18 == "1";
    d19.value = vm.io.d19 == "1";
    d20.value = vm.io.d20 == "1";
    d21.value = vm.io.d21 == "1";
    d22.value = vm.io.d22 == "1";
  }

  @override
  Widget build(BuildContext context) => Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text("점검개요",
              style: TextStyle(fontSize: 34.sp, fontWeight: FontWeight.w500)),
          SizedBox(
            height: 22.h,
          ),
          const FclDivider.black(),
          SizedBox(
            height: 47.h,
          ),
          TightGridView(
            crossAxisCount: 2,
            crossAxisSpacing: 40.w,
            mainAxisSpacing: 40.h,
            children: [
              FclTextField(
                onSubmitted: (_) => vm.submit(),
                hintText: "기관명",
                name: "company",
                initialValue: vm.io.company,
                label: "기관명",
              ),
              FclDateField(
                name: "d1",
                initialDate: vm.io.d1,
                label: "점검일시",
              ),
              FclTextField(
                onSubmitted: (_) => vm.submit(),
                hintText: "대표자명",
                name: "comName",
                initialValue: vm.io.comName,
                label: "대표자명",
              ),
              FclTextField(
                onSubmitted: (_) => vm.submit(),
                hintText: "사업자등록번호",
                name: "comCode",
                initialValue: vm.io.comCode,
                label: "사업자등록번호",
              ),
            ],
          ),
          SizedBox(
            height: 40.h,
          ),
          FieldWithLabel(
              label: "기관 구분",
              child: FclRadioGroup(
                labelWithKey: false,
                orientation: OptionsOrientation.wrap,
                map: const {"1": "기관(연구기관)", "2": "기업", "3": "대학(병원)"},
                name: "d2",
                initialValue: vm.io.d2,
              )),
          SizedBox(
            height: 40.h,
          ),
          FclTextField(
            onSubmitted: (_) => vm.submit(),
            hintText: "주소(본사)",
            name: "comAddress",
            initialValue: vm.io.comAddress,
            label: "주소(본사)",
          ),
          SizedBox(
            height: 40.h,
          ),
          FclTextField(
            onSubmitted: (_) => vm.submit(),
            name: "주소",
            label: "주소",
          ),
          SizedBox(
            height: 40.h,
          ),
          FieldWithLabel(
              label: "생물안전시설의 밀폐등급은?",
              child: DefaultTextStyle(
                  style: TextStyle(fontSize: 28.sp, color: ColorGroup.black),
                  child: FormBuilderRadioGroup(
                    wrapSpacing: 100.w,
                    decoration: const InputDecoration(
                        contentPadding: EdgeInsets.zero,
                        enabledBorder:
                            OutlineInputBorder(borderSide: BorderSide.none)),
                    orientation: OptionsOrientation.horizontal,
                    initialValue: vm.io.d13,
                    name: "d13",
                    onChanged: (d) {
                      d13.value = d == "5";
                    },
                    options: [
                      const FormBuilderFieldOption(
                        value: "1",
                        child: Text("BL1"),
                      ),
                      const FormBuilderFieldOption(
                        value: "2",
                        child: Text("BL2"),
                      ),
                      const FormBuilderFieldOption(
                        value: "3",
                        child: Text("BL3"),
                      ),
                      const FormBuilderFieldOption(
                        value: "4",
                        child: Text("BL4"),
                      ),
                      FormBuilderFieldOption(
                        value: "5",
                        child: Row(
                          children: [
                            const Text("기타 ("),
                            SizedBox(
                                width: 200.w,
                                child: Obx(() => FclTextField(
                                      enabled: d13.value,
                                      name: "d135",
                                      initialValue: vm.io.d135,
                                    ))),
                            const Text(")")
                          ],
                        ),
                      )
                    ],
                  ))),
          SizedBox(
            height: 40.h,
          ),
          FclTextField(
            onSubmitted: (_) => vm.submit(),
            hintText: "[제KCDC-HP-00-0-00호]",
            name: "d156",
            initialValue: vm.io.d156,
            label: "생물안전시설의 시설번호는? [제KCDC-HP-00-0-00호]",
          ),
          SizedBox(
            height: 40.h,
          ),
          const FclDivider.form(),
          SizedBox(
            height: 40.h,
          ),
          Text("고위험병원체 전담관리자",
              style: TextStyle(fontSize: 34.sp, fontWeight: FontWeight.w500)),
          const FclDivider.black(),
          TightGridView(
            crossAxisCount: 2,
            crossAxisSpacing: 40.w,
            mainAxisSpacing: 40.h,
            children: [
              FieldWithLabel(
                label: "전화",
                child: FclTextField(
                  hintText: "전화번호 입력",
                  name: "d3",
                  initialValue: vm.io.d3,
                ),
              ),
              FieldWithLabel(
                label: "휴대폰번호",
                child: FclTextField(
                  hintText: "휴대폰번호",
                  name: "d4",
                  initialValue: vm.io.d4,
                ),
              ),
            ],
          ),
          SizedBox(
            height: 40.h,
          ),
          FieldWithLabel(
            label: "전자우편주소",
            child: FclTextField(
              hintText: "전자우편주소 입력",
              name: "d5",
              initialValue: vm.io.d5,
            ),
          ),
          SizedBox(
            height: 40.h,
          ),
          Text("실무관리자",
              style: TextStyle(fontSize: 34.sp, fontWeight: FontWeight.w500)),
          const FclDivider.black(),
          TightGridView(
            crossAxisCount: 2,
            crossAxisSpacing: 40.w,
            mainAxisSpacing: 40.h,
            children: [
              FieldWithLabel(
                label: "전화",
                child: FclTextField(
                  hintText: "전화번호 입력",
                  name: "d6",
                  initialValue: vm.io.d6,
                ),
              ),
              FieldWithLabel(
                label: "휴대폰번호",
                child: FclTextField(
                  hintText: "휴대폰번호",
                  name: "d7",
                  initialValue: vm.io.d7,
                ),
              ),
            ],
          ),
          SizedBox(
            height: 40.h,
          ),
          FieldWithLabel(
            label: "전자우편주소",
            child: FclTextField(
              hintText: "전자우편주소 입력",
              name: "d8",
              initialValue: vm.io.d8,
            ),
          ),
          SizedBox(
            height: 40.h,
          ),
          Text("고위험병원체 전담관리자 외 고위험병원체 취급자",
              style: TextStyle(fontSize: 34.sp, fontWeight: FontWeight.w500)),
          const FclDivider.black(),
          DefaultTextStyle(
              style: TextStyle(fontSize: 28.sp, color: ColorGroup.black),
              child: Column(
                children: [
                  FormBuilderRadioGroup(
                    wrapSpacing: 100.w,
                    wrapRunSpacing: 100.w,
                    decoration: const InputDecoration(
                        contentPadding: EdgeInsets.zero,
                        enabledBorder:
                            OutlineInputBorder(borderSide: BorderSide.none)),
                    orientation: OptionsOrientation.horizontal,
                    initialValue: vm.io.d14,
                    name: "d14",
                    onChanged: (d) {
                      d14.value = d == "1";
                    },
                    options: [
                      FormBuilderFieldOption(
                        value: "1",
                        child: Row(
                          children: [
                            const Text("있음 ("),
                            SizedBox(
                                width: 100.w,
                                child: Obx(() => FclTextField(
                                      enabled: d14.value,
                                      name: "d141",
                                      initialValue: vm.io.d141,
                                    ))),
                            const Text("명)")
                          ],
                        ),
                      ),
                      const FormBuilderFieldOption(
                        value: "2",
                        child: Text("없음"),
                      ),
                    ],
                  ),
                  const Text("※ 취급자 정보(여러 명일 경우 별도첨부)"),
                  Obx(() => FclTextField(
                        enabled: d14.value,
                        onSubmitted: (_) => vm.submit(),
                        hintText: "성명",
                        name: "d10",
                        initialValue: vm.io.d10,
                        label: "성명",
                      ))
                ],
              )),
          SizedBox(
            height: 40.h,
          ),
          const FclDivider.form(),
          SizedBox(
            height: 40.h,
          ),
          Text("보안 담당자",
              style: TextStyle(fontSize: 34.sp, fontWeight: FontWeight.w500)),
          const FclDivider.black(),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              FieldWithLabel(
                label: "보안관리 책임자",
                child: Obx(() => FclRadioGroup(
                    onChanged: (d) {
                      d15.value = d == "1";
                    },
                    orientation: OptionsOrientation.wrap,
                    labelWithKey: false,
                    map: const {"1": "있음", "2": "없음"},
                    initialValue: vm.io.d15,
                    name: "d15")),
              ),
              TightGridView(
                  crossAxisCount: 2,
                  crossAxisSpacing: 40.w,
                  mainAxisSpacing: 40.w,
                  children: [
                    FieldWithLabel(
                        label: "성명",
                        child: Obx(() => FclTextField(
                              hintText: "성명",
                              enabled: d15.value,
                              name: "d11",
                              initialValue: vm.io.d11,
                            ))),
                    FieldWithLabel(
                        label: "소속부서 및 직급",
                        child: Obx(() => FclTextField(
                              hintText: "소속부서 및 직급",
                              enabled: d15.value,
                              name: "d12",
                              initialValue: vm.io.d12,
                            ))),
                    FieldWithLabel(
                        label: "소속기관내 근무기간",
                        child: Obx(() => FclTextField(
                              hintText: '소속기관내 근무기간',
                              enabled: d15.value,
                              name: "d80",
                              initialValue: vm.io.d80,
                            ))),
                    FieldWithLabel(
                        label: "안전 및 보안 자격증 보유",
                        child: Obx(() => FormBuilderRadioGroup(
                              enabled: d15.value,
                              wrapSpacing: 100.w,
                              wrapRunSpacing: 100.w,
                              decoration: const InputDecoration(
                                  contentPadding: EdgeInsets.zero,
                                  disabledBorder: OutlineInputBorder(
                                      borderSide: BorderSide.none),
                                  enabledBorder: OutlineInputBorder(
                                      borderSide: BorderSide.none)),
                              orientation: OptionsOrientation.horizontal,
                              initialValue: vm.io.d16,
                              name: "d16",
                              onChanged: (d) {
                                d16.value = d == "1";
                              },
                              options: [
                                FormBuilderFieldOption(
                                  value: "1",
                                  child: Row(
                                    children: [
                                      const Text("네 (종류"),
                                      SizedBox(
                                          width: 100.w,
                                          child: Obx(() => FclTextField(
                                                enabled: d16.value && d15.value,
                                                name: "d81",
                                                initialValue: vm.io.d81,
                                              ))),
                                      const Text(")")
                                    ],
                                  ),
                                ),
                                const FormBuilderFieldOption(
                                  value: "2",
                                  child: Text("아니요"),
                                ),
                              ],
                            ))),
                    FieldWithLabel(
                        label: "전화",
                        child: Obx(() => FclTextField(
                              hintText: '전화',
                              enabled: d15.value,
                              name: "d82",
                              initialValue: vm.io.d82,
                            ))),
                    FieldWithLabel(
                        label: "휴대폰번호",
                        child: Obx(() => FclTextField(
                              hintText: '휴대폰번호',
                              enabled: d15.value,
                              name: "d83",
                              initialValue: vm.io.d83,
                            )))
                  ]),
              SizedBox(
                height: 40.h,
              ),
              FieldWithLabel(
                label: "전자우편주소",
                child: Obx(() => FclTextField(
                      hintText: "전자우편주소 입력",
                      name: "d84",
                      enabled: d15.value,
                      initialValue: vm.io.d84,
                    )),
              ),
              SizedBox(
                height: 40.h,
              ),
              const FclDivider.form(),
              SizedBox(
                height: 40.h,
              ),
              FieldWithLabel(
                label: "생물안전 관리자",
                child: Obx(() => FclRadioGroup(
                    onChanged: (d) {
                      d17.value = d == "1";
                    },
                    orientation: OptionsOrientation.wrap,
                    labelWithKey: false,
                    map: const {"1": "있음", "2": "없음"},
                    initialValue: vm.io.d17,
                    name: "d17")),
              ),
              TightGridView(
                  crossAxisCount: 2,
                  crossAxisSpacing: 40.w,
                  mainAxisSpacing: 40.w,
                  children: [
                    FieldWithLabel(
                        label: "성명",
                        child: Obx(() => FclTextField(
                              hintText: "성명",
                              enabled: d17.value,
                              name: "d85",
                              initialValue: vm.io.d85,
                            ))),
                    FieldWithLabel(
                        label: "소속부서 및 직급",
                        child: Obx(() => FclTextField(
                              hintText: "소속부서 및 직급",
                              enabled: d17.value,
                              name: "d86",
                              initialValue: vm.io.d86,
                            ))),
                    FieldWithLabel(
                        label: "소속기관내 근무기간",
                        child: Obx(() => FclTextField(
                              hintText: '소속기관내 근무기간',
                              enabled: d17.value,
                              name: "d87",
                              initialValue: vm.io.d87,
                            ))),
                    FieldWithLabel(
                        label: "안전 및 보안 자격증 보유",
                        child: Obx(() => FormBuilderRadioGroup(
                              enabled: d17.value,
                              wrapSpacing: 100.w,
                              wrapRunSpacing: 100.w,
                              decoration: const InputDecoration(
                                  contentPadding: EdgeInsets.zero,
                                  disabledBorder: OutlineInputBorder(
                                      borderSide: BorderSide.none),
                                  enabledBorder: OutlineInputBorder(
                                      borderSide: BorderSide.none)),
                              orientation: OptionsOrientation.horizontal,
                              initialValue: vm.io.d18,
                              name: "d18",
                              onChanged: (d) {
                                d18.value = d == "1";
                              },
                              options: [
                                FormBuilderFieldOption(
                                  value: "1",
                                  child: Row(
                                    children: [
                                      const Text("네 (종류"),
                                      SizedBox(
                                          width: 100.w,
                                          child: Obx(() => FclTextField(
                                                enabled: d18.value && d17.value,
                                                name: "d88",
                                                initialValue: vm.io.d88,
                                              ))),
                                      const Text(")")
                                    ],
                                  ),
                                ),
                                const FormBuilderFieldOption(
                                  value: "2",
                                  child: Text("아니요"),
                                ),
                              ],
                            ))),
                    FieldWithLabel(
                        label: "전화",
                        child: Obx(() => FclTextField(
                              hintText: '전화',
                              enabled: d17.value,
                              name: "d89",
                              initialValue: vm.io.d89,
                            ))),
                    FieldWithLabel(
                        label: "휴대폰번호",
                        child: Obx(() => FclTextField(
                              hintText: '휴대폰번호',
                              enabled: d17.value,
                              name: "d90",
                              initialValue: vm.io.d90,
                            )))
                  ]),
              SizedBox(
                height: 40.h,
              ),
              FieldWithLabel(
                label: "전자우편주소",
                child: Obx(() => FclTextField(
                      hintText: "전자우편주소 입력",
                      name: "d91",
                      enabled: d17.value,
                      initialValue: vm.io.d91,
                    )),
              ),
            ],
          ),
          Text("생물안전 담당자",
              style: TextStyle(fontSize: 34.sp, fontWeight: FontWeight.w500)),
          const FclDivider.black(),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              FieldWithLabel(
                label: "생물안전관리 책임자",
                child: Obx(() => FclRadioGroup(
                    onChanged: (d) {
                      d19.value = d == "1";
                    },
                    orientation: OptionsOrientation.wrap,
                    labelWithKey: false,
                    map: const {"1": "있음", "2": "없음"},
                    initialValue: vm.io.d19,
                    name: "d19")),
              ),
              TightGridView(
                  crossAxisCount: 2,
                  crossAxisSpacing: 40.w,
                  mainAxisSpacing: 40.w,
                  children: [
                    FieldWithLabel(
                        label: "성명",
                        child: Obx(() => FclTextField(
                              hintText: "성명",
                              enabled: d19.value,
                              name: "d92",
                              initialValue: vm.io.d92,
                            ))),
                    FieldWithLabel(
                        label: "소속부서 및 직급",
                        child: Obx(() => FclTextField(
                              hintText: "소속부서 및 직급",
                              enabled: d19.value,
                              name: "d93",
                              initialValue: vm.io.d93,
                            ))),
                    FieldWithLabel(
                        label: "소속기관내 근무기간",
                        child: Obx(() => FclTextField(
                              hintText: '소속기관내 근무기간',
                              enabled: d19.value,
                              name: "d94",
                              initialValue: vm.io.d94,
                            ))),
                    FieldWithLabel(
                        label: "안전 및 보안 자격증 보유",
                        child: Obx(() => FormBuilderRadioGroup(
                              enabled: d19.value,
                              wrapSpacing: 100.w,
                              wrapRunSpacing: 100.w,
                              decoration: const InputDecoration(
                                  contentPadding: EdgeInsets.zero,
                                  disabledBorder: OutlineInputBorder(
                                      borderSide: BorderSide.none),
                                  enabledBorder: OutlineInputBorder(
                                      borderSide: BorderSide.none)),
                              orientation: OptionsOrientation.horizontal,
                              initialValue: vm.io.d20,
                              name: "d20",
                              onChanged: (d) {
                                d20.value = d == "1";
                              },
                              options: [
                                FormBuilderFieldOption(
                                  value: "1",
                                  child: Row(
                                    children: [
                                      const Text("네 (종류"),
                                      SizedBox(
                                          width: 100.w,
                                          child: Obx(() {
                                            return FclTextField(
                                              enabled: d20.value && d19.value,
                                              name: "d95",
                                              initialValue: vm.io.d95,
                                            );
                                          })),
                                      const Text(")")
                                    ],
                                  ),
                                ),
                                const FormBuilderFieldOption(
                                  value: "2",
                                  child: Text("아니요"),
                                ),
                              ],
                            ))),
                    FieldWithLabel(
                        label: "전화",
                        child: Obx(() => FclTextField(
                              hintText: '전화',
                              enabled: d19.value,
                              name: "d96",
                              initialValue: vm.io.d96,
                            ))),
                    FieldWithLabel(
                        label: "휴대폰번호",
                        child: Obx(() => FclTextField(
                              hintText: '휴대폰번호',
                              enabled: d19.value,
                              name: "d97",
                              initialValue: vm.io.d97,
                            )))
                  ]),
              SizedBox(
                height: 40.h,
              ),
              FieldWithLabel(
                label: "전자우편주소",
                child: Obx(() => FclTextField(
                      hintText: "전자우편주소 입력",
                      name: "d98",
                      enabled: d19.value,
                      initialValue: vm.io.d98,
                    )),
              ),
              SizedBox(
                height: 40.h,
              ),
              const FclDivider.form(),
              SizedBox(
                height: 40.h,
              ),
              FieldWithLabel(
                label: "생물안전 실무관리자",
                child: Obx(() => FclRadioGroup(
                    onChanged: (d) => d21.value = d == "1",
                    orientation: OptionsOrientation.wrap,
                    labelWithKey: false,
                    map: const {"1": "있음", "2": "없음"},
                    initialValue: vm.io.d21,
                    name: "d21")),
              ),
              TightGridView(
                  crossAxisCount: 2,
                  crossAxisSpacing: 40.w,
                  mainAxisSpacing: 40.w,
                  children: [
                    FieldWithLabel(
                        label: "성명",
                        child: Obx(() => FclTextField(
                              hintText: "성명",
                              enabled: d21.value,
                              name: "d99",
                              initialValue: vm.io.d99,
                            ))),
                    FieldWithLabel(
                        label: "소속부서 및 직급",
                        child: Obx(() => FclTextField(
                              hintText: "소속부서 및 직급",
                              enabled: d21.value,
                              name: "d100",
                              initialValue: vm.io.d100,
                            ))),
                    FieldWithLabel(
                        label: "소속기관내 근무기간",
                        child: Obx(() => FclTextField(
                              hintText: '소속기관내 근무기간',
                              enabled: d21.value,
                              name: "d101",
                              initialValue: vm.io.d101,
                            ))),
                    FieldWithLabel(
                        label: "안전 및 보안 자격증 보유",
                        child: Obx(() => FormBuilderRadioGroup(
                              enabled: d21.value,
                              wrapSpacing: 100.w,
                              wrapRunSpacing: 100.w,
                              decoration: const InputDecoration(
                                  contentPadding: EdgeInsets.zero,
                                  disabledBorder: OutlineInputBorder(
                                      borderSide: BorderSide.none),
                                  enabledBorder: OutlineInputBorder(
                                      borderSide: BorderSide.none)),
                              orientation: OptionsOrientation.horizontal,
                              initialValue: vm.io.d22,
                              name: "d22",
                              onChanged: (d) {
                                d22.value = d == "1";
                              },
                              options: [
                                FormBuilderFieldOption(
                                  value: "1",
                                  child: Row(
                                    children: [
                                      const Text("네 (종류"),
                                      SizedBox(
                                          width: 100.w,
                                          child: Obx(() {
                                            return FclTextField(
                                              enabled: d22.value && d21.value,
                                              name: "d102",
                                              initialValue: vm.io.d102,
                                            );
                                          })),
                                      const Text(")")
                                    ],
                                  ),
                                ),
                                const FormBuilderFieldOption(
                                  value: "2",
                                  child: Text("아니요"),
                                ),
                              ],
                            ))),
                    FieldWithLabel(
                        label: "전화",
                        child: Obx(() => FclTextField(
                              hintText: '전화',
                              enabled: d21.value,
                              name: "d103",
                              initialValue: vm.io.d103,
                            ))),
                    FieldWithLabel(
                        label: "휴대폰번호",
                        child: Obx(() => FclTextField(
                              hintText: '휴대폰번호',
                              enabled: d21.value,
                              name: "d104",
                              initialValue: vm.io.d104,
                            )))
                  ]),
              SizedBox(
                height: 40.h,
              ),
              FieldWithLabel(
                label: "전자우편주소",
                child: Obx(() => FclTextField(
                      hintText: "전자우편주소 입력",
                      name: "d105",
                      enabled: d21.value,
                      initialValue: vm.io.d105,
                    )),
              ),
            ],
          )
        ],
      );
}
