import 'package:dartlin/control_flow.dart';
import 'package:flutter/material.dart';
import 'package:flutter_form_builder/flutter_form_builder.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:sisolab_flutter_biosafety/app/data/models/gbn.dart';
import 'package:sisolab_flutter_biosafety/app/global/widgets/detail_category_tab.dart';
import 'package:sisolab_flutter_biosafety/app/global/widgets/empty_box.dart';
import 'package:sisolab_flutter_biosafety/app/global/widgets/form_page_bottom.dart';
import 'package:sisolab_flutter_biosafety/app/global/widgets/layout.dart';
import 'package:sisolab_flutter_biosafety/app/ui/fcl_detail/vms/fcl_detail_vm.dart';
import 'package:sisolab_flutter_biosafety/core/utils/mc_logger.dart';

class FclDetailPage extends StatelessWidget with PLoggerMixin {
  const FclDetailPage({super.key});

  FclDetailVm get vm => Get.put(FclDetailVm());

  @override
  Widget build(BuildContext context) => Layout(
        scrollController: vm.scrollController,
        title: when(vm.gbn, {
          Gbn.fd1: () => "(정기)\n생물안전 3등급 시설 현장점검표",
          Gbn.fd2: () => "(신규허가 ∙ 재확인)\n생물안전 3등급 시설 현장점검표",
          Gbn.fd3: () => "고위험병원체 시설 현장점검표",
        })!,
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
                vm.localId == null
                    ? const EmptyBox()
                    : Column(
                        children: [
                          Text(
                            "로컬 ID : ${vm.io.localId}",
                            textAlign: TextAlign.start,
                            style: TextStyle(
                                fontWeight: FontWeight.w500, fontSize: 46.sp),
                          ),
                          SizedBox(
                            height: 24.h,
                          )
                        ],
                      ),
                Obx(() => FormBuilder(
                    key: vm.formKey,
                    child: DetailCategoryTab(
                        tabMapList: vm.tabList,
                        isLoading: vm.isLoading,
                        activeTabIndex: vm.tabIndex,
                        onTab: (index) => vm.tabIndex = index))),
                FormPageBottom()
              ],
            );
          }
        }),
      );
}
