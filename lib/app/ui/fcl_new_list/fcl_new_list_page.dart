import 'package:flutter/material.dart';
import 'package:flutter_form_builder/flutter_form_builder.dart';
import 'package:get/get.dart';
import 'package:sisolab_flutter_biosafety/app/data/models/select_proc_list_item.dart';
import 'package:sisolab_flutter_biosafety/app/global/styles/button_styles.dart';
import 'package:sisolab_flutter_biosafety/app/global/styles/text_styles.dart';
import 'package:sisolab_flutter_biosafety/app/global/widgets/fcl_divider.dart';
import 'package:sisolab_flutter_biosafety/app/global/widgets/field_with_label.dart';
import 'package:sisolab_flutter_biosafety/app/global/widgets/layout.dart';
import 'package:sisolab_flutter_biosafety/app/ui/fcl_new_list/fcl_new_list_page_controller.dart';
import 'package:sisolab_flutter_biosafety/core/constants/constant.dart';
import 'package:sisolab_flutter_biosafety/core/utils/extensions/double.dart';
import 'package:sisolab_flutter_biosafety/core/utils/extensions/list_space_between.dart';
import 'package:sisolab_flutter_biosafety/core/utils/extensions/list_widget_between.dart';

class _Item extends StatelessWidget {
  const _Item({super.key, required this.info});

  final SelectProcListItem info;

  Widget _titleCol(List<String> strs) {
    return DefaultTextStyle.merge(
        style: TextStyle(fontSize: 24.sz, fontWeight: FontWeight.w500),
        child: Flexible(
          flex: 1,
          fit: FlexFit.tight,
          child: Column(

            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: strs
                .map((e) => Text(e))
                .toList()
                .withSpaceBetween(height: 22.sz),
          ),
        ));
  }

  Widget _contentCol(List<String> strs) {
    return DefaultTextStyle.merge(
        style: TextStyle(fontSize: 24.sz),
        child: Flexible(
          flex: 1,
          fit: FlexFit.tight,
          child: Column(

            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: strs
                .map((e) => Text(e))
                .toList()
                .withSpaceBetween(height: 22.sz),
          ),
        ));
  }


  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Flexible(
            flex: 2,
            fit: FlexFit.tight,
            child: Center(
                child: Text(info.docno,
                    style: TextStyle(
                        fontWeight: FontWeight.w500, fontSize: 28.sz)))),
        _titleCol(['기관명', '최근점검일']),
        _contentCol([info.company, info.reg_datetime.toString()]),
        Flexible(
          flex: 2,
          fit: FlexFit.tight,
          child: Column(
            children: [Text("기관명"), Text("최근점검일")],
          ),
        ),
        _titleCol(['장소(시설명)', '작성일자']),
        Flexible(
          flex: 1,
          fit: FlexFit.tight,
          child: Column(
            children: [Text("기관명"), Text("최근점검일")],
          ),
        ),
        Flexible(
          flex: 2,
          fit: FlexFit.tight,
          child: Column(
            children: [Text("기관명"), Text("최근점검일")],
          ),
        ),
        _titleCol(['최초허가일']),
        Flexible(
          flex: 2,
          fit: FlexFit.tight,
          child: Column(
            children: [Text("기관명"), Text("최근점검일")],
          ),
        )
      ],
    );
  }
}

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
            Obx(() => controller.list.hasData
                ? ListView(
                    shrinkWrap: true,
                    primary: false,
                    children: controller.list.data!.data!.data
                        .map((e) => SizedBox(
                            width: double.infinity, child: _Item(info: e)))
                        .toList()
                        .withWidgetBetween(const FclDivider.form()),
                  )
                : const Placeholder())
          ],
        ),
      ),
    );
  }
}
