import 'package:fluentui_icons/fluentui_icons.dart';
import 'package:flutter/material.dart';
import 'package:onyeije/utils/styles/stylings.dart';
import 'package:onyeije/utils/widgs/bigcircles.dart';
import 'package:onyeije/utils/widgs/smallcircles.dart';

import 'layoutbuilder.dart';

class Ticketpreviews extends StatelessWidget {
  const Ticketpreviews({super.key});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Padding(
      padding: const EdgeInsets.only(right: 10.0),
      child: SizedBox(
        width: size.width * 0.76,
        height: 179,
        child: Column(
          children: [
            //brown
            Container(
              padding: const EdgeInsets.all(16),
              decoration: BoxDecoration(
                color: Stylings.brown,
                borderRadius:
                    const BorderRadius.vertical(top: Radius.circular(15)),
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
                      Text(
                        "ENU",
                        style: Stylings.subHeader.copyWith(color: Colors.white),
                      ),
                      Expanded(child: Container()),
                      const Smallcircles(),
                      const Expanded(
                          child: Stack(
                        children: [
                          SizedBox(
                            height: 24,
                            child: LayoutbuilderWidg(
                              randomDiv: 5,
                            ),
                          ),
                          Center(
                              child: Icon(
                            Icons.drive_eta_outlined,
                            color: Colors.white,
                            size: 15,
                          ))
                        ],
                      )),
                      const Smallcircles(),
                      Expanded(child: Container()),
                      Text(
                        "ABJ",
                        style: Stylings.subHeader.copyWith(color: Colors.white),
                      ),
                    ],
                  ),
                  const SizedBox(
                    height: 3,
                  ),
                  //time row
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      SizedBox(
                        width: 80,
                        child: Text(
                          "Enugu",
                          textAlign: TextAlign.start,
                          style: Stylings.subHeader.copyWith(
                              color: Colors.white, fontWeight: FontWeight.w400),
                        ),
                      ),
                      Expanded(child: Container()),
                      Text(
                        "4H 30M",
                        style: Stylings.subHeader.copyWith(
                            color: Colors.white,
                            fontWeight: FontWeight.w600,
                            fontSize: 10),
                      ),
                      Expanded(child: Container()),
                      SizedBox(
                        width: 80,
                        child: Text(
                          "Abuja",
                          textAlign: TextAlign.end,
                          style: Stylings.subHeader.copyWith(
                              color: Colors.white, fontWeight: FontWeight.w400),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
            //divider
            Container(
              color: Stylings.orange,
              child: const Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Bigcircles(
                    isRight: false,
                  ),
                  Expanded(
                      child: LayoutbuilderWidg(randomDiv: 10, dashWidth: 6)),
                  Bigcircles(
                    isRight: true,
                  ),
                ],
              ),
            ),
            //red
            Container(
              padding: const EdgeInsets.all(16),
              decoration: BoxDecoration(
                color: Stylings.orange,
                borderRadius:
                    const BorderRadius.vertical(bottom: Radius.circular(15)),
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  //date
                  Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "11 NOV",
                        style: Stylings.subHeader
                            .copyWith(color: Colors.white, fontSize: 11),
                      ),
                      Text(
                        "Date",
                        style: Stylings.subHeader.copyWith(
                            color: Colors.white,
                            fontWeight: FontWeight.w400,
                            fontSize: 10),
                      ),
                    ],
                  ),
                  //departure time
                  Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Text(
                        "08:00 AM",
                        style: Stylings.subHeader
                            .copyWith(color: Colors.white, fontSize: 11),
                      ),
                      Text(
                        "Departure time",
                        style: Stylings.subHeader.copyWith(
                            color: Colors.white,
                            fontWeight: FontWeight.w400,
                            fontSize: 10),
                      ),
                    ],
                  ),
                  //seat number
                  Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: [
                      Text(
                        "23",
                        style: Stylings.subHeader
                            .copyWith(color: Colors.white, fontSize: 11),
                      ),
                      Text(
                        textAlign: TextAlign.end,
                        "Seat",
                        style: Stylings.subHeader.copyWith(
                            color: Colors.white,
                            fontWeight: FontWeight.w400,
                            fontSize: 10),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
