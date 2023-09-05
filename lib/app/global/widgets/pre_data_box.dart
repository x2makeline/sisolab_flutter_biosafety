import 'package:dartlin/control_flow.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:sisolab_flutter_biosafety/app/global/models/pre_data_box_item.dart';
import 'package:sisolab_flutter_biosafety/app/global/styles/color_styles.dart';
import 'package:sisolab_flutter_biosafety/app/global/widgets/empty_box.dart';

class PreDataBox extends StatelessWidget {
  const PreDataBox({super.key, this.list = const [], this.enable = false});

  final List<PreDataBoxItem> list;
  final bool enable;

  @override
  Widget build(BuildContext context) => DefaultTextStyle(
        style: TextStyle(color: const Color(0xffff381e), fontSize: 28.sp),
        child: enable
            ? Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(
                    height: 40.h,
                  ),
                  Text(
                    "과년도 자료",
                    style: TextStyle(color: ColorGroup.black, fontSize: 24.sp),
                  ),
                  Container(
                    padding: EdgeInsets.all(30.sp),
                    color: const Color(0xfff2f2f2),
                    width: double.infinity,
                    child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: list
                            .where((element) => element.value != null)
                            .map((v) => iff(
                                    v.radioMap != null &&
                                        v.radioMap?[v.value!] != null,
                                    () => Text(v.radioMap![v.value!]!))
                                .orElse(() => Text(v.value!)))
                            .toList()),
                  )
                ],
              )
            : const EmptyBox(),
      );
}
