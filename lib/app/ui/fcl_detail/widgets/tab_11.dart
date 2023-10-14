import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:sisolab_flutter_biosafety/app/global/widgets/fcl_divider.dart';
import 'package:sisolab_flutter_biosafety/app/global/widgets/fcl_input.dart';
import 'package:sisolab_flutter_biosafety/app/ui/fcl_detail/vms/fcl_detail_vm.dart';

/// (정기) 7. 기관생물안전위원회(IBC) 구성 운영 확인 검토(기록서류 확인)
class Tab11 extends StatelessWidget {
  const Tab11({super.key});

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
              Text("7. 기관생물안전위원회(IBC) 구성 운영 확인 검토(기록서류 확인)",
                  style: TextStyle(fontSize: 34.sp)),
              SizedBox(height: 14.h),
              Row(
                children: [
                  Text("과년도 자료", style: TextStyle(fontSize: 28.sp)),
                  Obx(() => Checkbox(
                      value: vm.pastYearYn,
                      onChanged: (v) {
                        vm.setPastYearYn(v ?? false);
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
                desc: const [
                  "- IBC 구성됨",
                  "- 생물안전관리책임자 및 생물안전관리자 지정",
                  "- 교육이수 여부 확인(지정요건 충족여부)"
                ],
                label: "7.1) IBC 구성 및 생물안전관리책임자 지정이 적절한가?",
                lastDividerYn: false,
                fieldList: [
                  FclImageField(
                      name: "file29",
                      initialValue: vm.io.file29,
                      preValue: vm.preData?.file29),
                  FclRadioField(
                      name: "d29",
                      map: const {"3": "3", "2": "2", "1": "1", "0": "0"},
                      initialValue: vm.io.d29,
                      preValue: vm.preData?.d29),
                  FclNoteField(
                      name: 'd118',
                      initialValue: vm.io.d118,
                      preValue: vm.preData?.d118)
                ],
                preYn: vm.pastYearYn,
              )),
          Obx(() => FclFieldView(
                desc: const ["- IBC 정기적 개최", "- 진행된 모든 실험 IBC 심의 득"],
                label: "7.2) IBC 주기적 개최 및 위해성 평가가 적절한가?",
                lastDividerYn: false,
                fieldList: [
                  FclImageField(
                      name: "file30",
                      initialValue: vm.io.file30,
                      preValue: vm.preData?.file30),
                  FclRadioField(
                      name: "d30",
                      map: const {"2": "2", "1": "1", "0": "0"},
                      initialValue: vm.io.d30,
                      preValue: vm.preData?.d30),
                  FclNoteField(
                      name: 'd119',
                      initialValue: vm.io.d119,
                      preValue: vm.preData?.d119)
                ],
                preYn: vm.pastYearYn,
              ))
        ],
      );
}
