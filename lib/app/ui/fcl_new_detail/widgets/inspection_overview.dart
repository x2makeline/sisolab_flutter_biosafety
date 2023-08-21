import 'package:flutter/material.dart';
import 'package:flutter_form_builder/flutter_form_builder.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:sisolab_flutter_biosafety/app/data/models/bio_io.dart';
import 'package:sisolab_flutter_biosafety/app/global/models/related_person_col.dart';
import 'package:sisolab_flutter_biosafety/app/global/widgets/fcl/fcl_checker_table.dart';
import 'package:sisolab_flutter_biosafety/app/global/widgets/fcl/fcl_related_person_table.dart';
import 'package:sisolab_flutter_biosafety/app/global/widgets/fcl_divider.dart';
import 'package:sisolab_flutter_biosafety/app/global/widgets/fields/fcl_date_field.dart';
import 'package:sisolab_flutter_biosafety/app/global/widgets/fields/fcl_dropdown_field.dart';
import 'package:sisolab_flutter_biosafety/app/global/widgets/fields/fcl_text_field.dart';
import 'package:sisolab_flutter_biosafety/app/global/widgets/tight_grid_view.dart';
import 'package:sisolab_flutter_biosafety/app/ui/fcl_new_detail/controllers/fcl_new_detail_controller.dart';
import 'package:sisolab_flutter_biosafety/core/utils/extensions/list_space_between.dart';

import '../../../global/widgets/field_with_label.dart';

/// 점검개요
class InspectionOverview extends GetView<FclNewDetailController> {
  const InspectionOverview({super.key});

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
                hintText: "운영기관명",
                name: BioIoName.company.name,
                initialValue: controller.io.company,
                label: "운영기관명",
              ),
              FclTextField(
                hintText: "설치 ∙ 운영 장소",
                name: BioIoName.d184.name,
                initialValue: controller.io.d184,
                label: "설치 ∙ 운영 장소",
              ),
              FclTextField(
                hintText: "안전관리등급",
                name: BioIoName.d280.name,
                initialValue: controller.io.d280,
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
                    name: BioIoName.d68.name,
                    initialValue: controller.io.d68,
                    title: Text("일반", style: context.textTheme.titleMedium),
                  ),
                  FormBuilderCheckbox(
                    name: BioIoName.d69.name,
                    initialValue: controller.io.d69,
                    title: Text("대량배양", style: context.textTheme.titleMedium),
                  ),
                  FormBuilderCheckbox(
                    name: BioIoName.d70.name,
                    initialValue: controller.io.d70,
                    title: Text("동물", style: context.textTheme.titleMedium),
                  ),
                  FormBuilderCheckbox(
                    name: BioIoName.d71.name,
                    initialValue: controller.io.d71,
                    title: Text("식물", style: context.textTheme.titleMedium),
                  ),
                  FormBuilderCheckbox(
                    name: BioIoName.d72.name,
                    initialValue: controller.io.d72,
                    title: Text("곤충", style: context.textTheme.titleMedium),
                  ),
                  FormBuilderCheckbox(
                    name: BioIoName.d73.name,
                    initialValue: controller.io.d73,
                    title: Text("신규허가", style: context.textTheme.titleMedium),
                  ),
                  FormBuilderCheckbox(
                    name: BioIoName.d74.name,
                    initialValue: controller.io.d74,
                    title: Text("재확인", style: context.textTheme.titleMedium),
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
              Column(
                children: [
                  FormBuilderCheckbox(
                      initialValue: controller.io.d75,
                      name: BioIoName.d75.name,
                      title: Text("유전자변형생물체",
                          style: context.textTheme.titleMedium)),
                  FclTextField(
                    hintText: "허가번호",
                    name: BioIoName.d157.name,
                    initialValue: controller.io.d157,
                    label: "허가번호",
                  )
                ],
              ),
              const SizedBox.shrink(),
              Column(
                children: [
                  FormBuilderCheckbox(
                      name: BioIoName.d76.name,
                      initialValue: controller.io.d76,
                      title:
                          Text("고위험병원체", style: context.textTheme.titleMedium)),
                  FclTextField(
                    hintText: "허가번호",
                    name: BioIoName.d281.name,
                    initialValue: controller.io.d281,
                    label: "허가번호",
                  ),
                ],
              ),
              const SizedBox.shrink(),
              FclDateField(
                name: BioIoName.d158.name,
                initialDate: controller.io.d158,
                label: "최초허가일",
              ),
              FclTextField(
                hintText: "취급동물",
                name: BioIoName.d282.name,
                initialValue: controller.io.d282,
                label: "취급동물",
              ),
              FclTextField(
                hintText: "취급병원체",
                name: BioIoName.d283.name,
                initialValue: controller.io.d283,
                label: "취급병원체",
              ),
              FclTextField(
                hintText: "실험실 ∙ 전실 면적",
                name: BioIoName.d284.name,
                initialValue: controller.io.d284,
                label: "실험실 ∙ 전실 면적",
              ),
              FclTextField(
                hintText: "지역",
                name: BioIoName.d285.name,
                initialValue: controller.io.d285,
                label: "지역",
              ),
              FclDropdownField(
                  name: BioIoName.d286.name,
                  initialValue: controller.io.d286,
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
            list: [
              FclRelatedPersonCol(
                  title: "생물안전관리책임자",
                  nameNm: BioIoName.d159.name,
                  initialName: controller.io.d159,
                  cellPhoneNm: BioIoName.d274.name,
                  initialCellPhone: controller.io.d274,
                  contactNm: BioIoName.d165.name,
                  initialContact: controller.io.d165,
                  emailNm: BioIoName.d271.name,
                  initialEmail: controller.io.d271,
                  signatureNm: BioIoName.d162.name,
                  initialSignature: controller.io.d162,
                  hintText: "책임자"),
              FclRelatedPersonCol(
                  title: "생물안전관리자",
                  nameNm: BioIoName.d160.name,
                  initialName: controller.io.d160,
                  cellPhoneNm: BioIoName.d275.name,
                  initialCellPhone: controller.io.d275,
                  contactNm: BioIoName.d166.name,
                  initialContact: controller.io.d166,
                  emailNm: BioIoName.d272.name,
                  initialEmail: controller.io.d272,
                  signatureNm: BioIoName.d163.name,
                  initialSignature: controller.io.d163,
                  hintText: "관리자"),
              FclRelatedPersonCol(
                  title: "고위험병원체의전담관리자",
                  nameNm: BioIoName.d161.name,
                  initialName: controller.io.d161,
                  cellPhoneNm: BioIoName.d276.name,
                  initialCellPhone: controller.io.d276,
                  contactNm: BioIoName.d167.name,
                  initialContact: controller.io.d167,
                  emailNm: BioIoName.d273.name,
                  initialEmail: controller.io.d273,
                  signatureNm: BioIoName.d164.name,
                  initialSignature: controller.io.d164,
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
                name: BioIoName.d168.name,
                label: "점검일자",
              )),
              const Flexible(child: SizedBox.shrink())
            ].withSpaceBetween(width: 10.w),
          ),

          SizedBox(
            height: 40.h,
          ),
          const FclCheckerTable(),

          // SizedBox(height: 20.h),
          // SizedBox(
          //   height: 90.h,
          //   width: double.infinity,
          //   child: OutlinedButton(
          //       onPressed: () {
          //         controller.addChecker();
          //       },
          //       child: Row(
          //         mainAxisAlignment: MainAxisAlignment.center,
          //         children: [
          //           Image.asset(
          //             "assets/images/img_plus.png",
          //             width: 22.sp,
          //             height: 22.sp,
          //           ),
          //           SizedBox(
          //             width: 20.w,
          //           ),
          //           Text(
          //             "점검자 추가",
          //             style: buttonTextStyle,
          //           ),
          //         ],
          //       )),
          // )
        ],
      );
}
