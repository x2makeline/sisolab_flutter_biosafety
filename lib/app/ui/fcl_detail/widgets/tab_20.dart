import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:sisolab_flutter_biosafety/app/global/models/fcl_radio.dart';
import 'package:sisolab_flutter_biosafety/app/global/widgets/fcl/fcl_field.dart';
import 'package:sisolab_flutter_biosafety/app/global/widgets/fcl_divider.dart';
import 'package:sisolab_flutter_biosafety/app/ui/fcl_detail/vms/fcl_detail_vm.dart';
import 'package:sisolab_flutter_biosafety/core/constants/constant.dart';
import 'package:sisolab_flutter_biosafety/core/utils/extensions/list_widget_between.dart';

/// 9. 내부로의 일방향 공기흐름 확인
class Tab20 extends StatelessWidget {
  const Tab20({super.key});

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
              Text("9. 내부로의 일방향 공기흐름 확인", style: TextStyle(fontSize: 34.sp)),
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
                noteName: "d143",
                label: "실험구역 내 상대적으로 순차적인 음압 유지(환기횟수 10회 이상)",
                imageName: "file50",
                fclRadio: FclRadio(name: "d53", map: yesOrNoMap),
              ),
              FclField(
                noteName: "d144",
                label: "차압 측정(청정지역과 오염지역은 최소 –24 Pa 유지)",
                fclRadio: FclRadio(name: "d54", map: yesOrNoMap),
              ),
              FclField(
                noteName: "d145",
                label: "밀폐구역 내 실간차압이 -7.6 Pa 이상 유지",
                imageName: "file51",
                fclRadio: FclRadio(name: "d55", map: yesOrNoMap),
              ),
              FclField(
                noteName: "d146",
                label: "밀폐구역 내 실간 일방향 기류 확인",
                imageName: "file52",
                fclRadio: FclRadio(name: "d56", map: yesOrNoMap),
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
