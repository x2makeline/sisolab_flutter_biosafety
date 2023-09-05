import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:sisolab_flutter_biosafety/app/ui/fcl_detail/vms/fcl_detail_vm.dart';
import 'package:sisolab_flutter_biosafety/app/global/models/fcl_radio.dart';
import 'package:sisolab_flutter_biosafety/app/global/widgets/fcl/fcl_field.dart';
import 'package:sisolab_flutter_biosafety/app/global/widgets/fcl_divider.dart';
import 'package:sisolab_flutter_biosafety/core/constants/constant.dart';

import 'package:sisolab_flutter_biosafety/core/utils/extensions/list_widget_between.dart';



/// 12. 헤파필터 유닛 및 배기덕트 누기 확인
class Tab17 extends StatelessWidget {
  const Tab17({super.key});

  FclDetailVm get controller => FclDetailVm.to;

  @override
  Widget build(BuildContext context) => Column(
    crossAxisAlignment: CrossAxisAlignment.start,
    children: [
      Text("설치 ∙ 운영 적격성 평가",
          style: TextStyle(fontSize: 34.sp, fontWeight: FontWeight.w500)),
      Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text("12. 헤파필터 유닛 및 배기덕트 누기 확인", style: TextStyle(fontSize: 34.sp)),
          SizedBox(height: 14.h),
          Row(
            children: [
              Text("과년도 자료", style: TextStyle(fontSize: 28.sp)),
              Obx(() => Checkbox(
                  value: controller.pastYearYn,
                  onChanged: (v) {
                    controller.pastYearYn = v ?? false;
                  }))
            ],
          )
        ],
      ),
      SizedBox(
        height: 22.h,
      ),
      const FclDivider.black(),
      SizedBox(
        height: 47.h,
      ),
      Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [

          FclField(
            noteName: "d152",
            label: "헤파필터 유닛, 배기덕트 압력 감소 시험",
            imageName: "file58",
            fclRadio: FclRadio(
                name: "d62",
                map: yesOrNoMap),
          ),
          FclField(
            noteName: "d153",
            label: "헤파필터 유닛 완전성 테스트(PAO 테스트)",
            imageName: "file59",
            fclRadio: FclRadio(
                name: "d63",
                map: yesOrNoMap),
          )

        ].withWidgetBetween(Column(
          children: [
            SizedBox(
              height: 47.h,
            ),
            const FclDivider.form(),
            SizedBox(
              height: 47.h,
            )
          ],
        )),
      ),
      SizedBox(
        height: 47.h,
      ),
    ],
  );
}
