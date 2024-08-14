import 'package:flutter/material.dart';

import '../models/data.dart';
import '../utils/widgs/ticketpreviews.dart';

class Expiredticketstab extends StatelessWidget {
  const Expiredticketstab({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(vertical: 10),
      child: ListView(
        children: [
          SingleChildScrollView(
            scrollDirection: Axis.vertical,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                ...Ekene.tickets.map((anActive) {
                  final eXstatus = anActive["status"];
                  final eXfromCode = anActive["from"]["code"];
                  final eXfromName = anActive["from"]["name"];
                  final eXduration = anActive["duration"];
                  final eXtoCode = anActive["to"]["code"];
                  final eXtoName = anActive["to"]["name"];
                  final eXdate = anActive["date"];
                  final eXtakeOff = anActive["departure_time"];
                  final eXseatNumber = anActive["seat"];
                  if (anActive["status"] == "expired") {
                    return Ticketpreviews(
                      fromcityCode: eXfromCode,
                      fromcityName: eXfromName,
                      travelDuration: eXduration,
                      tocityCode: eXtoCode,
                      tocityName: eXtoName,
                      date: eXdate,
                      depatureTime: eXtakeOff,
                      number: eXseatNumber,
                      status: eXstatus,
                    );
                  } else {
                    return Container();
                  }
                })
              ],
            ),
          ),
        ],
      ),
    );
  }
}
