import 'package:flutter/material.dart';
import 'package:flutter_form_builder/flutter_form_builder.dart';
import 'package:get/get.dart';
import 'package:sisolab_flutter_biosafety/app/global/widgets/detail_category_tab.dart';
import 'package:sisolab_flutter_biosafety/app/global/widgets/form_page_bottom.dart';
import 'package:sisolab_flutter_biosafety/app/modules/fcl_new_detail/controllers/fcl_new_detail_controller.dart';
import 'package:sisolab_flutter_biosafety/core/constants/constant.dart';
import 'package:sisolab_flutter_biosafety/core/utils/extensions/double.dart';

import '../../global/widgets/layout.dart';

class FclNewDetailPage extends GetView<FclNewDetailController> {
  const FclNewDetailPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Layout(
      title: "${Constant.newTitle}\n${Constant.fclTitle}",
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
           SizedBox(
            height: 47.sz,
          ),
          Text(
            "문서번호 : ${controller.docNo ?? ""}",
            textAlign: TextAlign.start,
            style: Theme.of(context).textTheme.headlineMedium,
          ),
           SizedBox(
            height: 46.sz,
          ),
          FormBuilder(
              key: controller.formKey,
              child: Obx(() => DetailCategoryTab(
                  tabMapList: newTabList,
                  activeTabIndex: controller.tabIndex,
                  onChange: (index) => controller.tabIndex = index))),
          FormPageBottom()
        ],
      ),
    );
  }
}
