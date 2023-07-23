import 'package:sisolab_flutter_biosafety/app/global/widgets/form_builder/form_builder_image.dart';
import 'package:sisolab_flutter_biosafety/app/global/widgets/template/note_template.dart';

class ImageTemplate extends NoteTemplate {
  ImageTemplate({super.key, required super.name, super.label})
      : super(builder: (context) {
          return [FormBuilderImage(name: name)];
        });
}
