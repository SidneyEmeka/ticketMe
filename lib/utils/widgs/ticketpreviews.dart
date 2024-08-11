import 'package:fluentui_icons/fluentui_icons.dart';
import 'package:flutter/material.dart';
import 'package:onyeije/utils/styles/stylings.dart';
import 'package:onyeije/utils/widgs/smallcircles.dart';

import 'layoutbuilder.dart';

class Ticketpreviews extends StatelessWidget {
  const Ticketpreviews({super.key});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return SizedBox(
      width: size.width * 0.80,
      height: 179,
      child: Container(
         padding: const EdgeInsets.all(16),
        decoration: BoxDecoration(
          color: Stylings.brown,
          borderRadius: const BorderRadius.vertical(top: Radius.circular(15)),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            //locations row
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [

                Text("ENU", style: Stylings.subHeader.copyWith(color: Colors.white),),
                Expanded(child: Container()),
                const Smallcircles(),
                  Expanded(child: Stack(
                  children: [
                    const SizedBox(
                      height: 24,
                      child: LayoutbuilderWidg(randomDiv: 6,),
                    ),
                    Center(child: Icon(Icons.drive_eta_outlined, color: Colors.white))
                  ],
                )),
                const Smallcircles(),
                Expanded(child: Container()),
                Text("ABJ", style: Stylings.subHeader.copyWith(color: Colors.white),),

              ],
            )
            //time row
          ],
        ),
      ),
    );
  }
}
