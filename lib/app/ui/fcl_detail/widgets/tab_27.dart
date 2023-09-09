import 'package:flutter/material.dart';
import 'package:flutter_form_builder/flutter_form_builder.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:sisolab_flutter_biosafety/app/global/styles/color_styles.dart';
import 'package:sisolab_flutter_biosafety/app/global/widgets/fcl/fcl_radio_group.dart';
import 'package:sisolab_flutter_biosafety/app/global/widgets/fcl_divider.dart';
import 'package:sisolab_flutter_biosafety/app/global/widgets/fields/fcl_date_field.dart';
import 'package:sisolab_flutter_biosafety/app/global/widgets/fields/fcl_text_field.dart';
import 'package:sisolab_flutter_biosafety/app/global/widgets/tight_grid_view.dart';
import 'package:sisolab_flutter_biosafety/app/ui/fcl_detail/vms/fcl_detail_vm.dart';
import 'package:sisolab_flutter_biosafety/core/utils/mc_logger.dart';

import '../../../global/widgets/field_with_label.dart';

/// 고위험 - 점검개요
class Tab27 extends StatelessWidget {
  const Tab27({super.key});

  FclDetailVm get vm => FclDetailVm.to;

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
                enabled: false,
                name: "comName",
                initialValue: vm.io.comName,
                label: "대표자명",
              ),
              FclTextField(
                enabled: false,
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
            enabled: false,
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
            enabled: false,
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
                  child: ObxValue(
                      (data) => FormBuilderRadioGroup(
                            wrapSpacing: 100.w,
                            decoration: const InputDecoration(
                                contentPadding: EdgeInsets.zero,
                                enabledBorder: OutlineInputBorder(
                                    borderSide: BorderSide.none)),
                            orientation: OptionsOrientation.horizontal,
                            initialValue: vm.io.d13,
                            name: "d13",
                            onChanged: (d) {
                              data.value = d == "5";
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
                                        child: FclTextField(
                                          enabled: data.value,
                                          name: "d135",
                                          initialValue: vm.io.d135,
                                        )),
                                    const Text(")")
                                  ],
                                ),
                              )
                            ],
                          ),
                      Rx(vm.io.d13 == "5")))),
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
              child: ObxValue(
                  (data) => Column(
                        children: [
                          FormBuilderRadioGroup(
                            wrapSpacing: 100.w,
                            wrapRunSpacing: 100.w,
                            decoration: const InputDecoration(
                                contentPadding: EdgeInsets.zero,
                                enabledBorder: OutlineInputBorder(
                                    borderSide: BorderSide.none)),
                            orientation: OptionsOrientation.horizontal,
                            initialValue: vm.io.d14,
                            name: "d14",
                            onChanged: (d) {
                              data.value = d == "1";
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
                                              enabled: data.value,
                                              name: "d135",
                                              initialValue: vm.io.d135,
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
                                enabled: data.value,
                                onSubmitted: (_) => vm.submit(),
                                hintText: "성명",
                                name: "d10",
                                initialValue: vm.io.d10,
                                label: "성명",
                              ))
                        ],
                      ),
                  Rx(vm.io.d14 == "1"))),
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
          ObxValue(
              (data) => Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      FieldWithLabel(
                        label: "보안관리 책임자",
                        child: Obx(() => FclRadioGroup(
                            onChanged: (d) {
                              data.value = d == "1";
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
                                      enabled: data.value,
                                      name: "d11",
                                      initialValue: vm.io.d11,
                                    ))),
                            FieldWithLabel(
                                label: "소속부서 및 직급",
                                child: Obx(() => FclTextField(
                                      hintText: "소속부서 및 직급",
                                      enabled: data.value,
                                      name: "d12",
                                      initialValue: vm.io.d12,
                                    ))),
                            FieldWithLabel(
                                label: "소속기관내 근무기간",
                                child: Obx(() => FclTextField(
                                      hintText: '소속기관내 근무기간',
                                      enabled: data.value,
                                      name: "d80",
                                      initialValue: vm.io.d80,
                                    ))),
                            ObxValue(
                                (p0) => FieldWithLabel(
                                    label: "안전 및 보안 자격증 보유",
                                    child: FormBuilderRadioGroup(
                                      enabled: data.value,
                                      wrapSpacing: 100.w,
                                      wrapRunSpacing: 100.w,
                                      decoration: const InputDecoration(
                                          contentPadding: EdgeInsets.zero,
                                          disabledBorder: OutlineInputBorder(
                                              borderSide: BorderSide.none),
                                          enabledBorder: OutlineInputBorder(
                                              borderSide: BorderSide.none)),
                                      orientation:
                                          OptionsOrientation.horizontal,
                                      initialValue: vm.io.d16,
                                      name: "d16",
                                      onChanged: (d) {
                                        p0.value = d == "1";
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
                                                    pLogger.i(p0.value);
                                                    pLogger.i(data.value);
                                                    return FclTextField(
                                                      enabled: p0.value &&
                                                          data.value,
                                                      name: "d81",
                                                      initialValue: vm.io.d81,
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
                                    )),
                                Rx(vm.io.d16 != null)),
                            FieldWithLabel(
                                label: "전화",
                                child: FclTextField(
                                  hintText: '전화',
                                  enabled: data.value,
                                  name: "d89",
                                  initialValue: vm.io.d89,
                                )),
                            FieldWithLabel(
                                label: "휴대폰번호",
                                child: FclTextField(
                                  hintText: '휴대폰번호',
                                  enabled: data.value,
                                  name: "d90",
                                  initialValue: vm.io.d90,
                                ))
                          ]),
                      SizedBox(
                        height: 40.h,
                      ),
                      FieldWithLabel(
                        label: "전자우편주소",
                        child: FclTextField(
                          hintText: "전자우편주소 입력",
                          name: "d91",
                          enabled: data.value,
                          initialValue: vm.io.d91,
                        ),
                      ),
                    ],
                  ),
              Rx(vm.io.d15 == "1"))
        ],
      );
}
