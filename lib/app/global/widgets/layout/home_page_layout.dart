import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:sisolab_flutter_biosafety/app/global/styles/color_styles.dart';
import 'package:sisolab_flutter_biosafety/app/global/widgets/fcl_divider.dart';
import 'package:sisolab_flutter_biosafety/app/global/widgets/home_app_bar.dart';

class HomePageLayout extends StatelessWidget {
  const HomePageLayout({super.key, required this.child});

  final Widget child;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: HomeAppBar(),
      body: Center(
        child: SizedBox(
          width: 800.w,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                decoration: const BoxDecoration(
                    border: Border(
                        bottom: BorderSide(color: ColorGroup.black, width: 1))),
                child: Padding(
                  padding: EdgeInsets.all(56.sp),
                  child: Align(
                    alignment: Alignment.bottomCenter,
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
