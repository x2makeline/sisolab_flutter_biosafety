import 'package:flutter/material.dart';
import 'package:flutter_form_builder/flutter_form_builder.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:intl/intl.dart';
import 'package:sisolab_flutter_biosafety/app/global/decorations/input_decoration.dart';
import 'package:sisolab_flutter_biosafety/app/global/widgets/fcl/fcl_form_builder_date_time_picker.dart';

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
  final _controller1 = TextEditingController();
  final _controller2 = TextEditingController();
  static final _format = DateFormat("y.MM.dd");
  final _key1 = GlobalKey();
  final _key2 = GlobalKey();

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
      if (_controller1.value.text.isNotEmpty &&
          _controller2.value.text.isNotEmpty) {
        final date1 = _format.parse(_controller1.value.text);
        final date2 = _format.parse(_controller2.value.text);

        if (date1.compareTo(date2) > -1) {
          _controller1.value = _controller2.value;
          (_key1.currentState as FormBuilderFieldState<
                  FormBuilderField<DateTime>, DateTime>)
              .setValue(date2);
        }
      }
    });

    _controller2.addListener(() {
      if (_controller1.value.text.isNotEmpty &&
          _controller2.value.text.isNotEmpty) {
        final date1 = _format.parse(_controller1.value.text);
        final date2 = _format.parse(_controller2.value.text);

        if (date1.compareTo(date2) > -1) {
          _controller2.value = _controller1.value;
          (_key2.currentState as FormBuilderFieldState<
                  FormBuilderField<DateTime>, DateTime>)
              .setValue(date1);
        }
      }
    });
  }

  @override
  Widget build(BuildContext context) => Row(
        children: [
          Flexible(
              child: FclFormBuilderDateTimePicker(
            key: _key1,
            controller: _controller1,
            name: widget.startName,
          )),
          const Text(" ~ "),
          Flexible(
            child: Obx(() => FclFormBuilderDateTimePicker(
                  key: _key2,
                  controller: _controller2,
                  name: widget.startName,
                  initialDate: startV.value ?? DateTime.now(),
                  firstDate: startV.value ?? _initialFirstDate,
                  lastDate: _initialLastDate,
                )),
          )
        ],
      );
}
