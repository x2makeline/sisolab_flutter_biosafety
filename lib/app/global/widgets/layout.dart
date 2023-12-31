import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:sisolab_flutter_biosafety/app/global/styles/color_styles.dart';
import 'package:sisolab_flutter_biosafety/app/global/widgets/fcl_divider.dart';
import 'package:sisolab_flutter_biosafety/app/global/widgets/top_bar.dart';
import 'package:sisolab_flutter_biosafety/core/utils/extensions/list_space_between.dart';

import 'title_area.dart';

class Layout extends StatelessWidget {
  const Layout(
      {super.key,
      this.scrollController,
      required this.title,
      required this.child});

  final String title;
  final Widget child;
  final ScrollController? scrollController;

  @override
  Widget build(BuildContext context) => Scaffold(
        appBar: const TopBar(),
        body: ListView(
          controller: scrollController,
          shrinkWrap: true,
          children: [
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 40.w),
              child: Column(
                children: [
                  TitleArea(
                    title: title,
                  ),
                  const FclDivider.black(),
                  child,
                ],
              ),
            ),
            const FclDivider.form(),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 40.h),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(height: 80.h),
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Image.asset(
                        "assets/images/bottom_logo.png",
                        fit: BoxFit.fitHeight,
                        height: 78.h,
                      ),
                      Container(
                        height: 90.h,
                        width: 440.w,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(4),
                            border: Border.all(
                              width: 1,
                              color: ColorGroup.gray,
                            )),
                        child: DropdownButton(
                          borderRadius: BorderRadius.circular(4),
                          elevation: 0,
                          underline: const SizedBox.shrink(),
                          style: TextStyle(
                              fontSize: 24.sp, color: const Color(0xff101010)),
                          isExpanded: true,
                          padding: EdgeInsets.symmetric(horizontal: 40.w),
                          items: const [DropdownMenuItem(child: Text("관련사이트"))],
                          onChanged: (value) {},
                        ),
                      )
                    ],
                  ),
                  SizedBox(
                    height: 60.h,
                  ),
                  DefaultTextStyle(
                      style: TextStyle(
                          fontSize: 24.sp, color: const Color(0xff505050)),
                      child: Row(
                        children: [
                          const Text(
                            "이용안내",
                          ),
                          const Text(
                            '|',
                            style: TextStyle(color: ColorGroup.gray),
                          ),
                          const Text(
                            "개인정보처리방침",
                            style: TextStyle(color: Color(0xff101010)),
                          ),
                          const Text(
                            '|',
                            style: TextStyle(color: ColorGroup.gray),
                          ),
                          const Text("저작권정책")
                        ].withSpaceBetween(width: 24.w),
                      )),
                  SizedBox(
                    height: 60.h,
                  ),
                  Text(
                    "28159 충북 청주시 흥덕구 오송읍 오송생명2로 187 오송보건의료행정타운내 질병관리청",
                    style: TextStyle(
                        fontSize: 24.sp, color: const Color(0xff101010)),
                  ),
                  SizedBox(
                    height: 24.h,
                  ),
                  Row(
                    children: <String>[
                      "이메일  manager@kcda.co.kr",
                      "전화  02-0410-1234",
                      "팩스  02-0410-5678"
                    ]
                        .map((e) => Padding(
                              padding: EdgeInsets.only(right: 40.w),
                              child: Text(
                                e,
                                style: TextStyle(
                                    fontSize: 24.sp,
                                    color: const Color(0xff101010)),
                              ),
                            ))
                        .toList(),
                  ),
                  SizedBox(
                    height: 37.h,
                  ),
                  Text(
                    'COPYRIGHT © 2023 질병관리청 ALL RIGHTS RESERVED.',
                    style: TextStyle(
                        color: const Color(0xff505050), fontSize: 24.sp),
                  ),
                  SizedBox(
                    height: 80.h,
                  ),
                ],
              ),
            )
          ],
        ),
      );
}
