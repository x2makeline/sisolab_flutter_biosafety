import 'package:flutter/cupertino.dart';
import 'package:sisolab_flutter_biosafety/core/utils/extensions/chunk.dart';
import 'package:sisolab_flutter_biosafety/core/utils/extensions/list_space_between.dart';

class TightGridView extends StatelessWidget {
  const TightGridView(
      {super.key,
      required this.crossAxisCount,
      this.mainAxisSpacing = 0,
      this.crossAxisSpacing = 0,
      required this.children});

  final int crossAxisCount;
  final double mainAxisSpacing;
  final double crossAxisSpacing;
  final List<Widget> children;

  @override
  Widget build(BuildContext context) => Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: children
            .chunk(crossAxisCount)
            .map((e) => Row(
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: List.generate(
                          crossAxisCount,
                          (i) => Flexible(
                              child: e.elementAtOrNull(i) != null
                                  ? e[i]
                                  : const SizedBox.shrink()))
                      .withSpaceBetween(width: crossAxisSpacing),
                ))
            .toList()
            .withSpaceBetween(height: mainAxisSpacing),
      );
}
