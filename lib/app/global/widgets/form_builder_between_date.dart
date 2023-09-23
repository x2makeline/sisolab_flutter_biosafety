import 'package:flutter/material.dart';
import 'package:sisolab_flutter_biosafety/app/global/widgets/fcl_form_builder_date_time_picker.dart';

class FormBuilderBetweenDate extends StatelessWidget {
  const FormBuilderBetweenDate(
      {super.key, required this.startName, required this.endName});

  final String startName;
  final String endName;

  @override
  Widget build(BuildContext context) => Row(
        children: [
          Flexible(
              child: FclFormBuilderDateTimePicker(
            name: startName,
          )),
          const Text(" ~ "),
          Flexible(
            child: FclFormBuilderDateTimePicker(
              name: endName,
            ),
          )
        ],
      );
}
