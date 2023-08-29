import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:sisolab_flutter_biosafety/app/data/models/bio_io.dart';
import 'package:sisolab_flutter_biosafety/app/global/widgets/fcl_divider.dart';
import 'package:sisolab_flutter_biosafety/app/global/widgets/fields/fcl_text_field.dart';
import 'package:sisolab_flutter_biosafety/app/global/widgets/tight_grid_view.dart';
import 'package:sisolab_flutter_biosafety/app/ui/fcl_detail/vms/fcl_regular_detail_vm.dart';

/// 취급생물체정보 - 정기
class RegularHandlingOrganismInformation extends StatelessWidget {
  const RegularHandlingOrganismInformation({super.key});


  FclRegularDetailVm get vm => FclRegularDetailVm.to;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text("취급병원체 정보",
            style: TextStyle(fontSize: 34.sp, fontWeight: FontWeight.w500)),
        SizedBox(
          height: 22.h,
        ),
        const FclDivider.black(),
        SizedBox(
          height: 47.h,
        ),
        TightGridView(crossAxisCount: 2, crossAxisSpacing: 20.w, children: [
          SizedBox(
            width: double.infinity,
            child: Text(
              "병원체명",
              style: context.textTheme.titleMedium,
            ),
          ),
          Text(
            "주요실험방법",
            style: context.textTheme.titleMedium,
          ),
          FclTextField(name: BioIoName.d77.name),
          FclTextField(name: BioIoName.d78.name),
          FclTextField(name: BioIoName.d180.name),
          FclTextField(name: BioIoName.d181.name),
          FclTextField(name: BioIoName.d182.name),
          FclTextField(name: BioIoName.d183.name)
        ]),
        SizedBox(
          height: 47.h,
        ),
      ],
    );
  }
}
