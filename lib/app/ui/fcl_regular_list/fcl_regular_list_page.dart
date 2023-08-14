import 'package:flutter/material.dart';
import 'package:sisolab_flutter_biosafety/core/utils/extensions/list_space_between.dart';
import 'package:syncfusion_flutter_datepicker/datepicker.dart';

import '../../../core/constants/constant.dart';
import '../../global/widgets/layout.dart';

class FclRegularListPage extends StatelessWidget {
  const FclRegularListPage({super.key});


  @override
  Widget build(BuildContext context) {
    return Layout(
      title: "${Constant.regularTitle}\n${Constant.fclTitle}",
      child: Padding(
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
    );
  }
}
