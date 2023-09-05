import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:sisolab_flutter_biosafety/app/global/widgets/fcl_divider.dart';
import 'package:sisolab_flutter_biosafety/app/global/widgets/fields/fcl_text_field.dart';
import 'package:sisolab_flutter_biosafety/app/global/widgets/tight_grid_view.dart';
import 'package:sisolab_flutter_biosafety/app/ui/fcl_detail/vms/fcl_detail_vm.dart';

/// 취급생물체정보 - 정기
class Tab7 extends StatelessWidget {
  const Tab7({super.key});


  FclDetailVm get vm => FclDetailVm.to;

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
          FclTextField(name: "d77"),
          FclTextField(name: "d78"),
          FclTextField(name: "d180"),
          FclTextField(name: "d181"),
          FclTextField(name: "d182"),
          FclTextField(name: "d183")
        ]),
        SizedBox(
          height: 47.h,
        ),
      ],
    );
  }
}
