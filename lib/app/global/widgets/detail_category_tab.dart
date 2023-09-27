import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:sisolab_flutter_biosafety/app/global/models/fcl_tab.dart';
import 'package:sisolab_flutter_biosafety/app/global/styles/color_styles.dart';

class DetailCategoryTab extends StatefulWidget {
  const DetailCategoryTab({
    Key? key,
    required this.tabMapList,
    required this.activeTabIndex,
    required this.onTab,
  }) : super(key: key);

  final List<FclTab> tabMapList;

  final int activeTabIndex;

  final void Function(int index) onTab;

  @override
  State<DetailCategoryTab> createState() => _DetailCategoryTabState();
}

class _DetailCategoryTabState extends State<DetailCategoryTab>
    with SingleTickerProviderStateMixin {
  FclTab get activeTab => widget.tabMapList.elementAt(widget.activeTabIndex);

  @override
  Widget build(BuildContext context) => Column(
        children: [
          Wrap(
            children: widget.tabMapList
                .asMap()
                .entries
                .map((entry) => Container(
                      height: 90.h,
                      width: 292.w,
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
                                    fontSize: 24.sp,
                                    color: const Color(0xff505050)),
                              )),
                            ),
                    ))
                .toList(),
          ),
          SizedBox(
            height: 40.h,
          ),
          Column(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [activeTab.body],
          )
        ],
      );
}
