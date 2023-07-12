import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:sisolab_flutter_biosafety/app/global/widgets/detail_category_tab.dart';
import 'package:sisolab_flutter_biosafety/app/modules/fcl_new_detail/controllers/fcl_new_detail_controller.dart';
import 'package:sisolab_flutter_biosafety/app/modules/fcl_new_detail/widgets/inspection_overview.dart';
import 'package:sisolab_flutter_biosafety/core/constants/constant.dart';

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
          const SizedBox(height: 20,),
          Text(
            "문서번호 : ${controller.docNo ?? ""}",
            textAlign: TextAlign.start,
            style: Theme.of(context).textTheme.headlineMedium,
          ),
          const SizedBox(height: 10,),
           DetailCategoryTab(tabMapList: newTabList)
        ],
      ),
    );
  }
}
