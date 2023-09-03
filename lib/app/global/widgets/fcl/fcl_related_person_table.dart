import 'package:flutter/material.dart';
import 'package:flutter_form_builder/flutter_form_builder.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:sisolab_flutter_biosafety/app/global/models/related_person_col.dart';
import 'package:sisolab_flutter_biosafety/app/global/styles/color_styles.dart';
import 'package:sisolab_flutter_biosafety/app/global/widgets/form_builder/form_builder_sign.dart';
import 'package:sisolab_flutter_biosafety/core/utils/extensions/list_space_between.dart';

class FclRelatedPersonTable extends StatelessWidget {
  const FclRelatedPersonTable(
      {super.key, this.list = const [], this.onSubmitted});

  final List<FclRelatedPersonCol> list;
  final void Function(String?)? onSubmitted;

  Widget _flex({required Widget child}) => Flexible(
        fit: FlexFit.tight,
        flex: 3,
        child: child,
      );

  @override
  Widget build(BuildContext context) {
    return DefaultTextStyle(
      style: TextStyle(fontSize: 24.sp, color: ColorGroup.black),
      child: Column(
        children: [
          Row(
            children: [
              const Flexible(flex: 2, fit: FlexFit.tight, child: Text("구분")),
              ...list.map((e) => _flex(
                    child: Text(
                      e.title,
                      textAlign: TextAlign.center,
                    ),
                  ))
            ].withSpaceBetween(width: 20.w),
          ),
          SizedBox(
            height: 15.h,
          ),
          ...[
            Row(
                children: [
              const Flexible(
                  flex: 2, fit: FlexFit.tight, child: Text("성명 / 서명")),
              ...list.map((e) => _flex(
                    child: Row(
                      mainAxisSize: MainAxisSize.max,
                      children: [
                        Expanded(
                            child: FormBuilderTextField(
                          onSubmitted: onSubmitted,
                          name: e.nameNm,
                          initialValue: e.initialName,
                          decoration:
                              InputDecoration(hintText: "${e.hintText}이름"),
                        )),
                        SizedBox(
                          width: 10.w,
                        ),
                        FormBuilderSign(
                          name: e.signatureNm,
                          initialValue: e.initialSignature,
                        )
                      ],
                    ),
                  ))
            ].withSpaceBetween(width: 20.w)),
            Row(
                children: [
              const Flexible(flex: 2, fit: FlexFit.tight, child: Text("연락처")),
              ...list.map((e) => _flex(
                  child: FormBuilderTextField(
                      onSubmitted: onSubmitted,
                      initialValue: e.initialContact,
                      name: e.contactNm,
                      decoration:
                          InputDecoration(hintText: "${e.hintText}연락처"))))
            ].withSpaceBetween(width: 20.w)),
            Row(
              children: [
                const Flexible(flex: 2, fit: FlexFit.tight, child: Text("이메일")),
                ...list.map((e) => _flex(
                    child: FormBuilderTextField(
                        onSubmitted: onSubmitted,
                        initialValue: e.initialEmail,
                        name: e.emailNm,
                        decoration:
                            InputDecoration(hintText: "${e.hintText}이메일"))))
              ].withSpaceBetween(width: 20.w),
            ),
            Row(
              children: [
                const Flexible(flex: 2, fit: FlexFit.tight, child: Text("핸드폰")),
                ...list.map((e) => _flex(
                    child: FormBuilderTextField(
                        onSubmitted: onSubmitted,
                        initialValue: e.initialCellPhone,
                        name: e.cellPhoneNm,
                        decoration:
                            InputDecoration(hintText: "${e.hintText}핸드폰"))))
              ].withSpaceBetween(width: 20.w),
            )
          ].withSpaceBetween(height: 20.h)
        ],
      ),
    );
  }
}
