import 'package:flutter/material.dart';

enum FclFormType { text, radio, image, note, imageWithNote, radioWithNote }

class FclForm {
  String? name;
  List<String>? rowNames;

  FclForm({this.name});
}
class FclTextFormOption extends FclForm {}
class FclNoteFormOption extends FclForm {}
class FclImageFormOption extends FclForm {}
class FclRadioFormOption extends FclForm {}



class FclColumn extends StatelessWidget {
  const FclColumn({super.key, required this.list});

  final List<FclForm> list;

  @override
  Widget build(BuildContext context) {
    return const Placeholder();
  }
}
