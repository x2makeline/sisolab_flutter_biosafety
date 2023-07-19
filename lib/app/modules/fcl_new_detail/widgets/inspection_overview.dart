import 'package:flutter/material.dart';
import 'package:flutter_form_builder/flutter_form_builder.dart';
import 'package:get/get.dart';
import 'package:sisolab_flutter_biosafety/app/global/widgets/fields/fcl_checkbox_field.dart';
import 'package:sisolab_flutter_biosafety/app/global/widgets/fields/fcl_date_field.dart';
import 'package:sisolab_flutter_biosafety/app/global/widgets/fields/fcl_dropdown_field.dart';
import 'package:sisolab_flutter_biosafety/app/global/widgets/fields/fcl_text_field.dart';
import 'package:sisolab_flutter_biosafety/app/global/widgets/tight_grid_view.dart';
import 'package:sisolab_flutter_biosafety/app/modules/fcl_new_detail/controllers/fcl_new_detail_controller.dart';

import '../../../global/widgets/field_with_label.dart';
import '../../../global/widgets/form_builder/form_builder_sign.dart';

class InspectionOverview extends GetView<FclNewDetailController> {
  InspectionOverview({super.key});

  final _formKey = GlobalKey<FormBuilderState>();

  test() {
    _formKey.currentState!.save();
    print(_formKey.currentState!.value);
  }

  @override
  Widget build(BuildContext context) {
    return FormBuilder(
        key: _formKey,
        child: Column(
          children: [
            TightGridView(
              crossAxisCount: 2,
              crossAxisSpacing: 20,
              mainAxisSpacing: 20,
              children: [
                FclTextField(
                  hintText: "운영기관명",
                  name: FclNewDetailFields.operatingInstitution.name,
                  label: "운영기관명",
                ),
                FclTextField(
                  hintText: "설치운영 장소",
                  name: FclNewDetailFields.placeOfInstallationAndOperation.name,
                  label: "설치 ∙ 운영 장소",
                ),
                FclTextField(
                  hintText: "안전관리등급",
                  name: FclNewDetailFields.safetyManagementLevel.name,
                  label: "안전관리등급",
                ),
                OutlinedButton(
                    onPressed: () {
                      test();
                    },
                    child: Text("hi"))
              ],
            ),
            const Divider(),
            FieldWithLabel(
              label: "시설내역",
              child: TightGridView(
                crossAxisCount: 4,
                crossAxisSpacing: 20,
                mainAxisSpacing: 20,
                children: [
                  FclCheckboxField(
                      label: "일반",
                      name: FclNewDetailFields.generalOfFacilityDetails.name),
                  FclCheckboxField(
                      label: "대량배양",
                      name:
                          FclNewDetailFields.massCultureOfFacilityDetails.name),
                  FclCheckboxField(
                      label: "동물",
                      name: FclNewDetailFields.animalOfFacilityDetails.name),
                  FclCheckboxField(
                      label: "식물",
                      name: FclNewDetailFields.plantOfFacilityDetails.name),
                  FclCheckboxField(
                      label: "곤충",
                      name: FclNewDetailFields.bugOfFacilityDetails.name),
                  FclCheckboxField(
                      label: "신규허가",
                      name: FclNewDetailFields
                          .newPermissionOfFacilityDetails.name),
                  FclCheckboxField(
                      label: "재확인",
                      name: FclNewDetailFields.reconfirmOfFacilityDetails.name)
                ],
              ),
            ),
            const SizedBox(height: 20),
            TightGridView(
              crossAxisCount: 2,
              crossAxisSpacing: 20,
              mainAxisSpacing: 20,
              children: [
                FclCheckboxField(
                    label: "유전자변형생물체",
                    name: FclNewDetailFields
                        .geneticallyModifiedOrganismsOfFacilityDetails.name),
                FclCheckboxField(
                    label: "고위험병원체",
                    name: FclNewDetailFields
                        .highRiskPathogensOfFacilityDetails.name),
                FclTextField(
                  hintText: "허가번호",
                  name: FclNewDetailFields
                      .geneticallyModifiedOrganismsLicenseNumber.name,
                  label: "허가번호",
                ),
                FclTextField(
                  hintText: "허가번호",
                  name: FclNewDetailFields.highRiskPathogensLicenceNumber.name,
                  label: "허가번호",
                ),
                FclDateField(
                  name: FclNewDetailFields.dateOfFirstPermit.name,
                  label: "최초허가일",
                ),
                FclTextField(
                  hintText: "취급동물",
                  name: FclNewDetailFields.handlingAnimals.name,
                  label: "취급동물",
                ),
                FclTextField(
                  hintText: "취급병원체",
                  name: FclNewDetailFields.handlingPathogens.name,
                  label: "취급병원체",
                ),
                FclTextField(
                  hintText: "실험실 ∙ 전실 면적",
                  name: FclNewDetailFields.laboratoryAndAnteroomArea.name,
                  label: "실험실 ∙ 전실 면적",
                ),
                FclTextField(
                  hintText: "지역",
                  name: FclNewDetailFields.area.name,
                  label: "지역",
                ),
                FclDropdownField(
                    name: FclNewDetailFields.organClassification.name,
                    label: "기관분류",
                    itemMap: const {
                      "public": "공공기관",
                      "education": "교육기관",
                      "private": "민간기관",
                      "medical": "의료기관"
                    })
              ],
            ),
            const Divider(),
            FormBuilderSign(name: "test")

            // FclRelatedPersonTable(list: [
            //   FclRelatedPersonCol(
            //       title: "생물안전관리책임자",
            //       personCategory: FclRelatedPersonCategory.personInCharge,
            //       rx: controller.biosafetyOfficer,
            //       flexWidth: 4),
            //   FclRelatedPersonCol(
            //       title: "생물안전관리자",
            //       personCategory: FclRelatedPersonCategory.administrator,
            //       rx: controller.biosafetyManager,
            //       flexWidth: 4),
            //   FclRelatedPersonCol(
            //       title: "고위험병원체의전담관리자",
            //       personCategory: FclRelatedPersonCategory.dedicatedManager,
            //       rx: controller.dedicatedManagerForHighRiskPathogens,
            //       flexWidth: 4)
            // ], titleColFlexWidth: 2),
            // const Divider(),
            // TightGridView(
            //   crossAxisCount: 2,
            //   crossAxisSpacing: 20,
            //   mainAxisSpacing: 20,
            //   children: [
            //     FieldWithLabel(
            //       label: "점검일자",
            //       child: FclDateField(
            //         rxDateTime: controller.inspectionDate,
            //       ),
            //     ),
            //     const SizedBox.shrink(),
            //   ],
            // ),
            // FieldWithLabel(
            //   label: "점검자 (소속기관 / 성명 / 서명)",
            //   child: Obx(() =>
            //       Column(
            //         children: [
            //           ...controller.checkers
            //               .asMap()
            //               .entries
            //               .map((entry) =>
            //               Row(
            //                 children: [
            //                   Flexible(
            //                       child: FclTextField.primary(
            //                           value: entry.value.organ,
            //                           onChange: (v) {
            //                             // controller.checkers.
            //                             controller.checkers.replaceRange(
            //                                 entry.key, entry.key, [
            //                               controller.checkers
            //                                   .elementAt(entry.key)
            //                                   .merge(organ: v)
            //                             ]);
            //
            //                             // controller.checkers.refresh();
            //                           })),
            //
            //                   // Flexible(
            //                   //     child: FclSignField(
            //                   //       // rx: controller.checkers.elementAt(index),
            //                   //       nameHintText: "점검자성명",
            //                   //       signatureHintText: "[서명]",
            //                   //     ))
            //                 ].withSpaceBetween(width: 20),
            //               )),
            //           SizedBox(
            //             width: double.infinity,
            //             child: OutlinedButton(
            //                 onPressed: () {
            //                   controller.addChecker();
            //                 },
            //                 child: const Row(
            //                   mainAxisAlignment: MainAxisAlignment.center,
            //                   children: [Icon(Icons.plus_one), Text("점검자 추가")],
            //                 )),
            //           )
            //         ].toList(),
            //       )),
            // )
          ],
        ));
  }
}
