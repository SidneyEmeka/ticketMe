import 'package:flutter/material.dart';

class LayoutbuilderWidg extends StatelessWidget {
  final int randomDiv;

  const LayoutbuilderWidg({super.key, required this.randomDiv});

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(builder: (context, constraints) {
      return Flex(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        direction: Axis.horizontal,
        children: List.generate(
            (constraints.constrainWidth() / randomDiv).floor(),
            (index) => const SizedBox(
              width: 3,
              height: 1,
              child: DecoratedBox(decoration: BoxDecoration(color: Colors.white),),
            )),
      );
    });
  }
}
