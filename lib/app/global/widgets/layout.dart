import 'package:flutter/material.dart';

import 'title_area.dart';
import 'top_bar.dart';

class Layout extends StatelessWidget {
  const Layout({super.key, required this.title, required this.child});

  final String title;
  final Widget child;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const TopBar(),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: ListView(
          children: [
            TitleArea(
              title: title,
            ),
            const Divider(),
            child,
            const SizedBox(height : 100)
          ],
        ),
      ),
    );
  }
}
