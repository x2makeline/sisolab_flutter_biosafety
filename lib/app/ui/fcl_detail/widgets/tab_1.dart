import 'package:dartlin/control_flow.dart';
import 'package:flutter/material.dart';
import 'package:flutter_form_builder/flutter_form_builder.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:sisolab_flutter_biosafety/app/global/models/related_person_col.dart';
import 'package:sisolab_flutter_biosafety/app/global/widgets/empty_box.dart';
import 'package:sisolab_flutter_biosafety/app/global/widgets/fcl_checker_table.dart';
import 'package:sisolab_flutter_biosafety/app/global/widgets/fcl_date_field.dart';
import 'package:sisolab_flutter_biosafety/app/global/widgets/fcl_divider.dart';
import 'package:sisolab_flutter_biosafety/app/global/widgets/fcl_dropdown_field.dart';
import 'package:sisolab_flutter_biosafety/app/global/widgets/fcl_related_person_table.dart';
import 'package:sisolab_flutter_biosafety/app/global/widgets/fcl_text_field.dart';
import 'package:sisolab_flutter_biosafety/app/global/widgets/tight_grid_view.dart';
import 'package:sisolab_flutter_biosafety/app/ui/fcl_detail/vms/fcl_detail_vm.dart';
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

    print(vm.io.d75);
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
              FclTextField(
                onSubmitted: (_) => vm.submit(),
                hintText: "운영기관명",
                name: "company",
                initialValue: vm.io.company,
                label: "운영기관명",
              ),
              FclTextField(
                onSubmitted: (_) => vm.submit(),
                hintText: "설치 ∙ 운영 장소",
                name: "d184",
                initialValue: vm.io.d184,
                label: "설치 ∙ 운영 장소",
              ),
              FclTextField(
                onSubmitted: (_) => vm.submit(),
                hintText: "안전관리등급",
                name: "d280",
                initialValue: vm.io.d280,
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
                    name: "d68",
                    initialValue: vm.io.d68 == "Y",
                    title: Text("일반", style: context.textTheme.titleMedium),
                  ),
                  FormBuilderCheckbox(
                    name: "d69",
                    initialValue: vm.io.d69 == "Y",
                    title: Text("대량배양", style: context.textTheme.titleMedium),
                  ),
                  FormBuilderCheckbox(
                    name: "d70",
                    initialValue: vm.io.d70 == "Y",
                    title: Text("동물", style: context.textTheme.titleMedium),
                  ),
                  FormBuilderCheckbox(
                    name: "d71",
                    initialValue: vm.io.d71 == "Y",
                    title: Text("식물", style: context.textTheme.titleMedium),
                  ),
                  FormBuilderCheckbox(
                    name: "d72",
                    initialValue: vm.io.d72 == "Y",
                    title: Text("곤충", style: context.textTheme.titleMedium),
                  ),
                ],
              ),
            ),
          ),
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
                      initialValue: vm.io.d157,
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
                      initialValue: vm.io.d281,
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
