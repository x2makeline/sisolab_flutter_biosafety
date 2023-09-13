import 'package:flutter/material.dart';
import 'package:flutter_form_builder/flutter_form_builder.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:sisolab_flutter_biosafety/app/global/widgets/fcl_divider.dart';
import 'package:sisolab_flutter_biosafety/app/global/widgets/fcl_input.dart';
import 'package:sisolab_flutter_biosafety/app/global/widgets/field_with_label.dart';
import 'package:sisolab_flutter_biosafety/app/global/widgets/form_builder_sign.dart';
import 'package:sisolab_flutter_biosafety/app/ui/fcl_detail/vms/fcl_detail_vm.dart';
import 'package:sisolab_flutter_biosafety/core/utils/extensions/list_space_between.dart';

/// 고위험 - 종합평가
class Tab37 extends StatelessWidget {
  const Tab37({super.key});

  FclDetailVm get vm => FclDetailVm.to;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text("종합평가",
            style: TextStyle(fontSize: 34.sp, fontWeight: FontWeight.w500)),
        SizedBox(
          height: 22.h,
        ),
        const FclDivider.black(),
        SizedBox(
          height: 47.h,
        ),
        FclFieldView(firstPaddingYn: false, lastDividerYn: false, fieldList: [
          FclNoteField(name: 'd139', initialValue: vm.io.d139, hintText: '')
        ]),
        Text("점검기관",
            style: TextStyle(fontSize: 34.sp, fontWeight: FontWeight.w500)),
        SizedBox(
          height: 22.h,
        ),
        const FclDivider.black(),
        SizedBox(
          height: 47.h,
        ),
        ...[
          FclFieldView(
              firstPaddingYn: false,
              lastPaddingYn: false,
              lastDividerYn: false,
              label: "소속",
              fieldList: [
                FclTextField2(name: 'd157', initialValue: vm.io.d157)
              ]),
          FieldWithLabel(
              label: "성명 / 서명",
              child: Row(
                  children: [
                Expanded(
                    child: FormBuilderTextField(
                  name: 'd140',
                  initialValue: vm.io.d140,
                  decoration: const InputDecoration(hintText: "성명"),
                )),
                FormBuilderSign(
                  name: 'd166',
                  initialValue: vm.io.d166,
                )
              ].withSpaceBetween(width: 20.w))),
          FclFieldView(
              firstPaddingYn: false,
              lastPaddingYn: false,
              lastDividerYn: false,
              label: "소속",
              fieldList: [
                FclTextField2(name: 'd158', initialValue: vm.io.d158)
              ]),
          FieldWithLabel(
              label: "성명 / 서명",
              child: Row(
                  children: [
                Expanded(
                    child: FormBuilderTextField(
                  name: 'd142',
                  initialValue: vm.io.d142,
                  decoration: const InputDecoration(hintText: "성명"),
                )),
                FormBuilderSign(
                  name: 'd143',
                  initialValue: vm.io.d143,
                )
              ].withSpaceBetween(width: 20.w))),
          FclFieldView(
              firstPaddingYn: false,
              lastPaddingYn: false,
              lastDividerYn: false,
              label: "소속",
              fieldList: [
                FclTextField2(name: 'd159', initialValue: vm.io.d159)
              ]),
          FieldWithLabel(
              label: "성명 / 서명",
              child: Row(
                  children: [
                Expanded(
                    child: FormBuilderTextField(
                  name: 'd144',
                  initialValue: vm.io.d144,
                  decoration: const InputDecoration(hintText: "성명"),
                )),
                FormBuilderSign(
                  name: 'd145',
                  initialValue: vm.io.d145,
                )
              ].withSpaceBetween(width: 20.w))),
          FclFieldView(
              firstPaddingYn: false,
              lastPaddingYn: false,
              lastDividerYn: false,
              label: "소속",
              fieldList: [
                FclTextField2(name: 'd160', initialValue: vm.io.d160)
              ]),
          FieldWithLabel(
              label: "성명 / 서명",
              child: Row(
                  children: [
                Expanded(
                    child: FormBuilderTextField(
                  name: 'd146',
                  initialValue: vm.io.d146,
                  decoration: const InputDecoration(hintText: "성명"),
                )),
                FormBuilderSign(
                  name: 'd147',
                  initialValue: vm.io.d147,
                )
              ].withSpaceBetween(width: 20.w)))
        ].withSpaceBetween(height: 40.h),
        SizedBox(
          height: 47.h,
        ),
        const FclDivider.form(),
        Text("수검기관",
            style: TextStyle(fontSize: 34.sp, fontWeight: FontWeight.w500)),
        SizedBox(
          height: 22.h,
        ),
        const FclDivider.black(),
        SizedBox(
          height: 47.h,
        ),
        ...[
          FclFieldView(
              firstPaddingYn: false,
              lastPaddingYn: false,
              lastDividerYn: false,
              label: "소속",
              fieldList: [
                FclTextField2(name: 'd165', initialValue: vm.io.d165)
              ]),
          FieldWithLabel(
              label: "성명 / 서명",
              child: Row(
                  children: [
                Expanded(
                    child: FormBuilderTextField(
                  name: 'd148',
                  initialValue: vm.io.d148,
                  decoration: const InputDecoration(hintText: "성명"),
                )),
                FormBuilderSign(
                  name: 'd149',
                  initialValue: vm.io.d149,
                )
              ].withSpaceBetween(width: 20.w))),
          FclFieldView(
              firstPaddingYn: false,
              lastPaddingYn: false,
              lastDividerYn: false,
              label: "소속",
              fieldList: [
                FclTextField2(name: 'd162', initialValue: vm.io.d162)
              ]),
          FieldWithLabel(
              label: "성명 / 서명",
              child: Row(
                  children: [
                Expanded(
                    child: FormBuilderTextField(
                  name: 'd150',
                  initialValue: vm.io.d150,
                  decoration: const InputDecoration(hintText: "성명"),
                )),
                FormBuilderSign(
                  name: 'd151',
                  initialValue: vm.io.d151,
                )
              ].withSpaceBetween(width: 20.w))),
          FclFieldView(
              firstPaddingYn: false,
              lastPaddingYn: false,
              lastDividerYn: false,
              label: "소속",
              fieldList: [
                FclTextField2(name: 'd163', initialValue: vm.io.d163)
              ]),
          FieldWithLabel(
              label: "성명 / 서명",
              child: Row(
                  children: [
                Expanded(
                    child: FormBuilderTextField(
                  name: 'd152',
                  initialValue: vm.io.d152,
                  decoration: const InputDecoration(hintText: "성명"),
                )),
                FormBuilderSign(
                  name: 'd153',
                  initialValue: vm.io.d153,
                )
              ].withSpaceBetween(width: 20.w))),
          FclFieldView(
              firstPaddingYn: false,
              lastPaddingYn: false,
              lastDividerYn: false,
              label: "소속",
              fieldList: [
                FclTextField2(name: 'd164', initialValue: vm.io.d164)
              ]),
          FieldWithLabel(
              label: "성명 / 서명",
              child: Row(
                  children: [
                Expanded(
                    child: FormBuilderTextField(
                  name: 'd154',
                  initialValue: vm.io.d154,
                  decoration: const InputDecoration(hintText: "성명"),
                )),
                FormBuilderSign(
                  name: 'd155',
                  initialValue: vm.io.d155,
                )
              ].withSpaceBetween(width: 20.w)))
        ].withSpaceBetween(height: 40.h)
      ],
    );
  }
}
