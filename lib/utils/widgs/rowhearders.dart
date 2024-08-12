import 'package:flutter/material.dart';
import 'package:onyeije/utils/styles/stylings.dart';

class Rowhearders extends StatelessWidget {
  final String title;

  const Rowhearders({super.key, required this.title});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(vertical: 20),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Text(
            title,
            style:
                Stylings.subHeader.copyWith(color: Colors.white),
          ),
          InkWell(
              onTap: () {},
              child: Text("View all", style: Stylings.lilgreyText)),
        ],
      ),
    );
  }
}
