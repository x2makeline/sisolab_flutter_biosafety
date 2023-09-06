import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:sisolab_flutter_biosafety/app/global/widgets/fcl_divider.dart';
import 'package:sisolab_flutter_biosafety/app/global/widgets/fcl_input.dart';
import 'package:sisolab_flutter_biosafety/app/ui/fcl_detail/vms/fcl_detail_vm.dart';

/// (정기) 5. 유틸리티 가동성 확인(보고서 또는 필드 확인)
class Tab9 extends StatelessWidget {
  const Tab9({super.key});

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
              Text("5. 유틸리티 가동성 확인(보고서 또는 필드 확인)",
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
                desc: const ["- 가스저장실 출입통제장치 설치", "- 가스용기, 가스관, 레귤레이터 양호"],
                label: "5.1) 유틸리티 가스공급장치 설비 관리가 적절한가?",
                lastDividerYn: false,
                fieldList: [
                  FclImageField(
                      name: "attfile27str",
                      initialValue: vm.io.attfile27str,
                      preValue: vm.preData?.attfile27str),
                  FclRadioField(
                      name: "d27",
                      map: {"2": "2", "1": "1", "0": "0"},
                      initialValue: vm.io.d27,
                      preValue: vm.preData?.d27),
                  FclNoteField(
                      name: 'd116',
                      initialValue: vm.io.d116,
                      preValue: vm.preData?.d116)
                ],
                preYn: vm.pastYearYn,
              )),
        ],
      );
}
