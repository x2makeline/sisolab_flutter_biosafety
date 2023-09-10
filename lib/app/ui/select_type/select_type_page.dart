import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:sisolab_flutter_biosafety/app/data/models/gbn.dart';
import 'package:sisolab_flutter_biosafety/app/global/styles/color_styles.dart';
import 'package:sisolab_flutter_biosafety/app/global/widgets/fcl_divider.dart';
import 'package:sisolab_flutter_biosafety/app/global/widgets/home_app_bar.dart';
import 'package:sisolab_flutter_biosafety/core/utils/extensions/list_space_between.dart';
import 'package:sisolab_flutter_biosafety/routes/app_routes.dart';

class SelectTypePage extends StatelessWidget {
  const SelectTypePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: HomeAppBar(),
      body: Center(
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                "생물안전 국가관리 통합관리시스템",
                style: TextStyle(fontSize: 54.sp, color: ColorGroup.black),
              ),
              SizedBox(
                height: 120.h,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  InkWell(
                    onTap: () {
                      Get.toNamed(AppRoutes.fclList.name
                          .replaceFirst(RegExp(r'(:id)'), Gbn.fd2.name));
                    },
                    child: Container(
                      padding: EdgeInsets.all(100.sp),
                      color: const Color(0xff0e409f),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Image.asset("assets/images/img_1.png",
                              height: 48.sp, width: 48.sp),
                          SizedBox(
                            height: 28.h,
                          ),
                          Text(
                            "(신규허가 ∙ 재확인)",
                            style: TextStyle(
                                color: Colors.white,
                                fontSize: 28.sp,
                                fontWeight: FontWeight.w500),
                          ),
                          Text('생물안전 3등급 시설\n현장점검표',
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 28.sp,
                              ))
                        ],
                      ),
                    ),
                  ),
                  InkWell(
                    onTap: () {
                      Get.toNamed(AppRoutes.fclList.name
                          .replaceFirst(RegExp(r'(:id)'), Gbn.fd1.name));
                    },
                    child: Container(
                      padding: EdgeInsets.all(100.sp),
                      color: const Color(0xff1157d9),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Image.asset("assets/images/img_2.png",
                              height: 48.sp, width: 48.sp),
                          SizedBox(
                            height: 28.h,
                          ),
                          Text(
                            "(정기)",
                            style: TextStyle(
                                color: Colors.white,
                                fontSize: 28.sp,
                                fontWeight: FontWeight.w500),
                          ),
                          Text('생물안전 3등급 시설\n현장점검표',
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 28.sp,
                              ))
                        ],
                      ),
                    ),
                  ),
                  InkWell(
                    onTap: () {
                      Get.toNamed(AppRoutes.fclList.name
                          .replaceFirst(RegExp(r'(:id)'), Gbn.fd3.name));
                    },
                    child: Container(
                      padding: EdgeInsets.all(100.sp),
                      color: const Color(0xff05bec5),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Image.asset("assets/images/img_3.png",
                              height: 48.sp, width: 48.sp),
                          SizedBox(
                            height: 28.h,
                          ),
                          Text(
                            "고위험병원체",
                            style: TextStyle(
                                color: Colors.white,
                                fontSize: 28.sp,
                                fontWeight: FontWeight.w500),
                          ),
                          Text('안전 및 보안관리\n현장점검표',
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 28.sp,
                              ))
                        ],
                      ),
                    ),
                  ),
                ].withSpaceBetween(width: 40.w),
              ),
              SizedBox(
                width: 800.w,
                child: Column(
                  children: [
                    Padding(
                      padding:
                          EdgeInsets.only(left: 46.w, right: 46.w, top: 80.h),
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
                      style: TextStyle(
                          fontSize: 24.sp, color: ColorGroup.darkGray),
                    )
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
