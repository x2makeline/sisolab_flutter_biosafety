import 'package:flutter/material.dart';
import 'package:sisolab_flutter_biosafety/core/utils/extensions/list_space_between.dart';
import 'package:syncfusion_flutter_datepicker/datepicker.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  AppBar get _appBar => AppBar(
          title: Padding(
            padding: const EdgeInsets.symmetric(vertical: 20),
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Image.asset(
                    "assets/images/logo.png",
                    height: 60,
                    width: 208,
                  ),
                ],
              ),
            ),
          ),
          actions: [
            IconButton(
              onPressed: () {},
              icon: const Icon(Icons.search),
            ),
            IconButton(
              onPressed: () {},
              icon: const Icon(Icons.two_k_outlined),
            )
          ]);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: _appBar,
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: ListView(
          children: [
            const Column(
              children: [
                SizedBox(height: 70),
                Text(
                  "(신규허가 ∙ 재확인)\n생물안전 3등급 시설 현장점검표",
                  textAlign: TextAlign.center,
                  style: TextStyle(fontSize: 36, fontWeight: FontWeight.bold),
                ),
                SizedBox(height: 30),
              ],
            ),
            const Divider(),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 20),
              child: Row(
                children: [
                  Flexible(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const Text("제출기관",
                            style: TextStyle(fontWeight: FontWeight.bold)),
                        const TextField(
                          decoration: InputDecoration(hintText: "제출기관"),
                        )
                      ].withSpaceBetween(height: 10),
                    ),
                  ),
                  Flexible(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text("기간선택"),
                        TextField(
                          decoration: InputDecoration(
                            hintText: "YYYY.MM.DD",
                            suffixIcon: IconButton(
                              icon: Icon(Icons.calendar_month),
                              onPressed: () {
                                showDialog(
                                    context: context,
                                    builder: (context) {
                                      return AlertDialog(
                                        content: SizedBox(
                                          width: 300,
                                          height: 300,
                                          child: SfDateRangePicker(
                                            showActionButtons: true,
                                            cancelText: "닫기",
                                            confirmText: "확인",
                                            allowViewNavigation: true,
                                            onCancel: () {
                                              Navigator.of(context).pop();
                                            },
                                            onSubmit: (c) {
                                              print( c.runtimeType.toString());
                                              Navigator.of(context).pop();
                                            },
                                          ),
                                        ),
                                      );
                                    });
                              },
                            ),
                          ),
                        ),
                      ],
                    ),
                  )
                ],
              ),
            ),
            const Divider(
              color: Color(0xffcccccc),
            ),
          ],
        ),
      ),
    );
  }
}
