import 'package:flutter/material.dart';
import 'package:flutter_form_builder/flutter_form_builder.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:sisolab_flutter_biosafety/app/global/widgets/detail_category_tab.dart';
import 'package:sisolab_flutter_biosafety/app/global/widgets/form_page_bottom.dart';
import 'package:sisolab_flutter_biosafety/app/ui/fcl_new_detail/controllers/fcl_new_detail_controller.dart';
import 'package:sisolab_flutter_biosafety/core/constants/constant.dart';
import 'package:sisolab_flutter_biosafety/core/utils/mc_logger.dart';

import '../../global/widgets/layout.dart';

class FclNewDetailPage extends StatelessWidget with PLoggerMixin {
  const FclNewDetailPage({super.key});

  FclNewDetailController get controller => FclNewDetailController.to;


  @override
  Widget build(BuildContext context) =>
      Layout(
        scrollController: controller.scrollController,
        title: "${Constant.newTitle}\n${Constant.fclTitle}",
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(
              height: 47.h,
            ),
            Obx(() =>
                Text(
                  "문서번호 : ${controller.io.docno}",
                  textAlign: TextAlign.start,
                  style:
                  TextStyle(fontWeight: FontWeight.w500, fontSize: 46.sp),
                )),
            SizedBox(
              height: 24.h,
            ),
            Obx(() {
              log.i("controller.tabIndex ${controller.tabIndex}");
              return FormBuilder(
                  key: controller.formKey,
                  child: DetailCategoryTab(
                      tabMapList: newTabList,
                      activeTabIndex: controller.tabIndex,
                      onTab: (index) => controller.tabIndex = index));
            }),
            FormPageBottom()
          ],
        ),
      );
}
