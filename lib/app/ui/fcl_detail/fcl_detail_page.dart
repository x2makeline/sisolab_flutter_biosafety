import 'package:dartlin/control_flow.dart';
import 'package:flutter/material.dart';
import 'package:flutter_form_builder/flutter_form_builder.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:sisolab_flutter_biosafety/app/global/models/fcl_big_category.dart';
import 'package:sisolab_flutter_biosafety/app/global/widgets/detail_category_tab.dart';
import 'package:sisolab_flutter_biosafety/app/global/widgets/empty_box.dart';
import 'package:sisolab_flutter_biosafety/app/global/widgets/form_page_bottom.dart';
import 'package:sisolab_flutter_biosafety/app/global/widgets/layout.dart';
import 'package:sisolab_flutter_biosafety/app/ui/fcl_detail/vms/fcl_detail_vm.dart';
import 'package:sisolab_flutter_biosafety/core/constants/constant.dart';
import 'package:sisolab_flutter_biosafety/core/utils/mc_logger.dart';

class FclDetailPage extends StatelessWidget with PLoggerMixin {
  const FclDetailPage({super.key});

  FclDetailVm get vm => FclDetailVm.to;

  @override
  Widget build(BuildContext context) => Layout(
        scrollController: vm.scrollController,
        title: "${when(vm.bigCategory, {
              FclBigCategory.NEW: () => Constant.newTitle,
              FclBigCategory.REGULAR: () => Constant.regularTitle,
            })}\n${Constant.fclTitle}",
        child: Obx(() {
          if (vm.isLoading) {
            return const Placeholder();
          } else {
            return Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(
                  height: 47.h,
                ),
                Obx(() => vm.idx == null
                    ? const EmptyBox()
                    : Column(
                        children: [
                          Text(
                            "문서번호 : ${vm.io.docno}",
                            textAlign: TextAlign.start,
                            style: TextStyle(
                                fontWeight: FontWeight.w500, fontSize: 46.sp),
                          ),
                          SizedBox(
                            height: 24.h,
                          )
                        ],
                      )),
                Obx(() => FormBuilder(
                    key: vm.formKey,
                    child: DetailCategoryTab(
                        tabMapList: when(vm.bigCategory, {
                          FclBigCategory.NEW: () => newTabList,
                          FclBigCategory.REGULAR: () => regularTabList,
                        })!,
                        activeTabIndex: vm.tabIndex,
                        onTab: (index) => vm.tabIndex = index))),
                FormPageBottom()
              ],
            );
          }
        }),
      );
}
