import 'package:flutter/material.dart';

class Smallcircles extends StatelessWidget {
  const Smallcircles({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(3),
      decoration: BoxDecoration(
        shape: BoxShape.circle,
        border: Border.all(
          color: Colors.white
        )
      ),
    );
  }
}
