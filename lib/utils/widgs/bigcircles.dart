import 'package:flutter/material.dart';

class Bigcircles extends StatelessWidget {
  final bool isRight;
  const Bigcircles({super.key, required this.isRight});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 15,
      width: 10,
      child: DecoratedBox(
        decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: isRight?const BorderRadius.only(
                topLeft: Radius.circular(10),
                bottomLeft: Radius.circular(10)):const BorderRadius.only(
                topRight: Radius.circular(10),
                bottomRight: Radius.circular(10))
        ),
      ),
    );
  }
}
