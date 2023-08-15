import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:sisolab_flutter_biosafety/core/utils/extensions/double.dart';

class TitleArea extends StatelessWidget {
  const TitleArea({super.key, required this.title});

  final String title;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(height: 100.h),
        Text(
          title,
          textAlign: TextAlign.center,
          style: TextStyle(
            fontWeight: FontWeight.w500,
            fontSize: 62.sp
          ),
        ),
        SizedBox(height: 60.h),
      ],
    );
  }
}
