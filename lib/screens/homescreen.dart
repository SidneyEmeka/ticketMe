import 'package:fluentui_icons/fluentui_icons.dart';
import 'package:flutter/material.dart';
import 'package:onyeije/utils/styles/stylings.dart';

import '../models/data.dart';
import '../utils/widgs/fleettile.dart';
import '../utils/widgs/rowhearders.dart';
import '../utils/widgs/ticketpreviews.dart';

class Homescreen extends StatefulWidget {
  const Homescreen({super.key});

  @override
  State<Homescreen> createState() => _HomescreenState();
}

class _HomescreenState extends State<Homescreen> {
  String currentLocation = "Enugu";

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Scaffold(
      body: Column(
        children: [
          Stack(
            children: [
              //circular black background
              Container(
                height: size.height / 3,
                decoration: const BoxDecoration(
                    color: Colors.black,
                    borderRadius:
                        BorderRadius.vertical(bottom: Radius.circular(20))),
              ),
              //title-tickets
              Container(
                padding: const EdgeInsets.only(top: 50, left: 10, right: 10),
                width: size.width,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    //user greeting and pfp
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        //greeting
                        Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text("ONYE IJE", style: Stylings.header),
                            Text("Good morning Ekene",
                                style: Stylings.subHeader.copyWith(
                                    fontWeight: FontWeight.w600,
                                    color: Colors.white)),
                          ],
                        ),
                        //pfp
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.end,
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Container(
                              width: 50,
                              height: 40,
                              decoration: BoxDecoration(
                                  shape: BoxShape.rectangle,
                                  borderRadius: BorderRadius.circular(100),
                                  image: DecorationImage(
                                      image: AssetImage(
                                          ("${Stylings.imgPath}/market.jpg")),
                                      fit: BoxFit.cover)),
                              //child: Image.asset("assets/images/market.jpg", fit: BoxFit.cover,),
                            ),
                          ],
                        ),
                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        DropdownButton(
                            value: currentLocation,
                            iconEnabledColor: Colors.white,
                            iconSize: 15,
                            dropdownColor: Stylings.brown,
                            underline: const SizedBox(),
                            items: [
                              ...Ekene.dropDownStates.map((aState) {
                                return DropdownMenuItem(
                                    value: aState,
                                    child: Text(
                                      aState,
                                      style: Stylings.subHeader
                                          .copyWith(color: Colors.white),
                                    ));
                              })
                            ],
                            onChanged: (value) {
                              setState(() {
                                currentLocation = value!;
                              });
                            }),
                        Container(
                            decoration: BoxDecoration(
                                color: Stylings.brown,
                                borderRadius: BorderRadius.circular(10)),
                            padding: const EdgeInsets.symmetric(
                                horizontal: 10, vertical: 5),
                            child: Text(
                              "Buy Ticket",
                              style: Stylings.subHeader
                                  .copyWith(color: Colors.white),
                            )),
                      ],
                    ),
                    const SizedBox(
                      height: 13,
                    ),
                    //current state

                    ///Upcoming Flights Section
                    const Rowhearders(
                      title: 'Tickets',
                      route: "tickets",
                    ),
                    //SizedBox(height: 5),
                    SizedBox(
                      width: size.width,
                      child: SingleChildScrollView(
                          scrollDirection: Axis.horizontal,
                          child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceAround,
                              children: [
                                ...Ekene.tickets.take(3).map((aticket) {
                                  final status = aticket["status"];
                                  final fromCode = aticket["from"]["code"];
                                  final fromName = aticket["from"]["name"];
                                  final duration = aticket["duration"];
                                  final toCode = aticket["to"]["code"];
                                  final toName = aticket["to"]["name"];
                                  final date = aticket["date"];
                                  final takeOff = aticket["departure_time"];
                                  final seatNumber = aticket["seat"];

                                  return Ticketpreviews(
                                    fromcityCode: fromCode,
                                    fromcityName: fromName,
                                    travelDuration: duration,
                                    tocityCode: toCode,
                                    tocityName: toName,
                                    date: date,
                                    depatureTime: takeOff,
                                    number: seatNumber,
                                    status: status,
                                  );
                                }),
                              ])),
                    )
                  ],
                ),
              ),
            ],
          ),
          //Fleet title
          const Padding(
            padding: EdgeInsets.symmetric(horizontal: 10.0),
            child: Rowhearders(
              title: "Available Fleet",
              isBgWhite: true,
              route: "fleet",
            ),
          ),
          //thefleets
          SizedBox(
            height: size.height / 2.43,
            child: const SingleChildScrollView(
              scrollDirection: Axis.vertical,
              child: Column(
                children: [],
              ),
            ),
          )
        ],
      ),
    );
  }
}
