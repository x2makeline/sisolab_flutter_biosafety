import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:sisolab_flutter_biosafety/app/global/widgets/fcl_divider.dart';
import 'package:sisolab_flutter_biosafety/app/global/widgets/fcl_input.dart';
import 'package:sisolab_flutter_biosafety/app/ui/fcl_detail/vms/fcl_detail_vm.dart';

/// (정기) 6. 폐기물(폐수) 처리 기록 확인(보고서 확인)
class Tab26 extends StatelessWidget {
  const Tab26({super.key});

  FclDetailVm get vm => FclDetailVm.to;

  @override
  Widget build(BuildContext context) => Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text("세부점검사항",
              style: TextStyle(fontSize: 34.sp, fontWeight: FontWeight.w500)),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text("6. 폐기물(폐수) 처리 기록 확인(보고서 확인)",
                  style: TextStyle(fontSize: 34.sp)),
              SizedBox(height: 14.h),
              Row(
                children: [
                  Text("과년도 자료", style: TextStyle(fontSize: 28.sp)),
                  Obx(() => Checkbox(
                      value: vm.pastYearYn,
                      onChanged: (v) {
                        vm.pastYearYn = v ?? false;
                      }))
                ],
              )
            ],
          ),
          SizedBox(
            height: 22.h,
          ),
          const FclDivider.black(),
          Obx(() => FclFieldView(
                desc: const ["- 폐기물 처리대장 보유", "- 폐기물 처리대장 현행화"],
                label: "6.1) 폐수 및 폐기물 처리기록이 적절히 유지되는가?",
                lastDividerYn: false,
                fieldList: [
                  FclImageField(
                      name: "attfile28str",
                      initialValue: vm.io.attfile28str,
                      preValue: vm.preData?.attfile28str),
                  FclRadioField(
                      name: "d28",
                      map: {"2": "2", "1": "1", "0": "0"},
                      initialValue: vm.io.d28,
                      preValue: vm.preData?.d28),
                  FclNoteField(
                      name: 'd117',
                      initialValue: vm.io.d117,
                      preValue: vm.preData?.d117)
                ],
                preYn: vm.pastYearYn,
              ))
        ],
      );
}
