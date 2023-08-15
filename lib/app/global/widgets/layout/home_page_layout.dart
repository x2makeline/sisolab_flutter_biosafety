import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:sisolab_flutter_biosafety/app/global/styles/color_styles.dart';
import 'package:sisolab_flutter_biosafety/app/global/widgets/fcl_divider.dart';
import 'package:sisolab_flutter_biosafety/core/utils/extensions/double.dart';

class HomePageLayout extends StatelessWidget {
  const HomePageLayout({super.key, required this.child});

  final Widget child;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        toolbarHeight: 120.h,
        leadingWidth: 0,
        titleSpacing: 0,
        title: Padding(
          padding: EdgeInsets.only(left: 20.w),
          child: Image.asset(
            "assets/images/logo.png",
            alignment: Alignment.centerLeft,
            fit: BoxFit.fitHeight,
            height: 75.h,
          ),
        ),
      ),
      body: Center(
        child: SizedBox(
          width: 800.w,
          child: ListView(

            children: [
              SizedBox(
                height: 179.h,
              ),
              Container(
                decoration: const BoxDecoration(
                    border: Border(
                        bottom: BorderSide(color: ColorGroup.black, width: 1))),
                child: Align(
                  alignment: Alignment.bottomCenter,
                  child: Padding(
                    padding: EdgeInsets.only(bottom: 56.h),
                    child: Text("생물안전 3등급 시설 현장점검",
                        style: TextStyle(
                            color: ColorGroup.black,
                            fontSize: 46.sp,
                            fontWeight: FontWeight.w500)),
                  ),
                ),
              ),
              Column(
                children: [
                  Padding(
                    padding:
                    EdgeInsets.only(left: 46.w, right: 46.w, top: 80.h),
                    child: child,
                  ),
                  SizedBox(
                    height: 80.h,
                  ),
                  const FclDivider.form(),
                  SizedBox(
                    height: 60.h,
                  ),
                  Text(
                    "COPYRIGHT © 2023 질병관리청 ALL RIGHTS RESERVED.",
                    style:
                    TextStyle(fontSize: 24.sp, color: ColorGroup.darkGray),
                  )
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
