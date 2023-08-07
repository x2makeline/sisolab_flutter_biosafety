import 'package:flutter/material.dart';
import 'package:sisolab_flutter_biosafety/core/utils/extensions/double.dart';
import 'package:velocity_x/velocity_x.dart';

class TopBar extends StatelessWidget implements PreferredSizeWidget {
  const TopBar({super.key});

  @override
  Widget build(BuildContext context) => AppBar(
        centerTitle: false,
        toolbarHeight: 120.sz,
        leadingWidth: 0,

        titleSpacing: 0,
        title: Padding(
          padding: EdgeInsets.only(left: 20.sz),
          child: Image.asset(
            "assets/images/logo.png",
            alignment: Alignment.centerLeft,
            fit: BoxFit.fitHeight,
            height: 75.sz,
          ),
        ),
        actions: [
          IconButton(
              onPressed: () {},
              icon: Image.asset(
                "assets/images/icon_search.png",
                height: 32.sz,
              )),
          IconButton(
              onPressed: () {},
              icon: Image.asset("assets/images/icon_align.png", height: 32.sz))
        ],
        bottom: PreferredSize(
            preferredSize: Size.fromHeight(90.sz),
            child: Container(
                height: 90.sz,
                color: Theme.of(context).primaryColor,
                child: Padding(
                  padding: EdgeInsets.only(left: 20.sz),
                  child: Align(
                    alignment: Alignment.centerLeft,
                    child: "생물안전 3등급 시설 설치·운영 현장점검"
                        .text
                        .size(28.sz)
                        .fontWeight(FontWeight.w500)
                        .white
                        .make(),
                  ),
                ))),
      );

  @override
  Size get preferredSize =>  Size(double.infinity, 210.sz);
}
