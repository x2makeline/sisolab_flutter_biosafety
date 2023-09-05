import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:sisolab_flutter_biosafety/app/global/models/fcl_radio.dart';
import 'package:sisolab_flutter_biosafety/app/global/widgets/fcl/fcl_field.dart';
import 'package:sisolab_flutter_biosafety/app/global/widgets/fcl_divider.dart';
import 'package:sisolab_flutter_biosafety/app/ui/fcl_detail/vms/fcl_detail_vm.dart';
import 'package:sisolab_flutter_biosafety/core/constants/constant.dart';
import 'package:sisolab_flutter_biosafety/core/utils/extensions/list_widget_between.dart';

/// 4. 건축 특성(문과 천정, 등기구, 전기장비등의 마감, 관통, 코킹) 확인
class Tab23 extends StatelessWidget {
  const Tab23({super.key});

  FclDetailVm get vm => FclDetailVm.to;

  @override
  Widget build(BuildContext context) => Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text("설치 ∙ 운영 적격성 평가",
              style: TextStyle(fontSize: 34.sp, fontWeight: FontWeight.w500)),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text("4. 건축 특성(문과 천정, 등기구, 전기장비등의 마감, 관통, 코킹) 확인",
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
          SizedBox(
            height: 47.h,
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              FclField(
                noteName: "d107",
                initialNote: vm.io.d107,
                initialImage: vm.io.attfile14str,
                label: "밀폐구역 내 접함 및 관통 부위의 기밀성",
                imageName: "attfile14str",
                fclRadio: FclRadio(
                    initialValue: vm.io.d18, name: "d18", map: yesOrNoMap),
              ),
              FclField(
                noteName: "d108",
                initialNote: vm.io.d108,
                initialImage: vm.io.attfile15str,
                label: "밀폐구역 내 전열 콘센트 기밀성",
                imageName: "attfile15str",
                fclRadio: FclRadio(
                    initialValue: vm.io.d19, name: "d19", map: yesOrNoMap),
              ),
              FclField(
                noteName: "d109",
                initialNote: vm.io.d109,
                initialImage: vm.io.attfile16str,
                label: "밀폐구역 내 조명기구 기밀성",
                imageName: "attfile16str",
                fclRadio: FclRadio(
                    initialValue: vm.io.d20, name: "d20", map: yesOrNoMap),
              ),
              FclField(
                noteName: "d110",
                initialNote: vm.io.d110,
                initialImage: vm.io.attfile17str,
                label: "멸균기-벽체 이음새부위 기밀성",
                imageName: "attfile17str",
                fclRadio: FclRadio(
                    initialValue: vm.io.d21, name: "d21", map: yesOrNoMap),
              ),
              FclField(
                noteName: "d111",
                initialNote: vm.io.d111,
                initialImage: vm.io.attfile18str,
                label: "기타 실험실 내부 벽체 연결부, 코너, 이음새 기밀성",
                imageName: "attfile18str",
                fclRadio: FclRadio(
                    initialValue: vm.io.d22, name: "d22", map: yesOrNoMap),
              ),
              FclField(
                noteName: "d112",
                initialNote: vm.io.d112,
                initialImage: vm.io.attfile19str,
                label: "밀폐구역 내 싱크와 배수 위치 확인 및 기밀성",
                imageName: "attfile19str",
                fclRadio: FclRadio(
                    initialValue: vm.io.d23, name: "d23", map: yesOrNoMap),
              ),
              FclField(
                noteName: "d113",
                initialNote: vm.io.d113,
                initialImage: vm.io.attfile20str,
                label: "실험실 내 온도, 습도 및 소음도",
                imageName: "attfile20str",
                fclRadio: FclRadio(
                    initialValue: vm.io.d24, name: "d24", map: yesOrNoMap),
              ),
              FclField(
                noteName: "d114",
                initialNote: vm.io.d114,
                initialImage: vm.io.attfile21str,
                label: "밀폐구역 내 바닥 마감상태",
                imageName: "attfile21str",
                fclRadio: FclRadio(
                    initialValue: vm.io.d25, name: "d25", map: yesOrNoMap),
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
