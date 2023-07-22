import 'package:flutter/material.dart';
import 'package:flutter_form_builder/flutter_form_builder.dart';
import 'package:get/get.dart';
import 'package:sisolab_flutter_biosafety/app/global/models/related_person_col.dart';
import 'package:sisolab_flutter_biosafety/app/global/widgets/fields/fcl_checkbox_field.dart';
import 'package:sisolab_flutter_biosafety/app/global/widgets/fields/fcl_date_field.dart';
import 'package:sisolab_flutter_biosafety/app/global/widgets/fields/fcl_dropdown_field.dart';
import 'package:sisolab_flutter_biosafety/app/global/widgets/fields/fcl_text_field.dart';
import 'package:sisolab_flutter_biosafety/app/global/widgets/form_builder/form_builder_sign.dart';
import 'package:sisolab_flutter_biosafety/app/global/widgets/tight_grid_view.dart';
import 'package:sisolab_flutter_biosafety/app/modules/fcl_new_detail/controllers/fcl_new_detail_controller.dart';

import '../../../global/widgets/field_with_label.dart';

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
                    child: const Text("hi"))
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
            Builder(builder: (context) {
              final list = [
                FclRelatedPersonCol(
                    title: "생물안전관리책임자", name: "1", hintText: "책임자"),
                FclRelatedPersonCol(
                    title: "생물안전관리자", name: "2", hintText: "괸리자"),
                FclRelatedPersonCol(
                    title: "고위험병원체의전담관리자", name: "3", hintText: "전담관리자"),
              ];

              Widget _padding(Widget child) => Padding(
                    padding: const EdgeInsets.all(20),
                    child: child,
                  );

              return Table(
                columnWidths: {
                  0: const FlexColumnWidth(2),
                  ...list.asMap().map((key, value) =>
                      MapEntry(key + 1, const FlexColumnWidth(3)))
                },
                // border: TableBorder.all(),
                defaultVerticalAlignment: TableCellVerticalAlignment.middle,
                children: [
                  TableRow(children: [
                    const Text("구분"),
                    ...list.map((e) => Container(
                        alignment: Alignment.center, child: Text(e.title)))
                  ]),
                  TableRow(children: [
                    const Text("성명 / 서명"),
                    ...list.map((e) => Row(
                          children: [
                            Expanded(
                                child: FormBuilderTextField(
                              name: "${e.name}_name",
                              decoration:
                                  InputDecoration(hintText: "${e.hintText}이름"),
                            )),
                            FormBuilderSign(name: "${e.name}_sign")
                          ],
                        ))
                  ]),
                  TableRow(children: [
                    const Text("연락처"),
                    ...list.map((e) => FormBuilderTextField(
                          name: "${e.name}_contact",
                          decoration:
                              InputDecoration(hintText: "${e.hintText}연락처"),
                        ))
                  ]),
                  TableRow(children: [
                    const Text("이메일"),
                    ...list.map((e) => FormBuilderTextField(
                          name: "${e.name}_email",
                          decoration:
                              InputDecoration(hintText: "${e.hintText}이메일"),
                        ))
                  ]),
                  TableRow(children: [
                    const Text("핸드폰"),
                    ...list.map((e) => FormBuilderTextField(
                          name: "${e.name}_phone",
                          decoration:
                              InputDecoration(hintText: "${e.hintText}핸드폰"),
                        ))
                  ])
                ],
              );
            }),
            const Divider(),
            Row(
              children: [
                Flexible(
                  child: FclDateField(
                    name: FclNewDetailFields.dateOfFirstPermit.name,
                    label: "점검일자",
                  ),
                ),
                const Flexible(child: SizedBox.shrink())
              ],
            ),
            FieldWithLabel(
              label: "점검자 ( 소속기관 / 성명 / 서명 )",
              child: Obx(() => Column(
                  children: List.generate(
                      controller.checkerCount,
                      (index) => Row(
                            crossAxisAlignment: CrossAxisAlignment.end,
                            children: [
                              Flexible(
                                child: FclDateField(
                                  name:
                                      "${FclNewDetailFields.inspectionDate.name}_${index.toString()}",
                                ),
                              ),
                              Flexible(
                                child: Row(
                                  children: [
                                    Expanded(
                                        child: FormBuilderTextField(
                                      name:
                                          "${FclNewDetailFields.inspectorName.name}_${index.toString()}",
                                      decoration: const InputDecoration(
                                          hintText: "점검자성명"),
                                    )),
                                    FormBuilderSign(
                                        name:
                                            "${FclNewDetailFields.inspectorSignature.name}_${index.toString()}"),
                                  ],
                                ),
                              )
                            ],
                          )))),
            ),
            OutlinedButton(
                onPressed: () {
                  controller.addChecker();
                },
                child: const Text("점검자 추가"))
          ],
        ));
  }
}
