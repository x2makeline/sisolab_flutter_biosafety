import 'package:flutter/material.dart';
import 'package:flutter_form_builder/flutter_form_builder.dart';
import 'package:sisolab_flutter_biosafety/app/global/widgets/field_with_label.dart';
import 'package:sisolab_flutter_biosafety/app/modules/fcl_new_detail/fcl_new_detail_fields.dart';

/// 취급생물체정보
class HandlingOrganismInformation extends StatelessWidget {
  const HandlingOrganismInformation({super.key});

  @override
  Widget build(BuildContext context) {
    Widget _wg(String label, List<FclNewDetailFields> list) => FieldWithLabel(
        label: label,
        child: Row(
            children: list
                .map((e) => Flexible(
                      child: FormBuilderTextField(
                        name: e.name,
                      ),
                    ))
                .toList()));

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text("취급생물체정보", style: Theme.of(context).textTheme.headlineSmall),
        const Divider(),
        _wg("유전자변형생물체 명칭", [
          FclNewDetailFields.geneticallyModifiedOrganismName1,
          FclNewDetailFields.geneticallyModifiedOrganismName2,
          FclNewDetailFields.geneticallyModifiedOrganismName3
        ]),
        _wg("고위험병원체 명칭", [
          FclNewDetailFields.nameOfHighRiskPathogen1,
          FclNewDetailFields.nameOfHighRiskPathogen2,
          FclNewDetailFields.nameOfHighRiskPathogen3
        ]),
        _wg("주요실험방법", [
          FclNewDetailFields.mainExperimentalMethods1,
          FclNewDetailFields.mainExperimentalMethods2,
          FclNewDetailFields.mainExperimentalMethods3
        ]),
      ],
    );
  }
}
