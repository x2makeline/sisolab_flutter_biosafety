import 'package:flutter/material.dart';
import 'package:flutter_form_builder/flutter_form_builder.dart';

import '../../models/fcl_type.dart';
import 'fcl_field.dart';

class FclDropdownField extends FclField {
  FclDropdownField(
      {super.key,
      super.label,
      required super.name,
      String hintText = "선택",
      required Map<String, String> itemMap})
      : super(
            type: FclType.text,
            builder: () {
              return FormBuilderDropdown(
                name: name,
                decoration: InputDecoration(hintText: hintText),
                items: [
                  DropdownMenuItem(
                    value: null,
                    child: Text(hintText),
                  ),
                  ...itemMap.entries
                      .map((e) => DropdownMenuItem(
                            value: e.key,
                            child: Text(e.value),
                          ))
                      .toList()
                ],
              );
            });
}
