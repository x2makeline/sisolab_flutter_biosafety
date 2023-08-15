import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:sisolab_flutter_biosafety/app/global/styles/color_styles.dart';

class TopBar extends StatelessWidget implements PreferredSizeWidget {
  const TopBar({super.key});

  @override
  Widget build(BuildContext context) => AppBar(
        centerTitle: false,
        toolbarHeight: 120.h,
        // leadingWidth: 0,
        titleSpacing: 0,
        leading: IconButton(
          onPressed: () {
            Get.back();
          },
          icon: const Icon(Icons.arrow_back_ios_new_rounded, color: ColorGroup.black),
        ),
        title: Padding(
          padding: EdgeInsets.only(left: 20.w),
          child: Image.asset(
            "assets/images/logo.png",
            alignment: Alignment.centerLeft,
            height: 75.h,
          ),
        ),
        actions: [
          IconButton(
              onPressed: () {},
              icon: Image.asset(
                "assets/images/icon_search.png",
                height: 34.h,
              )),
          IconButton(
              onPressed: () {},
              icon: Image.asset(
                "assets/images/icon_align.png",
                height: 34.h,
              ))
        ],
        bottom: PreferredSize(
            preferredSize: Size(double.infinity, 90.h),
            child: Container(
                height: 90.h,
                color: ColorGroup.green,
                child: Padding(
                  padding: EdgeInsets.only(left: 20.w),
                  child: Align(
                      alignment: Alignment.centerLeft,
                      child: Text("생물안전 3등급 시설 설치·운영 현장점검",
                          style: TextStyle(
                              fontSize: 28.h, fontWeight: FontWeight.w500, color: Colors.white))),
                ))),
      );

  @override
  Size get preferredSize => Size(double.infinity, 210.h);
}
