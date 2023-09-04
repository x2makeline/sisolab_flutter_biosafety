import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:intl/intl.dart';
import 'package:sisolab_flutter_biosafety/app/global/widgets/fcl/fcl_form_builder_date_time_picker.dart';
import 'package:sisolab_flutter_biosafety/core/extensions/dateformat.dart';

class FormBuilderBetweenDate extends StatefulWidget {
  const FormBuilderBetweenDate(
      {super.key, required this.startName, required this.endName});

  final String startName;
  final String endName;

  @override
  State<FormBuilderBetweenDate> createState() => _FormBuilderBetweenDateState();
}

class _FormBuilderBetweenDateState extends State<FormBuilderBetweenDate> {
  final startV = Rxn<DateTime>();
  final endV = Rxn<DateTime>();
  final _controller1 = TextEditingController();
  final _controller2 = TextEditingController();
  static final _format = DateFormat("y.MM.dd");

  static final _initialFirstDate =
      DateTime.now().subtract(const Duration(days: 999));
  static final _initialLastDate = DateTime.now().add(const Duration(days: 999));

  @override
  void dispose() {
    super.dispose();
    _controller1.dispose();
    _controller2.dispose();
  }

  @override
  void initState() {
    super.initState();

    _controller1.addListener(() {
      if(_controller1.value.isBlank != null  && !_controller1.text.isBlank!) {
        startV.value = _format.parse(_controller1.text);
      } else {
        startV.value = null;
      }
    });

    _controller2.addListener(() {
      if(_controller2.value.isBlank != null  && !_controller2.text.isBlank!) {
        endV.value = _format.parse(_controller2.text);
      } else {
        endV.value = null;
      }

    });
  }

  @override
  Widget build(BuildContext context) => Row(
        children: [
          Flexible(
              child: Obx(() => FclFormBuilderDateTimePicker(
                    controller: _controller1,
                    name: widget.startName,
                // initialDate: initialDate?.let((it) => _format.parse(it)),
                    initialDate: startV.value?.format1,
                    firstDate: _initialFirstDate,
                    lastDate: endV.value ?? _initialLastDate,
                  ))),
          const Text(" ~ "),
          Flexible(
            child: Obx(() => FclFormBuilderDateTimePicker(
                  controller: _controller2,
                  name: widget.startName,
                  initialDate: endV.value?.format1,
                  firstDate: startV.value ?? _initialFirstDate,
                  lastDate: _initialLastDate,
                )),
          )
        ],
      );
}
