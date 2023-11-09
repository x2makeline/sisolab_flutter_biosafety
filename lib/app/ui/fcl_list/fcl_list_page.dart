import 'package:dartlin/control_flow.dart';
import 'package:flutter/material.dart';
import 'package:flutter_form_builder/flutter_form_builder.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:sisolab_flutter_biosafety/app/data/models/bio_io.dart';
import 'package:sisolab_flutter_biosafety/app/data/models/bio_search_in.dart';
import 'package:sisolab_flutter_biosafety/app/data/models/gbn.dart';
import 'package:sisolab_flutter_biosafety/app/global/styles/text_styles.dart';
import 'package:sisolab_flutter_biosafety/app/global/widgets/fcl_divider.dart';
import 'package:sisolab_flutter_biosafety/app/global/widgets/field_with_label.dart';
import 'package:sisolab_flutter_biosafety/app/global/widgets/form_builder_between_date.dart';
import 'package:sisolab_flutter_biosafety/app/global/widgets/layout.dart';
import 'package:sisolab_flutter_biosafety/app/ui/fcl_detail/fcl_detail_page.dart';
import 'package:sisolab_flutter_biosafety/app/ui/fcl_list/vms/fcl_list_page_vm.dart';
import 'package:sisolab_flutter_biosafety/core/extensions/bio_list_ext.dart';
import 'package:sisolab_flutter_biosafety/core/utils/extensions/list_space_between.dart';
import 'package:sisolab_flutter_biosafety/core/utils/extensions/list_widget_between.dart';
import 'package:sisolab_flutter_biosafety/core/utils/mc_logger.dart';

class _Item extends StatelessWidget with PLoggerMixin {
  const _Item({required this.info, required this.gbn});

  final Gbn gbn;

  final BioIo info;

  static final TextStyle _titleStyle = TextStyle(
      fontSize: 24.sp,
      fontWeight: FontWeight.w500,
      color: const Color(0xff767676));

  static final TextStyle _contentStyle = TextStyle(fontSize: 24.sp);

  Table get _table => Table(
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
                child: Text(info.localId.toString(),
                    style: TextStyle(
                        fontSize: 28.sp, fontWeight: FontWeight.w500)),
              ),
              TableCell(
                  child: Text(
                "기관명",
                style: _titleStyle,
              )),
              TableCell(
                  child: Text(
                info.company ?? "",
                style: _contentStyle,
              )),
              TableCell(
                  child: Text(
                '장소(시설명)',
                style: _titleStyle,
              )),
              TableCell(
                  child: Text(
                info.d184 ?? "",
                style: _contentStyle,
              )),
              TableCell(
                  verticalAlignment: TableCellVerticalAlignment.top,
                  child: Text(
                    "임시저장일",
                    style: _titleStyle,
                  )),
              TableCell(
                  verticalAlignment: TableCellVerticalAlignment.top,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        info.localRegDateTime ?? "",
                        style: _contentStyle,
                      )
                    ],
                  ))
            ],
          ),
        ],
      );

  @override
  Widget build(BuildContext context) {
    return InkWell(
        onTap: () {
          Get.to(() => const FclDetailPage(),
              arguments: {'gbn': gbn, 'localId': info.localId});

          // Get.toNamed("/fcl/${gbn.name}/detail/${info.localId}");
        },
        child: _table);
  }
}

class FclListPage extends StatelessWidget {
  final FclListPageVm vm = Get.put(FclListPageVm());

  FclListPage({super.key});

  @override
  Widget build(BuildContext context) => Layout(
        title: when(vm.gbn, {
          Gbn.fd1: () => "(정기)\n생물안전 3등급 시설 현장점검표",
          Gbn.fd2: () => "(신규허가 ∙ 재확인)\n생물안전 3등급 시설 현장점검표",
          Gbn.fd3: () => "고위험병원체 시설 현장점검표",
        })!,
        child: FormBuilder(
          key: vm.searchFormKey,
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
                          onSubmitted: (_) => vm.submit(),
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
                          endName: BioSearchInName.date2.name,
                          startName: BioSearchInName.date1.name,
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
                        OutlinedButton(
                            onPressed: () async {
                              await vm.list.downloadExcel();
                            },
                            child: const Text("엑셀다운")),
                        ElevatedButton(
                            style: const ButtonStyle(
                                backgroundColor:
                                    MaterialStatePropertyAll<Color>(
                                        Colors.black)),
                            onPressed: () {
                              Get.to(() => const FclDetailPage(),
                                  arguments: {'gbn': vm.gbn});
                              // Get.toNamed(AppRoutes.fclDetailForm.name
                              //     .replaceFirst(RegExp(r'(:id)'), vm.gbn.name));
                            },
                            child: const Text("신규등록")),
                      ].withSpaceBetween(width: 24.w),
                    ),
                    ElevatedButton(
                        onPressed: () {
                          vm.submit();
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
                          text: vm.list.length.toString(),
                          style: robotoTextStyle.copyWith(
                              color: const Color(0xffff381e),
                              fontWeight: FontWeight.w500)),
                      const TextSpan(text: "건")
                    ]))),
                const FclDivider.black(),
                Obx(() => ListView(
                      shrinkWrap: true,
                      primary: false,
                      children: vm.list
                          .map((e) => SizedBox(
                              width: double.infinity,
                              child: _Item(
                                info: e,
                                gbn: vm.gbn,
                              )))
                          .toList()
                          .withWidgetBetween(const FclDivider.form()),
                    ))
              ],
            ),
          ),
        ),
      );
}
