import 'package:flutter/material.dart';
import 'package:flutter_form_builder/flutter_form_builder.dart';
import 'package:get/get.dart';
import 'package:sisolab_flutter_biosafety/app/global/models/related_person_col.dart';
import 'package:sisolab_flutter_biosafety/app/global/widgets/fcl_divider.dart';
import 'package:sisolab_flutter_biosafety/app/global/widgets/fields/fcl_checkbox_field.dart';
import 'package:sisolab_flutter_biosafety/app/global/widgets/fields/fcl_date_field.dart';
import 'package:sisolab_flutter_biosafety/app/global/widgets/fields/fcl_dropdown_field.dart';
import 'package:sisolab_flutter_biosafety/app/global/widgets/fields/fcl_text_field.dart';
import 'package:sisolab_flutter_biosafety/app/global/widgets/form_builder/form_builder_sign.dart';
import 'package:sisolab_flutter_biosafety/app/global/widgets/tight_grid_view.dart';
import 'package:sisolab_flutter_biosafety/app/ui/fcl_new_detail/controllers/fcl_new_detail_controller.dart';
import 'package:sisolab_flutter_biosafety/app/ui/fcl_new_detail/fcl_new_detail_fields.dart';
import 'package:sisolab_flutter_biosafety/core/utils/extensions/double.dart';

import '../../../global/widgets/field_with_label.dart';

/// 점검개요
class InspectionOverview extends GetView<FclNewDetailController> {
  const InspectionOverview({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text("점검개요", style: Theme.of(context).textTheme.headlineSmall),
        SizedBox(
          height: 22.sz,
        ),
        const FclDivider.black(),
        SizedBox(
          height: 47.sz,
        ),
        TightGridView(
          crossAxisCount: 2,
          crossAxisSpacing: 40.sz,
          mainAxisSpacing: 40.sz,
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
          ],
        ),
        SizedBox(
          height: 47.sz,
        ),
        const FclDivider.form(),
        SizedBox(
          height: 47.sz,
        ),
        FieldWithLabel(
          label: "시설내역",
          // labelPadding: 44.sz,
          child: DefaultTextStyle(
            style: TextStyle(color: const Color(0xff101010), fontSize: 28.sz),
            child: GridView.extent(
              shrinkWrap: true,
              primary: false,
              maxCrossAxisExtent: 400.sz,
              childAspectRatio: 200 / 56,
              mainAxisSpacing: 80.sz,
              addAutomaticKeepAlives: false,
              children: [
                FormBuilderCheckbox(
                  name: FclNewDetailFields.generalOfFacilityDetails.name,
                  title: const Text("일반"),
                ),
                FormBuilderCheckbox(
                  name: FclNewDetailFields.massCultureOfFacilityDetails.name,
                  title: const Text("대량배양"),
                ),
                FormBuilderCheckbox(
                  name: FclNewDetailFields.animalOfFacilityDetails.name,
                  title: const Text("동물"),
                ),
                FormBuilderCheckbox(
                  name: FclNewDetailFields.plantOfFacilityDetails.name,
                  title: const Text("식물"),
                ),
                FormBuilderCheckbox(
                  name: FclNewDetailFields.bugOfFacilityDetails.name,
                  title: const Text("곤충"),
                ),
                FormBuilderCheckbox(
                  name: FclNewDetailFields.newPermissionOfFacilityDetails.name,
                  title: const Text("신규허가"),
                ),
                FormBuilderCheckbox(
                  name: FclNewDetailFields.reconfirmOfFacilityDetails.name,
                  title: const Text("재확인"),
                ),
              ],
            ),
          ),
        ),
        SizedBox(height: 80.sz),
        TightGridView(
          crossAxisCount: 2,
          crossAxisSpacing: 40.sz,
          mainAxisSpacing: 40.sz,
          children: [
            Column(
              children: [
                FormBuilderCheckbox(
                    name: FclNewDetailFields
                        .geneticallyModifiedOrganismsOfFacilityDetails.name,
                    title: Text("유전자변형생물체")),
                FclTextField(
                  hintText: "허가번호",
                  name: FclNewDetailFields
                      .geneticallyModifiedOrganismsLicenseNumber.name,
                  label: "허가번호",
                )
              ],
            ),
            const SizedBox.shrink(),
            Column(
              children: [
                FormBuilderCheckbox(

                    name: FclNewDetailFields
                        .highRiskPathogensOfFacilityDetails.name,
                    title: Text("고위험병원체")),
                FclTextField(
                  hintText: "허가번호",
                  name: FclNewDetailFields.highRiskPathogensLicenceNumber.name,
                  label: "허가번호",
                ),
              ],
            ),
            const SizedBox.shrink(),
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
            FclRelatedPersonCol(title: "생물안전관리책임자", name: "1", hintText: "책임자"),
            FclRelatedPersonCol(title: "생물안전관리자", name: "2", hintText: "괸리자"),
            FclRelatedPersonCol(
                title: "고위험병원체의전담관리자", name: "3", hintText: "전담관리자"),
          ];

          return Table(
            columnWidths: {
              0: const FlexColumnWidth(2),
              ...list.asMap().map(
                  (key, value) => MapEntry(key + 1, const FlexColumnWidth(3)))
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
                      decoration: InputDecoration(hintText: "${e.hintText}연락처"),
                    ))
              ]),
              TableRow(children: [
                const Text("이메일"),
                ...list.map((e) => FormBuilderTextField(
                      name: "${e.name}_email",
                      decoration: InputDecoration(hintText: "${e.hintText}이메일"),
                    ))
              ]),
              TableRow(children: [
                const Text("핸드폰"),
                ...list.map((e) => FormBuilderTextField(
                      name: "${e.name}_phone",
                      decoration: InputDecoration(hintText: "${e.hintText}핸드폰"),
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
                name: FclNewDetailFields.inspectionDate.name,
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
                                  decoration:
                                      const InputDecoration(hintText: "점검자성명"),
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
        const SizedBox(height: 20),
        SizedBox(
          height: 50,
          width: double.infinity,
          child: OutlinedButton(
              onPressed: () {
                controller.addChecker();
              },
              child: const Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Icon(Icons.plus_one_sharp),
                  Text(
                    "점검자 추가",
                  ),
                ],
              )),
        )
      ],
    );
  }
}
