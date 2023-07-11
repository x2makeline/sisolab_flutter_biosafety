import 'package:autoscale_tabbarview/autoscale_tabbarview.dart';
import 'package:flutter/material.dart';

class DetailCategoryTab extends StatefulWidget {
  const DetailCategoryTab({Key? key, required this.tabMap}) : super(key: key);
  final Map<String, Widget> tabMap;

  @override
  State<DetailCategoryTab> createState() => _DetailCategoryTabState();
}

class _DetailCategoryTabState extends State<DetailCategoryTab>
    with SingleTickerProviderStateMixin {
  late final TabController _tabController;

  @override
  void initState() {
    super.initState();
    _tabController = TabController(length: widget.tabMap.length, vsync: this);
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        GridView(
          shrinkWrap: true,

          gridDelegate:
          SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 3
            
          ),
          children: widget.tabMap.keys.map((e) => Container(
            height : 10,
              width:  100,
              child: Center(child: Text(e)))).toList(),
        ),
        AutoScaleTabBarView(
          controller: _tabController,
          children: widget.tabMap.values.toList(),
        )
        // SizedBox(height : 300, child: TabBarView( children: tabMap.values.toList()))
      ],
    );
  }
}
