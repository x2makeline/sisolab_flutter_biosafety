import 'package:flutter/material.dart';
import 'package:sisolab_flutter_biosafety/app/global/widgets/field_with_label.dart';
import 'package:sisolab_flutter_biosafety/app/global/widgets/form_builder/form_builder_note.dart';
import 'package:sisolab_flutter_biosafety/core/utils/extensions/double.dart';
import 'package:sisolab_flutter_biosafety/core/utils/extensions/list_space_between.dart';

class NoteTemplate extends StatelessWidget {
  const NoteTemplate(
      {super.key,
      this.label,
      this.onSaved,
      required this.name,
      required this.builder});

  final String name;
  final String? label;
  final List<Widget> Function(BuildContext context) builder;
  final void Function(String?)? onSaved;

  @override
  Widget build(BuildContext context) => FieldWithLabel(
        label: label,
        child: Column(
          children: [
            ...builder(context),
            FormBuilderNote(
              name: name,
              onSaved: onSaved,
            )
          ].withSpaceBetween(height: 10.sz),
        ));
}
