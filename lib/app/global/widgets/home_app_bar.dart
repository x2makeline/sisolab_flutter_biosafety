import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class HomeAppBar extends AppBar {
  HomeAppBar({super.key})
      : super(
          toolbarHeight: 120.h,
          leadingWidth: 0,
          titleSpacing: 0,
          title: Image.asset("assets/images/logo.png",
              alignment: Alignment.centerLeft, height: 75.h),
        );
}
