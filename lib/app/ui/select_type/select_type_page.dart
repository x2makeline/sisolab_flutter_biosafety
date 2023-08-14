import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:sisolab_flutter_biosafety/routes/app_routes.dart';

class SelectTypePage extends StatelessWidget {
  const SelectTypePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          ElevatedButton(onPressed: () {
            Get.toNamed(AppRoutes.fclNewLIst.name);
          }, child: Text("신규")),
          ElevatedButton(onPressed: () {
            Get.toNamed(AppRoutes.fclRegularList.name);
          }, child: Text("정기"))
        ],
      ),
    );
  }
}
