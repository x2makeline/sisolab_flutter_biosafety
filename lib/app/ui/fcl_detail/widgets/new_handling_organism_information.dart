import 'package:flutter/material.dart';
import 'package:flutter_form_builder/flutter_form_builder.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:sisolab_flutter_biosafety/app/data/models/bio_io.dart';
import 'package:sisolab_flutter_biosafety/app/ui/fcl_detail/vms/fcl_detail_vm.dart';
import 'package:sisolab_flutter_biosafety/app/global/widgets/fcl_divider.dart';
import 'package:sisolab_flutter_biosafety/app/global/widgets/field_with_label.dart';
import 'package:sisolab_flutter_biosafety/core/utils/extensions/list_space_between.dart';

/// 취급생물체정보
class NewHandlingOrganismInformation extends StatelessWidget {


   const NewHandlingOrganismInformation({super.key});
   FclDetailVm  get vm => FclDetailVm.to;

  _wg(String label, List<(String, String?)> list) => FieldWithLabel(
      label: label,
      child: Row(
          children: list
              .map((e) => Flexible(
                    child: FormBuilderTextField(
                      onSubmitted: (_) => vm.submit(),
                      name: e.$1,
                      initialValue: e.$2,
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
          (BioIoName.d77.name, vm.io.d77),
          (BioIoName.d78.name, vm.io.d78),
          (BioIoName.d79.name, vm.io.d79),
        ]),
        SizedBox(
          height: 40.h,
        ),
        _wg("고위험병원체 명칭", [
          (BioIoName.d80.name, vm.io.d80),
          (BioIoName.d81.name, vm.io.d81),
          (BioIoName.d82.name, vm.io.d82),
        ]),
        SizedBox(
          height: 40.h,
        ),
        _wg("주요실험방법", [
          (BioIoName.d83.name, vm.io.d83),
          (BioIoName.d84.name, vm.io.d84),
          (BioIoName.d85.name, vm.io.d85),
        ]),
        SizedBox(
          height: 47.h,
        ),
      ],
    );
  }
}
