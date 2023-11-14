import 'package:dartlin/control_flow.dart';
import 'package:flutter/material.dart';
import 'package:flutter_form_builder/flutter_form_builder.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:sisolab_flutter_biosafety/app/data/models/gbn.dart';
import 'package:sisolab_flutter_biosafety/app/global/styles/color_styles.dart';
import 'package:sisolab_flutter_biosafety/app/global/widgets/empty_box.dart';
import 'package:sisolab_flutter_biosafety/app/global/widgets/fcl_divider.dart';
import 'package:sisolab_flutter_biosafety/app/global/widgets/form_page_bottom.dart';
import 'package:sisolab_flutter_biosafety/app/global/widgets/title_area.dart';
import 'package:sisolab_flutter_biosafety/app/global/widgets/top_bar.dart';
import 'package:sisolab_flutter_biosafety/app/ui/fcl_detail/vms/fcl_detail_vm.dart';
import 'package:sisolab_flutter_biosafety/core/utils/extensions/list_space_between.dart';
import 'package:sliver_tools/sliver_tools.dart';

class FclDetailPage extends StatelessWidget {
  const FclDetailPage({super.key});

  @override
  Widget build(BuildContext context) {
    return GetBuilder<FclDetailVm>(
      init: FclDetailVm(),
      assignId: true,
      builder: (controller) {
        return Scaffold(
          appBar: const TopBar(),
          body: CustomScrollView(
            controller: controller.scrollController,
            shrinkWrap: true,
            slivers: [
              SliverToBoxAdapter(
                child: Padding(
                  padding: EdgeInsets.symmetric(horizontal: 40.w),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Center(
                        child: TitleArea(
                          title: when(controller.gbn, {
                            Gbn.fd1: () => "(정기)\n생물안전 3등급 시설 현장점검표",
                            Gbn.fd2: () => "(신규허가 ∙ 재확인)\n생물안전 3등급 시설 현장점검표",
                            Gbn.fd3: () => "고위험병원체 시설 현장점검표",
                          })!,
                        ),
                      ),
                      const FclDivider.black(),
                      SizedBox(
                        height: 47.h,
                      ),
                      if (controller.localId == null)
                        const EmptyBox()
                      else
                        Obx(() => Column(
                              children: [
                                Text(
                                  "로컬 ID : ${controller.io.localId}",
                                  textAlign: TextAlign.start,
                                  style: TextStyle(
                                      fontWeight: FontWeight.w500,
                                      fontSize: 46.sp),
                                ),
                                SizedBox(
                                  height: 24.h,
                                )
                              ],
                            )),
                    ],
                  ),
                ),
              ),
              SliverPinnedHeader(
                child: Padding(
                  padding: EdgeInsets.symmetric(horizontal: 40.w),
                  child: Obx(() => Container(
                        color: context.theme.scaffoldBackgroundColor,
                        child: Wrap(
                          children: controller.tabList
                              .asMap()
                              .entries
                              .map((entry) => Container(
                                    height: 90.h,
                                    width: 292.w,
                                    decoration: BoxDecoration(
                                        border: Border.all(
                                            color: ColorGroup.gray, width: 1)),
                                    child: entry.key == controller.tabIndex
                                        ? Container(
                                            decoration: const BoxDecoration(
                                              color: ColorGroup.green,
                                            ),
                                            child: Center(
                                                child: Text(
                                              entry.value.title,
                                              textAlign: TextAlign.center,
                                              style: TextStyle(
                                                color: Colors.white,
                                                fontSize: 24.sp,
                                              ),
                                            )),
                                          )
                                        : InkWell(
                                            onTap: () => controller
                                                .setTabIndex(entry.key),
                                            child: Center(
                                                child: Text(
                                              entry.value.title,
                                              textAlign: TextAlign.center,
                                              style: TextStyle(
                                                  fontSize: 24.sp,
                                                  color:
                                                      const Color(0xff505050)),
                                            )),
                                          ),
                                  ))
                              .toList(),
                        ),
                      )),
                ),
              ),
              SliverList.list(children: [
                SizedBox(
                  height: 40.h,
                ),
                Padding(
                    padding: EdgeInsets.symmetric(horizontal: 40.h),
                    child: FormBuilder(
                        key: controller.formKey,
                        child: Column(
                          mainAxisSize: MainAxisSize.min,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: controller.tabList
                              .asMap()
                              .entries
                              .map((e) => Obx(() => Visibility(
                                    maintainState: true,
                                    visible: controller.tabIndex == e.key,
                                    child: e.value.body,
                                  )))
                              .toList(),
                        ))),
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 40.h),
                  child: FormPageBottom(),
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
                                  fontSize: 24.sp,
                                  color: const Color(0xff101010)),
                              isExpanded: true,
                              padding: EdgeInsets.symmetric(horizontal: 40.w),
                              items: const [
                                DropdownMenuItem(child: Text("관련사이트"))
                              ],
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
              ])
            ],
          ),
        );
      },
    );
  }
}
