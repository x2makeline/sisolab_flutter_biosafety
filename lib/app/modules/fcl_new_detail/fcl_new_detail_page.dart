import 'package:flutter/material.dart';
import 'package:sisolab_flutter_biosafety/app/global/widgets/detail_category_tab.dart';
import 'package:sisolab_flutter_biosafety/app/modules/fcl_new_detail/widgets/inspection_overview.dart';
import 'package:sisolab_flutter_biosafety/core/constants/constant.dart';

import '../../global/widgets/layout.dart';

class FclNewDetailPage extends StatelessWidget {
  const FclNewDetailPage({super.key});

  @override
  Widget build(BuildContext context) {
    return const Layout(
      title: "${Constant.newTitle}\n${Constant.fclTitle}",
      child: DetailCategoryTab(tabMap: {
        "점검개요": InspectionOverview(),
        "점검개요1": InspectionOverview(),
        "점검개요2": InspectionOverview(),
        "점검개요3": InspectionOverview(),
        "점검개요22": InspectionOverview(),
        "점검개요21": InspectionOverview(),
        "1점검개요2": InspectionOverview(),
        "2점검개요3": InspectionOverview(),
        "3점검개요22": InspectionOverview(),
        "4점검개요21": InspectionOverview(),
        "7점검개요2": InspectionOverview(),
        "88점검개요3": InspectionOverview(),
        "0점검개요22": InspectionOverview(),
        "=점검개요21": InspectionOverview(),
        "점검개요53": InspectionOverview()
      }),
    );
  }
}
