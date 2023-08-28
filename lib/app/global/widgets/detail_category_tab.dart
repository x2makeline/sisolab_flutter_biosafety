import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:sisolab_flutter_biosafety/app/ui/fcl_detail/vms/fcl_detail_vm.dart';
import 'package:sisolab_flutter_biosafety/app/global/models/fcl_tab.dart';
import 'package:sisolab_flutter_biosafety/app/global/styles/color_styles.dart';

class DetailCategoryTab extends StatefulWidget {
  const DetailCategoryTab(
      {Key? key,
      required this.tabMapList,
      required this.activeTabIndex,
      required this.onTab})
      : super(key: key);

  final List<FclTab> tabMapList;

  final int activeTabIndex;

  final void Function(int index) onTab;

  @override
  State<DetailCategoryTab> createState() => _DetailCategoryTabState();
}

class _DetailCategoryTabState extends State<DetailCategoryTab>
    with SingleTickerProviderStateMixin {
  FclDetailVm get _controller => FclDetailVm.to;

  FclTab get activeTab => widget.tabMapList.elementAt(widget.activeTabIndex);

  @override
  Widget build(BuildContext context) => Column(
        children: [
          GridView.extent(
            shrinkWrap: true,
            primary: false,
            maxCrossAxisExtent: 292.w,
            childAspectRatio: 292 / 90,
            addAutomaticKeepAlives: false,
            children: widget.tabMapList
                .asMap()
                .entries
                .map((entry) => Container(
                      height: 90.h,
                      decoration: BoxDecoration(
                          border: Border.all(color: ColorGroup.gray, width: 1)),
                      child: entry.key == widget.activeTabIndex
                          ? Container(
                              decoration: const BoxDecoration(
                                color: ColorGroup.green,
                              ),
                              child: Center(
                                  child: Text(
                                entry.value.title,
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 24.sp,
                                ),
                              )),
                            )
                          : InkWell(
                              onTap: () => widget.onTab(entry.key),
                              child: Center(
                                  child: Text(
                                entry.value.title,
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                    fontSize: 24.sp, color: Color(0xff505050)),
                              )),
                            ),
                    ))
                .toList(),
          ),
          SizedBox(
            height: 40.h,
          ),
          Obx(() => _controller.isLoading
              ? const Placeholder()
              : Column(
                  mainAxisSize: MainAxisSize.min,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [activeTab.body],
                ))
        ],
      );
}
