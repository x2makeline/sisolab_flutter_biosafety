import 'package:flutter/material.dart';
import 'package:flutter_form_builder/flutter_form_builder.dart';
import 'package:sisolab_flutter_biosafety/app/global/widgets/fcl/fcl_image_picker.dart';
import 'package:sisolab_flutter_biosafety/app/global/widgets/form_builder/form_builder_image.dart';
import 'package:sisolab_flutter_biosafety/app/global/widgets/template/note_template.dart';
import 'package:sisolab_flutter_biosafety/app/modules/fcl_new_detail/fcl_new_detail_fields.dart';

class CheckBasicData extends StatelessWidget {
  CheckBasicData({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text("설치 ∙ 운영 적격성 평가 - 1. 시설 설치 운영 기본 자료 확인",
            style: Theme.of(context).textTheme.headlineSmall),
        FclImagePicker(),
        SizedBox(
            width: double.infinity,
            child: OutlinedButton(onPressed: () {}, child: Text("과년도 보기"))),
        const Divider(),
        const Text("연구자 및 관리자 생물안전교육 이수",
            style: TextStyle(fontWeight: FontWeight.bold)),
        NoteTemplate(
            label: "이미지 첨부",
            onSaved: (a) {
              print(a);
            },
            name: FclNewDetailFields.cbtframImageNote.name,
            builder: (_) =>
                [FormBuilderImage(name: FclNewDetailFields.cbtframImage.name, onSaved: (a) {
                  print(a);
                },)]),
        NoteTemplate(
            label: "관리책임자",
            name: FclNewDetailFields.managerNote.name,
            builder: (_) => [
                  Row(
                    children: [
                      Flexible(
                          child: FormBuilderTextField(
                        name: FclNewDetailFields.managerCount.name,
                        decoration: const InputDecoration(
                          suffixText: "명",
                        ),
                      )),
                      Flexible(
                          child: FormBuilderRadioGroup(
                              decoration: const InputDecoration(
                                  enabledBorder: InputBorder.none),
                              name: FclNewDetailFields.managerRadio.name,
                              wrapAlignment: WrapAlignment.spaceBetween,
                              options:
                                  FclNewDetailFields.managerRadio.map!.entries
                                      .map((e) => FormBuilderFieldOption(
                                            value: e.key,
                                            child: Text(e.value),
                                          ))
                                      .toList()))
                    ],
                  )
                ]),
        NoteTemplate(
            label: "관리자",
            name: FclNewDetailFields.administratorNote.name,
            builder: (_) => [
                  Row(
                    children: [
                      Flexible(
                          child: FormBuilderTextField(
                        name: FclNewDetailFields.administratorCount.name,
                        decoration: const InputDecoration(
                          suffixText: "명",
                        ),
                      )),
                      Flexible(
                          child: FormBuilderRadioGroup(
                              decoration: const InputDecoration(
                                  enabledBorder: InputBorder.none),
                              name: FclNewDetailFields.administratorRadio.name,
                              wrapAlignment: WrapAlignment.spaceBetween,
                              options: FclNewDetailFields
                                  .administratorRadio.map!.entries
                                  .map((e) => FormBuilderFieldOption(
                                        value: e.key,
                                        child: Text(e.value),
                                      ))
                                  .toList()))
                    ],
                  )
                ]),
        NoteTemplate(
            label: "사용자",
            name: FclNewDetailFields.userNote.name,

            builder: (_) => [
              Row(
                children: [
                  Flexible(
                      child: FormBuilderTextField(
                        name: FclNewDetailFields.userCount.name,
                        decoration: const InputDecoration(
                          suffixText: "명",
                        ),
                      )),
                  Flexible(
                      child: FormBuilderRadioGroup(
                          decoration: const InputDecoration(
                              enabledBorder: InputBorder.none),
                          name: FclNewDetailFields.userRadio.name,
                          wrapAlignment: WrapAlignment.spaceBetween,
                          options: FclNewDetailFields
                              .userRadio.map!.entries
                              .map((e) => FormBuilderFieldOption(
                            value: e.key,
                            child: Text(e.value),
                          ))
                              .toList()))
                ],
              )
            ]),
        const Divider(),
        Text("밀폐구역 출입자 정상 혈청 보관",
            style: Theme.of(context).textTheme.headlineSmall),
        // NoteTemplate(
        //     label: "이미지 첨부",
        //     name: FclNewDetailFields.cbtframImageNote.name,
        //     builder: (_) =>
        //     [FormBuilderImage(name: FclNewDetailFields.cbtframImage.name)])
      ],
    );
  }
}
