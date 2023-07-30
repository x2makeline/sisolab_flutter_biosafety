import 'package:form_builder_file_picker/form_builder_file_picker.dart';

enum FclFormType { text, radio, image, note, imageWithNote, radioWithNote }

abstract class FclForm {
  FclFormType type;

  FclForm({required this.type});
}

class FclNoteForm extends FclForm {
  String? text;

  FclNoteForm({this.text}) : super(type: FclFormType.note);
}

class FclImageForm extends FclForm {
  List<PlatformFile>? images;

  FclImageForm({this.images}) : super(type: FclFormType.image);
}

class FclRadioForm extends FclForm {
  String? value;

  FclRadioForm({this.value}) : super(type: FclFormType.radio);
}

class FclTextForm extends FclForm {
  String? value;

  FclTextForm({this.value}) : super(type: FclFormType.text);
}

class FclImageWithNoteForm extends FclForm
    implements FclNoteForm, FclImageForm {
  @override
  List<PlatformFile>? images;

  @override
  String? text;

  FclImageWithNoteForm({this.images, this.text})
      : super(type: FclFormType.imageWithNote);
}

class FclRadioWithNoteForm extends FclForm
    implements FclNoteForm, FclRadioForm {
  @override
  String? value;

  @override
  String? text;

  FclRadioWithNoteForm({this.value, this.text})
      : super(type: FclFormType.radioWithNote);
}
