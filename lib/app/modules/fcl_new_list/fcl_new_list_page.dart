import 'package:flutter/material.dart';
import 'package:flutter_form_builder/flutter_form_builder.dart';
import 'package:get/get.dart';
import 'package:sisolab_flutter_biosafety/app/global/styles/button_styles.dart';
import 'package:sisolab_flutter_biosafety/app/global/styles/text_styles.dart';
import 'package:sisolab_flutter_biosafety/app/global/widgets/fcl_divider.dart';
import 'package:sisolab_flutter_biosafety/app/global/widgets/field_with_label.dart';
import 'package:sisolab_flutter_biosafety/app/global/widgets/layout.dart';
import 'package:sisolab_flutter_biosafety/app/modules/fcl_new_list/fcl_new_list_page_controller.dart';
import 'package:sisolab_flutter_biosafety/core/constants/constant.dart';
import 'package:sisolab_flutter_biosafety/core/utils/extensions/double.dart';
import 'package:sisolab_flutter_biosafety/core/utils/extensions/list_space_between.dart';



class FclNewListPage extends GetView<FclNewListPageController> {
  const FclNewListPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Layout(
      title: "${Constant.newTitle}\n${Constant.fclTitle}",
      child: Padding(
        padding: EdgeInsets.only(top: 47.sz),
        child: Column(
          children: [
            Row(
              children: [
                const Flexible(
                  child: FieldWithLabel(
                    label: "제출기관",
                    child: TextField(
                      decoration: InputDecoration(hintText: "제출기관"),
                    ),
                  ),
                ),
                Flexible(
                  child: FieldWithLabel(
                    label: "기간선택",
                    child: FormBuilderDateRangePicker(
                      name: "t",
                      firstDate: DateTime.now(),
                      lastDate: DateTime.now(),
                    ),
                  ),
                )
              ].withSpaceBetween(width: 40.sz),
            ),
            SizedBox(
              height: 47.sz,
            ),
            const FclDivider.form(),
            SizedBox(
              height: 40.sz,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  children: [
                    ElevatedButton(
                        style: whiteButtonStyle,
                        onPressed: () {},
                        child: Text("엑셀다운", style: buttonTextStyle)),
                    ElevatedButton(
                        style: blackButtonStyle,
                        onPressed: () {},
                        child: Text("신규등록", style: buttonTextStyle)),
                  ].withSpaceBetween(width: 24.sz),
                ),
                ElevatedButton(
                    style: primaryButtonStyle,
                    onPressed: () {},
                    child: Text("엑셀다운", style: buttonTextStyle)),
              ],
            ),
            SizedBox(
              height: 60.sz,
            ),
            const Text("hi"),
            const FclDivider.black(),
            Obx(() => controller.list.hasData ? ListView(
              children: controller.list.data!.data!.data.map((e) => Text(e.company)).toList(),
            ) : Placeholder())

          ],
        ),
      ),
    );
  }
}
