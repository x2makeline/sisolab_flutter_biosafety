import 'package:dartlin/control_flow.dart';
import 'package:flutter/material.dart';
import 'package:flutter_form_builder/flutter_form_builder.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:sisolab_flutter_biosafety/app/data/models/gbn.dart';
import 'package:sisolab_flutter_biosafety/app/global/decorations/input_decoration.dart';
import 'package:sisolab_flutter_biosafety/app/global/models/related_person_col.dart';
import 'package:sisolab_flutter_biosafety/app/global/styles/text_styles.dart';
import 'package:sisolab_flutter_biosafety/app/global/widgets/empty_box.dart';
import 'package:sisolab_flutter_biosafety/app/global/widgets/fcl_checker_table.dart';
import 'package:sisolab_flutter_biosafety/app/global/widgets/fcl_dropdown_field.dart';
import 'package:sisolab_flutter_biosafety/app/global/widgets/fcl_radio_group.dart';
import 'package:sisolab_flutter_biosafety/app/global/widgets/fcl_related_person_table.dart';
import 'package:sisolab_flutter_biosafety/app/global/widgets/fcl_divider.dart';
import 'package:sisolab_flutter_biosafety/app/global/widgets/fcl_date_field.dart';
import 'package:sisolab_flutter_biosafety/app/global/widgets/fcl_text_field.dart';
import 'package:sisolab_flutter_biosafety/app/global/widgets/tight_grid_view.dart';
import 'package:sisolab_flutter_biosafety/app/ui/fcl_detail/vms/fcl_detail_vm.dart';
import 'package:sisolab_flutter_biosafety/core/utils/extensions/list_space_between.dart';
import 'package:sisolab_flutter_biosafety/core/utils/mc_logger.dart';

import '../../../global/widgets/field_with_label.dart';

/// 점검개요
class Tab1 extends StatelessWidget {
  const Tab1({super.key});

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
                childAspectRatio: 200 / 56,
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
          FclRadioGroup(
              labelWithKey: false,
              orientation: OptionsOrientation.wrap,
              map: const {"1": "신규허가", "2": "재확인"},
              initialValue: vm.io.d73,
              name: "d73"),
          FclRadioGroup(
              labelWithKey: false,
              orientation: OptionsOrientation.wrap,
              map: const {"1": "유전자변형생물체", "2": "고위험병원체"},
              initialValue: vm.io.d75,
              name: "d75"),
          TightGridView(
            crossAxisCount: 2,
            crossAxisSpacing: 40.w,
            mainAxisSpacing: 40.h,
            children: [
              Column(
                children: [
                  FclTextField(
                    onSubmitted: (_) => vm.submit(),
                    hintText: "허가번호",
                    name: "d157",
                    initialValue: vm.io.d157,
                    label: "허가번호",
                  )
                ],
              ),
              const SizedBox.shrink(),
              Builder(
                builder: (context) {
                  return FclDateField(
                    name: "d158",
                    initialDate: vm.io.d158,
                    label: "최초허가일",
                  );
                }
              ),
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
                  })
            ],
          ),
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
          iff<Widget>(
              vm.gbn == Gbn.fd1,
              () => Column(
                    children: [
                      SizedBox(
                        height: 40.h,
                      ),
                      const FclDivider.form(),
                      SizedBox(
                        height: 40.h,
                      ),
                      TightGridView(
                        crossAxisCount: 2,
                        crossAxisSpacing: 40.w,
                        mainAxisSpacing: 40.h,
                        children: [
                          FieldWithLabel(
                              label: "점수합계",
                              child: TextField(
                                enabled: false,
                                style: buttonTextStyle,
                                decoration: textFieldDecoration.copyWith(
                                    disabledBorder: textFieldDecoration.border,
                                    filled: true,
                                    fillColor: const Color(0xfff2f2f2),
                                    hintText: "점수합계"),
                              )),
                          const EmptyBox(),
                        ],
                      ),
                      SizedBox(
                        height: 40.h,
                      ),
                      FieldWithLabel(
                          label: "총평",
                          child: FormBuilderTextField(
                            name: "d156",
                            maxLines: 3,
                          ))
                    ],
                  )).orElse(() => const EmptyBox())
        ],
      );
}
