import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:sisolab_flutter_biosafety/app/global/widgets/fields/fcl_text_field.dart';

import '../models/fcl_related_person.dart';
import '../models/fcl_related_person_category.dart';
import 'fields/fcl_sign_field.dart';

class FclRelatedPersonCol {
  FclRelatedPersonCol(
      {required this.title,
      required this.personCategory,
      required this.rx,
      required this.flexWidth});

  @override
  String toString() {
    return 'FclRelatedPersonCol{title: $title, personCategory: $personCategory, flexWidth: $flexWidth, rx: $rx}';
  }

  String title;
  FclRelatedPersonCategory personCategory;
  double flexWidth;

  Rx<FclRelatedPerson> rx;
}

class FclRelatedPersonTable extends StatelessWidget {
  const FclRelatedPersonTable(
      {super.key, required this.list, required this.titleColFlexWidth});

  final List<FclRelatedPersonCol> list;

  final double titleColFlexWidth;

  _padding(Widget widget) => Padding(
        padding: const EdgeInsets.all(10),
        child: widget,
      );

  @override
  Widget build(BuildContext context) => Table(
        columnWidths: {
          0: FlexColumnWidth(titleColFlexWidth),
          ...list.asMap().map((key, value) =>
              MapEntry(key + 1, FlexColumnWidth(value.flexWidth)))
        },
        // border: TableBorder.all(),
        defaultVerticalAlignment: TableCellVerticalAlignment.middle,
        children: [
          TableRow(children: [
            const Text("구분"),
            ...list.map((e) =>
                Container(alignment: Alignment.center, child: Text(e.title)))
          ]),
          TableRow(children: [
            const Text("성명 / 서명"),
            ...list.map((e) => TableCell(
                child: _padding(FclSignField(
                    rx: e.rx,
                    nameHintText: "${e.personCategory.title}성명",
                    signatureHintText: "[서명]"))))
          ]),
          TableRow(children: [
            const Text("연락처"),
            ...list.map((e) => _padding(FclTextField.primary(
                  hintText: "${e.personCategory.title}연락처",
                  value: e.rx.value.contact,
                  onChange: (v) {
                    e.rx.value = e.rx.value.merge(contact: v);
                  },
                )))
          ]),
          TableRow(children: [
            const Text("이메일"),
            ...list.map((e) => _padding(FclTextField.primary(
                  hintText: "${e.personCategory.title}이메일",
                  value: e.rx.value.email,
                  onChange: (v) {
                    e.rx.value = e.rx.value.merge(email: v);
                  },
                )))
          ]),
          TableRow(children: [
            const Text("핸드폰"),
            ...list.map((e) => _padding(FclTextField.primary(
                  hintText: "${e.personCategory.title}핸드폰",
                  value: e.rx.value.phone,
                  onChange: (v) {
                    e.rx.value = e.rx.value.merge(phone: v);
                  },
                )))
          ])
        ],
      );
}
