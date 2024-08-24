import 'package:flutter/material.dart';

import '../styles/stylings.dart';

class aTab extends StatelessWidget {
  final String tabTitle;
  final bool isLeft;
  const aTab({super.key, required this.tabTitle, required this.isLeft});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Container(
      alignment: Alignment.center,
      decoration: BoxDecoration(
          color: isLeft?Stylings.brown.withOpacity(0.8):Stylings.brown.withOpacity(0.5),
          borderRadius: isLeft?const BorderRadius.horizontal(left: Radius.circular(10)):BorderRadius.horizontal(right: Radius.circular(10))
      ),
      //padding: EdgeInsets.symmetric(vertical: 5),
      width: size.width*0.35,
      child: Text(tabTitle,style: Stylings.lilgreyText.copyWith(color: Colors.white),),
    );
  }
}
