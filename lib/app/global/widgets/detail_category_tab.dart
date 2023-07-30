import 'package:flutter/material.dart';
import 'package:sisolab_flutter_biosafety/app/global/models/fcl_tab.dart';

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
          maxCrossAxisExtent: 200,
          childAspectRatio: 10 / 3,

          addAutomaticKeepAlives: false,
          children: widget.tabMapList
              .asMap()
              .entries
              .map((entry) => entry.key == widget.activeTabIndex
                  ? Container(
                      decoration: BoxDecoration(
                          color: Colors.green,
                          border: Border.all(
                              color: const Color(0xffcccccc), width: 1)),
                      child: Center(
                          child: Text(
                        entry.value.title,
                        textAlign: TextAlign.center,
                        style: const TextStyle(
                          color: Colors.white,
                        ),
                      )),
                    )
                  : InkWell(
                      onTap: () => widget.onChange(entry.key),
                      child: Container(
                        decoration: BoxDecoration(
                            border: Border.all(
                                color: const Color(0xffcccccc), width: 1)),
                        child: Center(
                            child: Text(
                          entry.value.title,
                          textAlign: TextAlign.center,
                        )),
                      ),
                    ))
              .toList(),
        ),
        const SizedBox(
          height: 40,
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
