import 'package:flutter/material.dart';

class LayoutbuilderWidg extends StatelessWidget {
  final int randomDiv;
  final double dashWidth;

  const LayoutbuilderWidg({super.key, required this.randomDiv, this.dashWidth = 3});

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(builder: (context, constraints) {
      return Flex(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        direction: Axis.horizontal,
        children: List.generate(
            (constraints.constrainWidth() / randomDiv).floor(),
            (index) =>  SizedBox(
                  width: dashWidth,
                  height: 1,
                  child: const DecoratedBox(
                    decoration: BoxDecoration(color: Colors.white70),
                  ),
                )),
      );
    });
  }
}
