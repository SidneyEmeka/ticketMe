import 'package:fluentui_icons/fluentui_icons.dart';
import 'package:flutter/material.dart';

import '../styles/stylings.dart';

class Quickcards extends StatelessWidget {
  final IconData icon;
  final String title;
  final String desc;
  const Quickcards({super.key, required this.icon, required this.title, required this.desc});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Container(
      width: size.width/2.2,
      child: Card(
        color: Stylings.brown,
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 10.0, vertical: 10),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 10),
                child: Icon(icon, color: Colors.white, size: 15,),
              ),
              Text(title,style: Stylings.subHeader.copyWith(color: Colors.white),),
              SizedBox(height: 5),
              Text(desc, style: Stylings.lilgreyText.copyWith(color: Colors.white, fontWeight: FontWeight.w400),),

            ],
          ),
        ),
      ),
    );
  }
}
