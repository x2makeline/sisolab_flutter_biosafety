import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:intl/intl.dart';
import 'package:sisolab_flutter_biosafety/core/constants/constant.dart';

class FclDateField extends StatefulWidget {
  FclDateField({super.key, required this.rxDateTime});

  final Rxn<DateTime> rxDateTime;

  final textEditingController = TextEditingController();

  @override
  State<FclDateField> createState() => _FclDateFieldState();
}

class _FclDateFieldState extends State<FclDateField> {
  _setDate(DateTime? dateTime) {
    widget.rxDateTime.value = dateTime;
    if (dateTime != null) {
      widget.textEditingController.text =
          DateFormat("y.MM.dd").format(dateTime);
    } else {
      widget.textEditingController.clear();
    }
  }

  @override
  void initState() {
    super.initState();

    _setDate(widget.rxDateTime.value);
  }

  @override
  Widget build(BuildContext context) {
    return InkWell(
        onTap: () async {
          final selectedDate = await showDatePicker(
            context: context,
            firstDate: DateTime(Constant.firstDateYear),
            initialDate: widget.rxDateTime.value ?? DateTime.now(),
            lastDate: DateTime(Constant.lastDateYear),
          );
          _setDate(selectedDate);
        },
        child: TextField(
            enabled: false,
            readOnly: true,
            controller: widget.textEditingController,
            decoration: const InputDecoration(
                hintText: "연도. 월. 일.", suffixIcon: Icon(Icons.date_range))));
  }
}
