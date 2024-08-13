import 'package:fluentui_icons/fluentui_icons.dart';
import 'package:flutter/material.dart';
import 'package:onyeije/utils/styles/stylings.dart';
import 'package:onyeije/utils/widgs/bigcircles.dart';
import 'package:onyeije/utils/widgs/smallcircles.dart';

import 'layoutbuilder.dart';

class Ticketpreviews extends StatelessWidget {
  final String fromcityCode;
  final String fromcityName;
  final String travelDuration;
  final String tocityCode;
  final String tocityName;
  final String date;
  final String depatureTime;
  final int number;
  final bool needPadding;
  final String status;

  const Ticketpreviews({super.key, required this.fromcityCode, required this.fromcityName, required this.travelDuration, required this.tocityCode, required this.tocityName, required this.date, required this.depatureTime, required this.number, this.needPadding = true, required this.status});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Padding(
      padding: needPadding?const EdgeInsets.only(right: 10.0):const EdgeInsets.only(right: 0.0),
      child: SizedBox(
        width: size.width * 0.79,
        height: 179,
        child: Column(
          children: [
            //brown
            Container(
              padding: const EdgeInsets.all(16),
              decoration: BoxDecoration(
                color: status == "active"?Stylings.brown:Colors.grey,
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
                        fromcityCode,
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
                        tocityCode,
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
                          fromcityName,
                          textAlign: TextAlign.start,
                          style: Stylings.subHeader.copyWith(
                              color: Colors.white, fontWeight: FontWeight.w400),
                        ),
                      ),
                      Expanded(child: Container()),
                      Text(
                        travelDuration,
                        style: Stylings.subHeader.copyWith(
                            color: Colors.white,
                            fontWeight: FontWeight.w600,
                            fontSize: 10),
                      ),
                      Expanded(child: Container()),
                      SizedBox(
                        width: 80,
                        child: Text(
                          tocityName,
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
              color:  status == "active"?Stylings.orange:Colors.grey,
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
                color: status == "active"?Stylings.orange:Colors.grey,
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
                        date,
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
                        depatureTime,
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
                        "$number",
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
