import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:sisolab_flutter_biosafety/app/global/styles/text_styles.dart';
import 'package:sisolab_flutter_biosafety/app/global/widgets/empty_box.dart';
import 'package:sisolab_flutter_biosafety/app/global/widgets/fcl_divider.dart';
import 'package:sisolab_flutter_biosafety/core/utils/extensions/list_space_between.dart';

import '../../ui/fcl_detail/vms/fcl_detail_vm.dart';

class FormPageBottom extends StatelessWidget {
  FormPageBottom({super.key});

  final _controller = FclDetailVm.to;

  @override
  Widget build(BuildContext context) => Column(
        children: [
          const FclDivider.form(),
          Padding(
              padding: EdgeInsets.only(bottom: 80.h, top: 40.h),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    children: <Widget>[
                      Obx(() => _controller.tabIndex > 0
                          ? OutlinedButton(
                              onPressed: () {
                                _controller.prevTab();
                              },
                              child: Row(
                                children: [
                                  Icon(
                                    Icons.arrow_back_ios,
                                    size: buttonTextStyle?.fontSize,
                                  ),
                                  const Text(
                                    "이전",
                                  ),
                                ],
                              ))
                          : const EmptyBox()),
                      Obx(() => _controller.tabIndex > 0
                          ? SizedBox(
                              width: 20.w,
                            )
                          : const EmptyBox()),
                      Obx(() => _controller.tabIndex < _controller.maxTabindex
                          ? OutlinedButton(
                              onPressed: () {
                                _controller.nextTab();
                              },
                              child: Row(
                                children: [
                                  const Text(
                                    "다음",
                                  ),
                                  Icon(
                                    Icons.arrow_forward_ios,
                                    size: buttonTextStyle?.fontSize,
                                  ),
                                ],
                              ))
                          : const EmptyBox())
                    ],
                  ),
                  Row(
                    children: [
                      OutlinedButton(
                          onPressed: () {
                            Get.back();
                          },
                          child: const Text("취소하기")),
                      ElevatedButton(
                          onPressed: () {
                            _controller.submitLocal();
                          },
                          child: const Text("임시저장")),
                      ElevatedButton(
                          onPressed: () {
                            _controller.submitServer();
                          },
                          child: const Text("저장하기")),
                    ].withSpaceBetween(width: 20.w),
                  )
                ],
              ))
        ],
      );
}
