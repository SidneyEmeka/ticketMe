import 'package:flutter/material.dart';
import 'package:onyeije/utils/widgs/ticketpreviews.dart';

import '../models/data.dart';

class Activeticketstab extends StatelessWidget {
  const Activeticketstab({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: ListView(
        children: [
          SingleChildScrollView(
            scrollDirection: Axis.vertical,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                ...Ekene.tickets.map((anActive){
                  final aKstatus = anActive["status"];
                  final aKfromCode = anActive["from"]["code"];
                  final aKfromName = anActive["from"]["name"];
                  final aKduration = anActive["duration"];
                  final aKtoCode = anActive["to"]["code"];
                  final aKtoName = anActive["to"]["name"];
                  final aKdate = anActive["date"];
                  final aKtakeOff = anActive["departure_time"];
                  final aKseatNumber = anActive["seat"];
                  if(anActive["status"] == "active"){
                    return Ticketpreviews(fromcityCode: aKfromCode, fromcityName: aKfromName, travelDuration: aKduration, tocityCode: aKtoCode, tocityName: aKtoName, date: aKdate, depatureTime: aKtakeOff, number: aKseatNumber,needPadding:false, status: aKstatus,);
                  }
                  else {
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
