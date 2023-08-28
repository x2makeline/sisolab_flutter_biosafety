import 'package:flutter/material.dart';
import 'package:flutter_form_builder/flutter_form_builder.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:sisolab_flutter_biosafety/app/data/models/bio_io.dart';
import 'package:sisolab_flutter_biosafety/app/ui/fcl_detail/vms/fcl_detail_vm.dart';
import 'package:sisolab_flutter_biosafety/app/global/widgets/fcl_divider.dart';
import 'package:sisolab_flutter_biosafety/app/global/widgets/field_with_label.dart';
import 'package:sisolab_flutter_biosafety/core/utils/extensions/list_space_between.dart';

/// 취급생물체정보
class HandlingOrganismInformation extends StatelessWidget {


   HandlingOrganismInformation({super.key});
  final _controller = FclDetailVm.to;

  _wg(String label, List<String> list) => FieldWithLabel(
      label: label,
      child: Row(
          children: list
              .map((e) => Flexible(
                    child: FormBuilderTextField(
                      onSubmitted: (_) => _controller.submit(),
                      name: e,
                    ),
                  ))
              .toList()
              .withSpaceBetween(width: 20.w)));

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text("취급생물체정보",
            style: TextStyle(fontSize: 34.sp, fontWeight: FontWeight.w500)),
        SizedBox(
          height: 22.h,
        ),
        const FclDivider.black(),
        SizedBox(
          height: 47.h,
        ),
        _wg("유전자변형생물체 명칭", [
          BioIoName.d77.name,
          BioIoName.d78.name,
          BioIoName.d79.name,
        ]),
        SizedBox(
          height: 40.h,
        ),
        _wg("고위험병원체 명칭", [
          BioIoName.d80.name,
          BioIoName.d81.name,
          BioIoName.d82.name,
        ]),
        SizedBox(
          height: 40.h,
        ),
        _wg("주요실험방법", [
          BioIoName.d83.name,
          BioIoName.d84.name,
          BioIoName.d85.name,
        ]),
        SizedBox(
          height: 47.h,
        ),
      ],
    );
  }
}
