import 'package:flutter/material.dart';
import 'package:flutter_form_builder/flutter_form_builder.dart';
import 'package:sisolab_flutter_biosafety/app/global/styles/button_styles.dart';
import 'package:sisolab_flutter_biosafety/app/global/styles/color_styles.dart';
import 'package:sisolab_flutter_biosafety/app/global/styles/text_styles.dart';
import 'package:sisolab_flutter_biosafety/app/global/vms/network_vm.dart';
import 'package:sisolab_flutter_biosafety/app/global/widgets/fcl_divider.dart';
import 'package:sisolab_flutter_biosafety/app/global/widgets/field_with_label.dart';
import 'package:sisolab_flutter_biosafety/core/utils/extensions/double.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    print(NetworkVm.to.isConnect);
    return Scaffold(
      appBar: AppBar(
        toolbarHeight: 120.sz,
        leadingWidth: 0,
        titleSpacing: 0,
        title: Padding(
          padding: EdgeInsets.only(left: 20.sz),
          child: Image.asset(
            "assets/images/logo.png",
            alignment: Alignment.centerLeft,
            fit: BoxFit.fitHeight,
            height: 75.sz,
          ),
        ),
      ),
      body: Center(
        child: SizedBox(
          width: 800.sz,
          child: Column(
            children: [
              Container(
                height: 278.sz,
                decoration: const BoxDecoration(
                    border: Border(
                        bottom: BorderSide(color: ColorGroup.black, width: 1))),
                child: Align(
                  alignment: Alignment.bottomCenter,
                  child: Padding(
                    padding: EdgeInsets.only(bottom: 56.sz),
                    child: Text("생물안전 3등급 시설 현장점검",
                        style: TextStyle(
                            color: ColorGroup.black,
                            fontSize: 46.sz,
                            fontWeight: FontWeight.w500)),
                  ),
                ),
              ),
              Expanded(
                  child: Column(
                children: [
                  Padding(
                    padding:
                        EdgeInsets.only(left: 46.sz, right: 46.sz, top: 80.sz),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        FieldWithLabel(
                            label: "작업 ID",
                            child: FormBuilderTextField(
                              decoration:
                                  const InputDecoration(hintText: "작업 ID"),
                              name: "id",
                            )),
                        SizedBox(
                          height: 28.sz,
                        ),
                        Text.rich(
                            style: TextStyle(
                                height: 24.sz / 12.sz,
                                fontSize: 24.sz,
                                fontWeight: FontWeight.w500),
                            const TextSpan(children: [
                              TextSpan(text: "\u2022  입력한 ID로 작업을 시작합니다.\n"),
                              TextSpan(text: "\u2022  "),
                              TextSpan(
                                  style: TextStyle(color: ColorGroup.red),
                                  text: "작업자가 변경되는 경우, 앱을 새로 시작하여 ID를 입력하세요.")
                            ])),
                        SizedBox(
                          height: 60.sz,
                        ),
                        SizedBox(
                          width: double.infinity,
                          child: ElevatedButton(
                              style: primaryButtonStyle,
                              onPressed: () {},
                              child: Text(
                                "시작하기",
                                style: buttonTextStyle,
                              )),
                        )
                      ],
                    ),
                  ),
                  SizedBox(height: 80.sz,),
                  const FclDivider.form(),
                  SizedBox(height: 60.sz,),
                   Text("COPYRIGHT © 2023 질병관리청 ALL RIGHTS RESERVED.", style: TextStyle(
                    fontSize: 24.sz,
                    color: ColorGroup.darkGray
                  ),)
                ],
              ))
            ],
          ),
        ),
      ),
    );
  }
}
