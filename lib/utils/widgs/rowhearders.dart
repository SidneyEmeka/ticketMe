import 'package:flutter/material.dart';
import 'package:onyeije/screens/alltickets.dart';
import 'package:onyeije/utils/styles/stylings.dart';

class Rowhearders extends StatelessWidget {
  final String title;
  final bool isBgWhite;
  final String route;

  const Rowhearders({super.key, required this.title, this.isBgWhite=false, required this.route});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(bottom: 5),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Text(
            title,
            style:
                Stylings.subHeader.copyWith(color: isBgWhite?Stylings.brown:Colors.white),
          ),
          InkWell(
              onTap: ()=>Navigator.pushNamed(context, route),
              child: Text("View all", style: Stylings.lilgreyText)),
        ],
      ),
    );
  }
}
