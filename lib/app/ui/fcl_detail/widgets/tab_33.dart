import 'package:flutter/material.dart';
import 'package:flutter_form_builder/flutter_form_builder.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:sisolab_flutter_biosafety/app/global/styles/color_styles.dart';
import 'package:sisolab_flutter_biosafety/app/global/widgets/fcl_divider.dart';
import 'package:sisolab_flutter_biosafety/app/global/widgets/fcl_radio_group.dart';
import 'package:sisolab_flutter_biosafety/app/global/widgets/fcl_text_field.dart';
import 'package:sisolab_flutter_biosafety/app/global/widgets/field_with_label.dart';
import 'package:sisolab_flutter_biosafety/app/ui/fcl_detail/vms/fcl_detail_vm.dart';
import 'package:sisolab_flutter_biosafety/core/utils/extensions/list_space_between.dart';

/// 고위험 - 시설 및 장비 관리
class Tab33 extends StatefulWidget {
  const Tab33({Key? key}) : super(key: key);

  @override
  State<Tab33> createState() => _Tab33State();
}

class _Tab33State extends State<Tab33> {
  FclDetailVm get vm => FclDetailVm.to;

  final d49 = false.obs;

  @override
  void initState() {
    super.initState();
    d49.value = vm.io.d41 == "1";
  }

  @override
  Widget build(BuildContext context) => Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text("시설 및 장비 관리",
              style: TextStyle(fontSize: 34.sp, fontWeight: FontWeight.w500)),
          SizedBox(
            height: 22.h,
          ),
          const FclDivider.black(),
          SizedBox(
            height: 47.h,
          ),
          ...[
            FieldWithLabel(
                label: "생물안전작업대(Biological Safety Cabinet)를 설치ㆍ사용하고 있는가?",
                child: DefaultTextStyle(
                    style: TextStyle(fontSize: 28.sp, color: ColorGroup.black),
                    child: Obx(() => FormBuilderRadioGroup(
                          wrapSpacing: 100.w,
                          decoration: const InputDecoration(
                              contentPadding: EdgeInsets.zero,
                              enabledBorder: OutlineInputBorder(
                                  borderSide: BorderSide.none),
                              disabledBorder: OutlineInputBorder(
                                  borderSide: BorderSide.none)),
                          orientation: OptionsOrientation.vertical,
                          initialValue: vm.io.d49,
                          name: "d49",
                          onChanged: (d) {
                            d49.value = d == "1";
                          },
                          options: [
                            FormBuilderFieldOption(
                              value: "1",
                              child: Row(
                                children: [
                                  const Text("네 (type"),
                                  SizedBox(
                                      width: 200.w,
                                      child: Obx(() => FclTextField(
                                            enabled: d49.value,
                                            name: "d133",
                                            initialValue: vm.io.d133,
                                          ))),
                                  const Text(")")
                                ],
                              ),
                            ),
                            const FormBuilderFieldOption(
                              value: "2",
                              child: Text("아니오"),
                            ),
                            const FormBuilderFieldOption(
                              value: "3",
                              child: Text("clean bench 설치ㆍ사용(식물병원균은 가능)"),
                            ),
                            const FormBuilderFieldOption(
                              value: "4",
                              child: Text("해당 없음(보존용의 경우)"),
                            ),
                          ],
                        )))),
            FieldWithLabel(
              label: "고위험병원체를 지정된 보존구역에 보관하고 있는가?",
              child: Obx(() => FclRadioGroup(
                  orientation: OptionsOrientation.wrap,
                  labelWithKey: false,
                  map: const {
                    "1": "네",
                    "2": "아니오",
                    '3': "해당 없음(고압증기멸균 방법 이외 폐기 시)"
                  },
                  initialValue: vm.io.d50,
                  name: "d50")),
            ),
          ].withSpaceBetween(height: 40.h),
          SizedBox(
            height: 40.h,
          ),
        ],
      );
}
