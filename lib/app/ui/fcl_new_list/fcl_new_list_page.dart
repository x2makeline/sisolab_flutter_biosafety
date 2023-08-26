import 'package:flutter/material.dart';
import 'package:flutter_form_builder/flutter_form_builder.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:sisolab_flutter_biosafety/app/data/models/bio_search_in.dart';
import 'package:sisolab_flutter_biosafety/app/data/models/select_proc_list_item.dart';
import 'package:sisolab_flutter_biosafety/app/global/styles/text_styles.dart';
import 'package:sisolab_flutter_biosafety/app/global/widgets/fcl_divider.dart';
import 'package:sisolab_flutter_biosafety/app/global/widgets/field_with_label.dart';
import 'package:sisolab_flutter_biosafety/app/global/widgets/form_builder/form_builder_between_date.dart';
import 'package:sisolab_flutter_biosafety/app/global/widgets/layout.dart';
import 'package:sisolab_flutter_biosafety/app/ui/fcl_new_list/fcl_new_list_page_vm.dart';
import 'package:sisolab_flutter_biosafety/core/constants/constant.dart';
import 'package:sisolab_flutter_biosafety/core/utils/extensions/list_space_between.dart';
import 'package:sisolab_flutter_biosafety/core/utils/extensions/list_widget_between.dart';

class _Item extends StatelessWidget {
  const _Item({super.key, required this.info});

  final SelectProcListItem info;

  static final TextStyle _titleStyle = TextStyle(
      fontSize: 24.sp,
      fontWeight: FontWeight.w500,
      color: const Color(0xff767676));

  static final TextStyle _contentStyle = TextStyle(fontSize: 24.sp);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        Get.toNamed("/fcl/new/detail/${info.idx}");
      },
      child: Table(
        columnWidths: const <int, TableColumnWidth>{
          0: FlexColumnWidth(3),
          1: FlexColumnWidth(2),
          2: FlexColumnWidth(3),
          3: FlexColumnWidth(2),
          4: FlexColumnWidth(3),
          5: FlexColumnWidth(2),
          6: FlexColumnWidth(3),
        },
        defaultVerticalAlignment: TableCellVerticalAlignment.middle,
        children: <TableRow>[
          TableRow(
            children: <Widget>[
              TableCell(
                verticalAlignment: TableCellVerticalAlignment.middle,
                child: Text(info.docno,
                    style: TextStyle(
                        fontSize: 28.sp, fontWeight: FontWeight.w500)),
              ),
              TableCell(
                  child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "기관명",
                    style: _titleStyle,
                  ),
                  Text(
                    "최근점검일",
                    style: _titleStyle,
                  )
                ].withSpaceBetween(height: 20),
              )),
              TableCell(
                  child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    info.company,
                    style: _contentStyle,
                  ),
                  Text(
                    info.d168,
                    style: _contentStyle,
                  )
                ].withSpaceBetween(height: 20),
              )),
              TableCell(
                  child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    '장소(시설명)',
                    style: _titleStyle,
                  ),
                  Text(
                    "작성일자",
                    style: _titleStyle,
                  )
                ].withSpaceBetween(height: 20),
              )),
              TableCell(
                  child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    info.d184,
                    style: _contentStyle,
                  ),
                  Text(info.modDatetime, style: _contentStyle)
                ].withSpaceBetween(height: 20),
              )),
              TableCell(
                  verticalAlignment: TableCellVerticalAlignment.top,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "최초허가일",
                        style: _titleStyle,
                      )
                    ],
                  )),
              TableCell(
                  verticalAlignment: TableCellVerticalAlignment.top,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        info.d158,
                        style: _contentStyle,
                      )
                    ],
                  ))
            ],
          ),
        ],
      ),
    );
  }
}

class FclNewListPage extends GetView<FclNewListPageVm> {
  const FclNewListPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Layout(
      title: "${Constant.newTitle}\n${Constant.fclTitle}",
      child: Padding(
        padding: EdgeInsets.only(top: 47.h),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: [
                Flexible(
                  child: FieldWithLabel(
                    label: "제출기관",
                    child: FormBuilderTextField(
                      name: BioSearchInName.company.name,
                      style: TextStyle(fontSize: 28.sp),
                      decoration: const InputDecoration(hintText: "제출기관"),
                    ),
                  ),
                ),
                Flexible(
                  child: FieldWithLabel(
                    label: "기간선택",
                    child: FormBuilderBetweenDate(
                      endName: BioSearchInName.date1.name,
                      startName: BioSearchInName.date2.name,
                    ),
                  ),
                )
              ].withSpaceBetween(width: 40.w),
            ),
            SizedBox(
              height: 47.h,
            ),
            const FclDivider.form(),
            SizedBox(
              height: 40.h,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  children: [
                    OutlinedButton(onPressed: () {}, child: const Text("엑셀다운")),
                    ElevatedButton(
                        style: const ButtonStyle(
                            backgroundColor:
                                MaterialStatePropertyAll<Color>(Colors.black)),
                        onPressed: () {},
                        child: const Text("신규등록")),
                  ].withSpaceBetween(width: 24.w),
                ),
                ElevatedButton(
                    onPressed: () {
                      controller.fetch();
                    },
                    child: const Text("조회")),
              ],
            ),
            SizedBox(
              height: 60.h,
            ),
            Obx(() => Text.rich(
                style: TextStyle(fontSize: 24.sp),
                TextSpan(children: [
                  const TextSpan(text: "총 게시글 "),
                  TextSpan(
                      text: (controller.list.hasData
                              ? controller.list.data!.data!.data.length
                              : 0)
                          .toString(),
                      style: robotoTextStyle.copyWith(
                          color: const Color(0xffff381e),
                          fontWeight: FontWeight.w500)),
                  const TextSpan(text: "건")
                ]))),
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
