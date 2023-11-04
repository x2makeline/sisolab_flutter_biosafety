import 'package:dartlin/control_flow.dart';
import 'package:flutter/material.dart';
import 'package:flutter_form_builder/flutter_form_builder.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:sisolab_flutter_biosafety/app/global/styles/color_styles.dart';
import 'package:sisolab_flutter_biosafety/app/global/widgets/fcl_divider.dart';
import 'package:sisolab_flutter_biosafety/app/global/widgets/fcl_image_picker.dart';
import 'package:sisolab_flutter_biosafety/app/global/widgets/field_with_label.dart';
import 'package:sisolab_flutter_biosafety/core/utils/extensions/list_space_between.dart';

enum FclInputFieldType { radio, image, note, text }

abstract class FclField<T> {
  /// 초깃값
  T? initialValue;

  /// 과년도 데이터
  T? preValue;

  /// form name
  String name;

  FclInputFieldType type;

  bool? enabled;

  FclField(
      {required this.type,
      this.initialValue,
      this.enabled,
      this.preValue,
      required this.name});
}

enum TextSuffixType { count }

class FclTextField2 extends FclField<String> {
  FclTextField2(
      {super.initialValue,
      super.preValue,
      required super.name,
      super.enabled,
      this.suffixType,
      this.radioField})
      : super(type: FclInputFieldType.text);

  TextSuffixType? suffixType;
  FclRadioField? radioField;
}

class FclNoteField extends FclField<String> {
  String? hintText;

  FclNoteField(
      {this.hintText,
      super.enabled,
      super.initialValue,
      super.preValue,
      required super.name})
      : super(type: FclInputFieldType.note);
}

class FclImageField extends FclField<List<String>> {
  FclImageField(
      {super.initialValue, super.enabled, super.preValue, required super.name})
      : super(type: FclInputFieldType.image);
}

class FclRadioField extends FclField<String> {
  final bool labelWithKey;
  final Map<String, String> map;
  final WrapAlignment wrapAlignment;
  final OptionsOrientation orientation;

  final void Function(String?)? onChanged;

  FclRadioField({
    this.onChanged,
    super.enabled,
    required super.name,
    required this.map,
    super.preValue,
    this.labelWithKey = false,
    super.initialValue,
    this.wrapAlignment = WrapAlignment.start,
    this.orientation = OptionsOrientation.wrap,
  }) : super(type: FclInputFieldType.radio);
}

class FclInputField {
  String? label;
  bool preYn;
  List<FclField> fieldList;

  FclInputField({this.label, required this.fieldList, this.preYn = false});
}

class FclFieldView extends StatelessWidget {
  const FclFieldView(
      {super.key,
      this.label,
      this.preYn = false,
      required this.fieldList,
      this.lastDividerYn = true,
      this.lastPaddingYn = true,
      this.firstPaddingYn = true,
      this.desc});

  final bool lastDividerYn;
  final bool lastPaddingYn;
  final bool firstPaddingYn;
  final String? label;
  final bool preYn;
  final List<FclField> fieldList;
  final List<String>? desc;

  Widget note(FclNoteField field) => FormBuilderTextField(
        name: field.name,
        maxLines: 3,
        enabled: field.enabled ?? true,
        initialValue: field.initialValue,
        keyboardType: TextInputType.multiline,
        style: TextStyle(
          fontSize: 28.sp,
        ),
        decoration: InputDecoration(
            hintText: field.hintText ?? "관련 내용을 입력해주세요.",
            constraints: const BoxConstraints()),
      );

  Widget text(FclTextField2 field) => FormBuilderTextField(
        initialValue: field.initialValue,
        enabled: field.enabled ?? true,
        name: field.name,
        decoration: when(field.suffixType, {
              TextSuffixType.count: () => InputDecoration(
                    suffixIcon: Padding(
                      padding: EdgeInsets.all(20.sp),
                      child: const Text('명'),
                    ),
                  )
            }) ??
            const InputDecoration(),
      );

  Widget image(FclImageField field) => FieldWithLabel(
        label: "이미지 첨부",
        child: FormBuilderFclImagePicker(
          name: field.name,
          initialValue: field.initialValue,
        ),
      );

  Widget radio(FclRadioField field) => DefaultTextStyle(
        style: TextStyle(fontSize: 28.sp, color: ColorGroup.black),
        child: FormBuilderRadioGroup(
            enabled: field.enabled ?? true,
            wrapSpacing: 100.w,
            onChanged: field.onChanged,
            wrapAlignment: field.wrapAlignment,
            decoration: const InputDecoration(
                contentPadding: EdgeInsets.zero,
                enabledBorder: OutlineInputBorder(borderSide: BorderSide.none)),
            orientation: field.orientation,
            initialValue: field.initialValue,
            name: field.name,
            options: field.map.entries
                .map((e) => FormBuilderFieldOption(
                      value: e.key,
                      child: Text(
                          "${field.labelWithKey ? "${e.key} =  " : ""}${e.value}"),
                    ))
                .toList()),
      );

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        if (firstPaddingYn)
          SizedBox(
            height: 40.h,
          ),
        if (label != null) Text(label!, style: context.textTheme.titleLarge),
        if (desc != null)
          Padding(
            padding: EdgeInsets.all(10.sp),
            child: Container(
              width: double.infinity,
              padding: EdgeInsets.all(30.sp),
              decoration: BoxDecoration(
                  border: Border.all(
                      color: const Color(0xff188657),
                      style: BorderStyle.solid,
                      width: 4)),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: desc!
                    .map((e) => Text(
                          e,
                          style: TextStyle(fontSize: 28.sp),
                        ))
                    .toList(),
              ),
            ),
          ),
        Column(
          children: fieldList
              .map((e) => when<FclInputFieldType, Widget>(e.type, {
                    FclInputFieldType.text: () =>
                        (e as FclTextField2).let((it) => it.radioField != null
                            ? Row(
                                children: [
                                  Flexible(child: text(it)),
                                  SizedBox(width: 20.w),
                                  Flexible(child: radio(it.radioField!))
                                ],
                              )
                            : text(it)),
                    FclInputFieldType.image: () => image(e as FclImageField),
                    FclInputFieldType.radio: () => radio(e as FclRadioField),
                    FclInputFieldType.note: () => note(e as FclNoteField)
                  })!)
              .toList()
              .withSpaceBetween(height: 20.h),
        ),
        if (preYn && fieldList.any((element) => element.preValue != null))
          DefaultTextStyle(
            style: TextStyle(color: const Color(0xffff381e), fontSize: 28.sp),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(
                  height: 40.h,
                ),
                Text(
                  "과년도 자료",
                  style: TextStyle(color: ColorGroup.black, fontSize: 24.sp),
                ),
                Container(
                  padding: EdgeInsets.all(30.sp),
                  color: const Color(0xfff2f2f2),
                  width: double.infinity,
                  child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: fieldList
                          .where((element) => element.preValue != null)
                          .map((it) =>
                              when<FclInputFieldType, Widget>(it.type, {
                                FclInputFieldType.radio: () =>
                                    (it as FclRadioField).let((it) => Text(
                                        it.map[it.preValue!] ?? it.preValue!))
                              }).orElse(() => Text(it.preValue!)))
                          .toList()),
                )
              ],
            ),
          ),
        if (lastPaddingYn)
          SizedBox(
            height: 40.h,
          ),
        if (lastDividerYn) const FclDivider.form()
      ],
    );
  }
}
