import 'package:dartlin/control_flow.dart';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:flutter_form_builder/flutter_form_builder.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:sisolab_flutter_biosafety/app/data/models/company_autocomplete.dart';
import 'package:sisolab_flutter_biosafety/app/data/models/gbn.dart';
import 'package:sisolab_flutter_biosafety/app/global/models/related_person_col.dart';
import 'package:sisolab_flutter_biosafety/app/global/widgets/empty_box.dart';
import 'package:sisolab_flutter_biosafety/app/global/widgets/fcl_checker_table.dart';
import 'package:sisolab_flutter_biosafety/app/global/widgets/fcl_date_field.dart';
import 'package:sisolab_flutter_biosafety/app/global/widgets/fcl_divider.dart';
import 'package:sisolab_flutter_biosafety/app/global/widgets/fcl_dropdown_field.dart';
import 'package:sisolab_flutter_biosafety/app/global/widgets/fcl_radio_group.dart';
import 'package:sisolab_flutter_biosafety/app/global/widgets/fcl_related_person_table.dart';
import 'package:sisolab_flutter_biosafety/app/global/widgets/fcl_text_field.dart';
import 'package:sisolab_flutter_biosafety/app/global/widgets/tight_grid_view.dart';
import 'package:sisolab_flutter_biosafety/app/ui/fcl_detail/vms/fcl_detail_vm.dart';
import 'package:sisolab_flutter_biosafety/core/constants/constant.dart';
import 'package:sisolab_flutter_biosafety/core/utils/extensions/list_space_between.dart';

import '../../../global/widgets/field_with_label.dart';

class Tab1 extends StatefulWidget {
  const Tab1({Key? key}) : super(key: key);

  @override
  State<Tab1> createState() => _Tab1State();
}

class _Tab1State extends State<Tab1> {
  FclDetailVm get vm => FclDetailVm.to;
  final d75_1 = false.obs;
  final d75_2 = false.obs;

  @override
  void initState() {
    super.initState();

    d75_1.value = vm.io.d75 != null && vm.io.d75!.contains("1");
    d75_2.value = vm.io.d75 != null && vm.io.d75!.contains("2");
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
              Autocomplete<CompanyAutocomplete>(
                optionsViewBuilder:
                    (BuildContext context, onSelected, options) => Align(
                  alignment: Alignment.topLeft,
                  child: Material(
                    elevation: 4.0,
                    child: ConstrainedBox(
                      constraints: const BoxConstraints(maxHeight: 200),
                      child: ListView.builder(
                        padding: EdgeInsets.zero,
                        shrinkWrap: true,
                        itemCount: options.length,
                        itemBuilder: (BuildContext context, int index) {
                          final CompanyAutocomplete option =
                              options.elementAt(index);
                          return InkWell(
                            onTap: () {
                              onSelected(option);
                            },
                            child: Builder(builder: (BuildContext context) {
                              final bool highlight =
                                  AutocompleteHighlightedOption.of(context) ==
                                      index;
                              if (highlight) {
                                SchedulerBinding.instance
                                    .addPostFrameCallback((Duration timeStamp) {
                                  Scrollable.ensureVisible(context,
                                      alignment: 0.5);
                                });
                              }
                              return Container(
                                color: highlight
                                    ? Theme.of(context).focusColor
                                    : null,
                                padding: const EdgeInsets.all(16.0),
                                child: Text(
                                    "${option.company} - ${option.d157} - ${option.d281}"),
                              );
                            }),
                          );
                        },
                      ),
                    ),
                  ),
                ),
                initialValue: vm.io.company != null
                    ? TextEditingValue(text: vm.io.company!)
                    : null,
                // optionsViewBuilder: ,
                onSelected: (CompanyAutocomplete company) {
                  // controller.text = company.company;
                  if (company.d184 != null) {
                    vm.d184Controller.text = company.d184!;
                  } else {
                    vm.d184Controller.clear();
                  }

                  if (company.d280 != null) {
                    vm.d280Controller.text = company.d280!;
                  } else {
                    vm.d280Controller.clear();
                  }

                  if (company.d157 != null) {
                    vm.d157Controller.text = company.d157!;
                    vm.formKey.currentState?.fields["d75_1"]?.didChange(true);
                  } else {
                    vm.d157Controller.clear();
                    vm.formKey.currentState?.fields["d75_1"]?.didChange(false);
                  }

                  if (company.d281 != null) {
                    vm.d281Controller.text = company.d281!;
                    vm.formKey.currentState?.fields["d75_2"]?.didChange(true);
                  } else {
                    vm.d281Controller.clear();
                    vm.formKey.currentState?.fields["d75_2"]?.didChange(false);
                  }

                  setState(() {});
                },
                optionsBuilder: (textEditingValue) =>
                    textEditingValue.text.isNotEmpty
                        ? companyAutocompleteList.where((element) =>
                            element.company.contains(textEditingValue.text))
                        : const Iterable<CompanyAutocomplete>.empty(),
                fieldViewBuilder:
                    (_, controller, focusNode, onFieldSubmitted) =>
                        FclTextField(
                  focusNode: focusNode,
                  textEditingController: controller,
                  onSubmitted: (_) => vm.submit(),
                  hintText: "운영기관명",
                  name: "company",
                  label: "운영기관명",
                ),
              ),
              FclTextField(
                onSubmitted: (_) => vm.submit(),
                hintText: "설치 ∙ 운영 장소",
                name: "d184",
                textEditingController: vm.d184Controller,
                label: "설치 ∙ 운영 장소",
              ),
              FclTextField(
                onSubmitted: (_) => vm.submit(),
                hintText: "안전관리등급",
                name: "d280",
                textEditingController: vm.d280Controller,
                label: "안전관리등급",
              ),
            ],
          ),
          SizedBox(
            height: 47.h,
          ),
          const FclDivider.form(),
          SizedBox(
            height: 47.h,
          ),
          FieldWithLabel(
            label: "시설내역",
            child: DefaultTextStyle(
              style: const TextStyle().merge(context.textTheme.titleMedium),
              child: GridView.extent(
                shrinkWrap: true,
                primary: false,
                maxCrossAxisExtent: 300.w,
                childAspectRatio: 200 / 100,
                addAutomaticKeepAlives: false,
                children: [
                  FormBuilderCheckbox(
                    name: "d68_1",
                    initialValue: vm.io.d68?.contains("1"),
                    onChanged: (v) {
                      if (v != null) {
                        vm.io.d68 = (vm.io.d68 ?? "").replaceAll("1", "") +
                            (v ? "1" : "");
                      }
                    },
                    title: Text("일반", style: context.textTheme.titleMedium),
                  ),
                  FormBuilderCheckbox(
                    name: "d68_2",
                    initialValue: vm.io.d68?.contains("2"),
                    onChanged: (v) {
                      if (v != null) {
                        vm.io.d68 = (vm.io.d68 ?? "").replaceAll("2", "") +
                            (v ? "2" : "");
                      }
                    },
                    title: Text("대량배양", style: context.textTheme.titleMedium),
                  ),
                  FormBuilderCheckbox(
                    name: "d68_3",
                    initialValue: vm.io.d68?.contains("3"),
                    onChanged: (v) {
                      if (v != null) {
                        vm.io.d68 = (vm.io.d68 ?? "").replaceAll("3", "") +
                            (v ? "3" : "");
                      }
                    },
                    title: Text("동물", style: context.textTheme.titleMedium),
                  ),
                  FormBuilderCheckbox(
                    name: "d68_4",
                    initialValue: vm.io.d68?.contains("4"),
                    onChanged: (v) {
                      if (v != null) {
                        vm.io.d68 = (vm.io.d68 ?? "").replaceAll("4", "") +
                            (v ? "4" : "");
                      }
                    },
                    title: Text("식물", style: context.textTheme.titleMedium),
                  ),
                  FormBuilderCheckbox(
                    name: "d68_5",
                    initialValue: vm.io.d68?.contains("5"),
                    onChanged: (v) {
                      if (v != null) {
                        vm.io.d68 = (vm.io.d68 ?? "").replaceAll("5", "") +
                            (v ? "5" : "");
                      }
                    },
                    title: Text("곤충", style: context.textTheme.titleMedium),
                  )
                ],
              ),
            ),
          ),
          Obx(() => vm.gbn == Gbn.fd2
              ? FclRadioGroup(
                  labelWithKey: false,
                  orientation: OptionsOrientation.wrap,
                  map: const {"1": "신규허가", "2": "재확인"},
                  initialValue: vm.io.d73,
                  name: "d73")
              : FclRadioGroup(
                  labelWithKey: false,
                  orientation: OptionsOrientation.wrap,
                  map: const {"1": "연구시설", "2": "고위험병원체 취급시설"},
                  initialValue: vm.io.d14,
                  name: "d14")),
          TightGridView(
              crossAxisCount: 2,
              crossAxisSpacing: 40.w,
              mainAxisSpacing: 40.h,
              children: [
                FormBuilderCheckbox(
                  name: "d75_1",
                  initialValue: d75_1.value,
                  onChanged: (v) {
                    v?.let((v) => d75_1.value = v);
                  },
                  title: Text("유전자변형생물체", style: context.textTheme.titleMedium),
                ),
                const EmptyBox(),
                Obx(() => FclTextField(
                      enabled: d75_1.value,
                      onSubmitted: (_) => vm.submit(),
                      hintText: "허가번호",
                      name: "d157",
                      textEditingController: vm.d157Controller,
                      label: "허가번호",
                    )),
                Builder(
                    builder: (context) => Obx(() => FclDateField(
                          enabled: d75_1.value,
                          name: "d158",
                          initialDate: vm.io.d158,
                          label: "최초허가일",
                        ))),
                FormBuilderCheckbox(
                  name: "d75_2",
                  initialValue: d75_2.value,
                  onChanged: (v) {
                    v?.let((v) => d75_2.value = v);
                  },
                  title: Text("고위험병원체", style: context.textTheme.titleMedium),
                ),
                const EmptyBox(),
                Obx(() => FclTextField(
                      enabled: d75_2.value,
                      onSubmitted: (_) => vm.submit(),
                      hintText: "허가번호",
                      name: "d281",
                      textEditingController: vm.d281Controller,
                      label: "허가번호",
                    )),
                Builder(
                    builder: (context) => Obx(() => FclDateField(
                          enabled: d75_2.value,
                          name: "d197",
                          initialDate: vm.io.d197,
                          label: "최초허가일",
                        )))
              ]),
          SizedBox(
            height: 40.h,
          ),
          TightGridView(
            crossAxisCount: 2,
            crossAxisSpacing: 40.w,
            mainAxisSpacing: 40.h,
            children: [
              FclTextField(
                onSubmitted: (_) => vm.submit(),
                hintText: "취급동물",
                name: "d282",
                initialValue: vm.io.d282,
                label: "취급동물",
              ),
              FclTextField(
                onSubmitted: (_) => vm.submit(),
                hintText: "취급병원체",
                name: "d283",
                initialValue: vm.io.d283,
                label: "취급병원체",
              ),
              FclTextField(
                onSubmitted: (_) => vm.submit(),
                hintText: "실험실 ∙ 전실 면적",
                name: "d284",
                initialValue: vm.io.d284,
                label: "실험실 ∙ 전실 면적",
              ),
              FclTextField(
                onSubmitted: (_) => vm.submit(),
                hintText: "지역",
                name: "d285",
                initialValue: vm.io.d285,
                label: "지역",
              ),
              FclDropdownField(
                  name: "d286",
                  initialValue: vm.io.d286,
                  label: "기관분류",
                  itemMap: const {
                    "공공기관": "공공기관",
                    "교육기관": "교육기관",
                    "민간기관": "민간기관",
                    "의료기관": "의료기관"
                  }),
            ],
          ),
          SizedBox(
            height: 20.h,
          ),
          FieldWithLabel(
              label: "변경신고 확인",
              child: FormBuilderTextField(
                name: "d196",
                maxLines: 3,
                initialValue: vm.io.d196,
                keyboardType: TextInputType.multiline,
                style: TextStyle(
                  fontSize: 28.sp,
                ),
                decoration:
                    const InputDecoration(constraints: BoxConstraints()),
              )),
          SizedBox(
            height: 47.h,
          ),
          const FclDivider.form(),
          SizedBox(
            height: 47.h,
          ),
          FclRelatedPersonTable(
            onSubmitted: (_) => vm.submit(),
            list: [
              FclRelatedPersonCol(
                  title: "생물안전관리책임자",
                  nameNm: "d159",
                  initialName: vm.io.d159,
                  cellPhoneNm: "d274",
                  initialCellPhone: vm.io.d274,
                  contactNm: "d165",
                  initialContact: vm.io.d165,
                  emailNm: "d271",
                  initialEmail: vm.io.d271,
                  signatureNm: "d162",
                  initialSignature: vm.io.d162,
                  hintText: "책임자"),
              FclRelatedPersonCol(
                  title: "생물안전관리자",
                  nameNm: "d160",
                  initialName: vm.io.d160,
                  cellPhoneNm: "d275",
                  initialCellPhone: vm.io.d275,
                  contactNm: "d166",
                  initialContact: vm.io.d166,
                  emailNm: "d272",
                  initialEmail: vm.io.d272,
                  signatureNm: "d163",
                  initialSignature: vm.io.d163,
                  hintText: "관리자"),
              FclRelatedPersonCol(
                  title: "고위험병원체의전담관리자",
                  nameNm: "d161",
                  initialName: vm.io.d161,
                  cellPhoneNm: "d276",
                  initialCellPhone: vm.io.d276,
                  contactNm: "d167",
                  initialContact: vm.io.d167,
                  emailNm: "d273",
                  initialEmail: vm.io.d273,
                  signatureNm: "d164",
                  initialSignature: vm.io.d164,
                  hintText: "전담관리자")
            ],
          ),
          SizedBox(
            height: 47.h,
          ),
          const Divider(),
          SizedBox(
            height: 47.h,
          ),
          Row(
            children: [
              Flexible(
                  child: FclDateField(
                name: "d168",
                initialDate: vm.io.d168,
                label: "점검일자",
              )),
              const Flexible(child: SizedBox.shrink())
            ].withSpaceBetween(width: 10.w),
          ),
          SizedBox(
            height: 40.h,
          ),
          const FclCheckerTable(),
        ],
      );
}
