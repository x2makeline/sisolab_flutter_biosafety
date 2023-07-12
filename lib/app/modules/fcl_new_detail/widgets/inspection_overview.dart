import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:sisolab_flutter_biosafety/app/modules/fcl_new_detail/controllers/fcl_new_detail_controller.dart';

class InspectionOverview extends GetView<FclNewDetailController> {
  const InspectionOverview({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        SizedBox(
          height: 30,
        ),
        // GridView.builder(gridDelegate: SliverGridDelegateWithMaxCrossAxisExtent(
        //   maxCrossAxisExtent: 500,
        //   mainAxisExtent: 77,
        // ),shrinkWrap: true, itemBuilder: (context, i) => Text("운영기관")),
        // GridView.count(
        //   shrinkWrap: true,
        //   crossAxisCount: 2,
        //   crossAxisSpacing: 10,
        //   mainAxisSpacing: 10,
        //
        //   children: [
        //     Text("운영기관"),
        //     Text("운영기관"),
        //     Text("운영기관"),
        //     Text("운영기관"),
        //     Text("운영기관"),
        //     // Column(
        //     //   children: [
        //     //     Text("운영기관"),
        //     //     TextField(
        //     //       decoration: InputDecoration(hintText: "운영기관명"),
        //     //     )
        //     //   ],
        //     // ),
        //     // Column(
        //     //   children: [
        //     //     Text("설치 ∙ 운영 장소"),
        //     //     TextField(
        //     //       decoration: InputDecoration(hintText: "설치운영 장소"),
        //     //     )
        //     //   ],
        //     // ),
        //     // Column(
        //     //   children: [
        //     //     Text("안전관리등급"),
        //     //     TextField(
        //     //       decoration: InputDecoration(hintText: "안전관리등급"),
        //     //     )
        //     //   ],
        //     // )
        //   ],
        // ),
      ],
    );
  }
}
