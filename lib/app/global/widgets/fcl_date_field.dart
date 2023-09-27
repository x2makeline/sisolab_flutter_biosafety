import 'package:sisolab_flutter_biosafety/app/global/widgets/fcl_form_builder_date_time_picker.dart';

import '../models/fcl_type.dart';
import 'fcl_field.dart';

class FclDateField extends FclField {
  FclDateField(
      {String? initialDate,
      super.key,
      bool? enabled,
      super.label,
      required super.name})
      : super(
            type: FclType.date,
            builder: () => FclFormBuilderDateTimePicker(
                  name: name,
                  enabled: enabled,
                  initialDate: initialDate
                ));
}
