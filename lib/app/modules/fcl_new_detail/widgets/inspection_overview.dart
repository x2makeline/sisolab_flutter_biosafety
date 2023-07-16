import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:sisolab_flutter_biosafety/app/data/models/institution.dart';
import 'package:sisolab_flutter_biosafety/app/global/models/fcl_related_person_category.dart';
import 'package:sisolab_flutter_biosafety/app/global/widgets/fcl_related_person_table.dart';
import 'package:sisolab_flutter_biosafety/app/global/widgets/fields/fcl_date_field.dart';
import 'package:sisolab_flutter_biosafety/app/global/widgets/fields/fcl_selecte_field.dart';
import 'package:sisolab_flutter_biosafety/app/global/widgets/tight_grid_view.dart';
import 'package:sisolab_flutter_biosafety/app/modules/fcl_new_detail/controllers/fcl_new_detail_controller.dart';

import '../../../global/widgets/field_with_label.dart';
import '../../../global/widgets/fields/fcl_check_field.dart';
import '../../../global/widgets/fields/fcl_text_field.dart';

class InspectionOverview extends GetView<FclNewDetailController> {
  const InspectionOverview({super.key});

  _labelWithCheckbox(String label, RxBool rxBool) {
    return FieldWithLabel(
        axis: Axis.vertical,
        reverse: true,
        label: label,
        child: FclCheckField(
          rxBool: rxBool,
        ));
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        TightGridView(
          crossAxisCount: 2,
          crossAxisSpacing: 20,
          mainAxisSpacing: 20,
          children: [
            FieldWithLabel(
                label: "운영기관",
                child: FclTextField.rx(
                  hintText: "운영기관명",
                  rxn: controller.operatingInstitution,
                )),
            FieldWithLabel(
              label: "설치 ∙ 운영 장소",
              child: FclTextField.rx(
                  hintText: "설치운영 장소",
                  rxn: controller.placeOfInstallationAndOperation),
            ),
            FieldWithLabel(
              label: "안전관리등급",
              child: FclTextField.rx(
                  hintText: "안전관리등급", rxn: controller.safetyManagementLevel),
            ),
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
              _labelWithCheckbox("일반", controller.generalOfFacilityDetails),
              _labelWithCheckbox(
                  "대량배양", controller.massCultureOfFacilityDetails),
              _labelWithCheckbox("동물", controller.animalOfFacilityDetails),
              _labelWithCheckbox("식물", controller.plantOfFacilityDetails),
              _labelWithCheckbox("곤충", controller.bugOfFacilityDetails),
              _labelWithCheckbox(
                  "신규허가", controller.newPermissionOfFacilityDetails),
              _labelWithCheckbox("재확인", controller.reconfirmOfFacilityDetails),
            ],
          ),
        ),
        const SizedBox(height: 20),
        TightGridView(
          crossAxisCount: 2,
          crossAxisSpacing: 20,
          mainAxisSpacing: 20,
          children: [
            _labelWithCheckbox("유전자변형생물체",
                controller.geneticallyModifiedOrganismsOfFacilityDetails),
            _labelWithCheckbox(
                "고위험병원체", controller.highRiskPathogensOfFacilityDetails),
            FieldWithLabel(
              label: "허가번호",
              child: FclTextField.rx(
                  hintText: "허가번호",
                  rxn: controller.geneticallyModifiedOrganismsLicenseNumber),
            ),
            FieldWithLabel(
              label: "허가번호",
              child: FclTextField.rx(
                  hintText: "허가번호",
                  rxn: controller.highRiskPathogensLicenceNumber),
            ),
            FieldWithLabel(
              label: "최초허가일",
              child: FclDateField(
                rxDateTime: controller.dateOfFirstPermit,
              ),
            ),
            FieldWithLabel(
              label: "취급동물",
              child: FclTextField.rx(
                rxn: controller.handlingAnimals,
                hintText: "취급동물",
              ),
            ),
            FieldWithLabel(
              label: "취급병원체",
              child: FclTextField.rx(
                rxn: controller.handlingPathogens,
                hintText: "취급병원체",
              ),
            ),
            FieldWithLabel(
              label: "지역",
              child: FclTextField.rx(
                rxn: controller.area,
                hintText: "지역",
              ),
            ),
            FieldWithLabel(
              label: "실험실 ∙ 전실 면적",
              child: FclTextField.rx(
                rxn: controller.laboratoryAndAnteroomArea,
                hintText: "실험실 ∙ 전실 면적",
              ),
            ),
            FieldWithLabel(
              label: "기관분류",
              child: FclSelectField(
                map: Institution.values
                    .asMap()
                    .map((key, value) => MapEntry(value.name, value.name)),
                rx: controller.organClassification,
              ),
            )
          ],
        ),
        const Divider(),
        FclRelatedPersonTable(list: [
          FclRelatedPersonCol(
              title: "생물안전관리책임자",
              personCategory: FclRelatedPersonCategory.personInCharge,
              rx: controller.biosafetyOfficer,
              flexWidth: 4),
          FclRelatedPersonCol(
              title: "생물안전관리자",
              personCategory: FclRelatedPersonCategory.administrator,
              rx: controller.biosafetyManager,
              flexWidth: 4),
          FclRelatedPersonCol(
              title: "고위험병원체의전담관리자",
              personCategory: FclRelatedPersonCategory.dedicatedManager,
              rx: controller.dedicatedManagerForHighRiskPathogens,
              flexWidth: 4)
        ], titleColFlexWidth: 2),
        const Divider(),
        TightGridView(
          crossAxisCount: 2,
          crossAxisSpacing: 20,
          mainAxisSpacing: 20,
          children: [
            FieldWithLabel(
              label: "점검일자",
              child: FclDateField(
                rxDateTime: controller.inspectionDate,
              ),
            ),
            const SizedBox.shrink(),
          ],
        ),
        FieldWithLabel(
          label: "점검자 (소속기관 / 성명 / 서명)",
          child: Obx(() {
            return Column(
              children: [
                ...controller.checkers.asMap().entries.map((entry) => Row(
                      children: [
                        Flexible(
                            child: FclTextField.primary(
                                value: entry.value.organ,
                                onChange: (v) {
                                  // controller.checkers.
                                  controller.checkers.replaceRange(
                                      entry.key, entry.key, [
                                    controller.checkers
                                        .elementAt(entry.key)
                                        .merge(organ: v)
                                  ]);

                                  // controller.checkers.refresh();
                                }))
                      ],
                    )),
                OutlinedButton(
                    onPressed: () {
                      controller.addChecker();
                    },
                    child: Text("점검자 추가"))
              ].toList(),
            );
          }),
        )
      ],
    );
  }
}
