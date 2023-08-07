import 'package:flutter/material.dart';
import 'package:sisolab_flutter_biosafety/app/global/models/fcl_tab.dart';
import 'package:sisolab_flutter_biosafety/core/utils/extensions/double.dart';

class DetailCategoryTab extends StatefulWidget {
  const DetailCategoryTab(
      {Key? key,
      required this.tabMapList,
      required this.activeTabIndex,
      required this.onChange})
      : super(key: key);
  final List<FclTab> tabMapList;

  final int activeTabIndex;

  final void Function(int index) onChange;

  @override
  State<DetailCategoryTab> createState() => _DetailCategoryTabState();
}

class _DetailCategoryTabState extends State<DetailCategoryTab>
    with SingleTickerProviderStateMixin {
  @override
  void initState() {
    super.initState();
  }

  FclTab get activeTab => widget.tabMapList.elementAt(widget.activeTabIndex);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        GridView.extent(
          shrinkWrap: true,
          primary: false,
          maxCrossAxisExtent: 292.sz,
          childAspectRatio: 292 / 90,
          addAutomaticKeepAlives: false,
          children: widget.tabMapList
              .asMap()
              .entries
              .map((entry) => Container(
                    height: 90.sz,
                    width: 292.sz,
                    decoration: BoxDecoration(
                        border: Border.all(
                            color: const Color(0xffe0e0e0), width: 1)),
                    child: entry.key == widget.activeTabIndex
                        ? Container(
                            decoration: BoxDecoration(
                              color: Theme.of(context).primaryColor,
                            ),
                            child: Center(
                                child: Text(
                              entry.value.title,
                              textAlign: TextAlign.center,
                              style:  TextStyle(
                                color: Colors.white,
                                fontSize: 24.sz,
                              ),
                            )),
                          )
                        : InkWell(
                            onTap: () => widget.onChange(entry.key),
                            child: Center(
                                child: Text(
                              entry.value.title,
                              textAlign: TextAlign.center,
                              style: TextStyle(fontSize: 24.sz),
                            )),
                          ),
                  ))
              .toList(),
        ),
         SizedBox(
          height: 40.sz,
        ),
        Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [activeTab.body],
        )
      ],
    );
  }
}
