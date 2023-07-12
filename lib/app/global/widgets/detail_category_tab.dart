import 'package:autoscale_tabbarview/autoscale_tabbarview.dart';
import 'package:flutter/material.dart';
import 'package:sisolab_flutter_biosafety/app/global/models/fcl_tab.dart';

class DetailCategoryTab extends StatefulWidget {
  const DetailCategoryTab({Key? key, required this.tabMapList})
      : super(key: key);
  final List<FclTab> tabMapList;

  @override
  State<DetailCategoryTab> createState() => _DetailCategoryTabState();
}

class _DetailCategoryTabState extends State<DetailCategoryTab>
    with SingleTickerProviderStateMixin {
  late final TabController _tabController;

  @override
  void initState() {
    super.initState();
    _tabController =
        TabController(length: widget.tabMapList.length, vsync: this);
    _tabController.addListener(() {
      setState(() {});
    });
  }

  @override
  void dispose() {
    super.dispose();
    _tabController.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        GridView.extent(
          shrinkWrap: true,
          maxCrossAxisExtent: 200,
          childAspectRatio: 10 / 3,
          addAutomaticKeepAlives: false,
          children: widget.tabMapList
              .asMap()
              .entries
              .map((entry) => entry.key == _tabController.index
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
                  : GestureDetector(
                      onTap: () {
                        _tabController.index = entry.key;
                      },
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
        SizedBox(height: 40,),
        AutoScaleTabBarView(
          controller: _tabController,
          children: widget.tabMapList
              .map((e) => Column(
            crossAxisAlignment: CrossAxisAlignment.start,
                    children: [Text(e.title, style: Theme.of(context).textTheme.headlineSmall,), const Divider(), e.body],
                  ))
              .toList(),
        )
        // SizedBox(height : 300, child: TabBarView( children: tabMap.values.toList()))
      ],
    );
  }
}
