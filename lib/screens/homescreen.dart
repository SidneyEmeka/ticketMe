import 'package:fluentui_icons/fluentui_icons.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:onyeije/utils/styles/stylings.dart';

import '../models/data.dart';
import '../utils/widgs/fleettile.dart';
import '../utils/widgs/quickcards.dart';
import '../utils/widgs/rowhearders.dart';
import '../utils/widgs/ticketpreviews.dart';

class Homescreen extends StatefulWidget {
  const Homescreen({super.key});

  @override
  State<Homescreen> createState() => _HomescreenState();
}

class _HomescreenState extends State<Homescreen> {
  bool viewBalance = false;
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
                height: size.height / 3.1,
                decoration: const BoxDecoration(
                    color: Colors.black,
                    borderRadius:
                        BorderRadius.vertical(bottom: Radius.circular(20))),
              ),
              //title-tickets
              Container(
                padding: const EdgeInsets.only(top: 60, left: 10, right: 10),
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
                              width: 40,
                              height: 30,
                              decoration: BoxDecoration(
                                  shape: BoxShape.rectangle,
                                  borderRadius: BorderRadius.circular(100),
                                  image: DecorationImage(
                                      image: AssetImage(("${Stylings.imgPath}/market.jpg")),
                                      fit: BoxFit.cover)),
                            )
                          ],
                        ),
                      ],
                    ),
                    //wallet
                    const SizedBox(height: 10,),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text("Wallet Balance(₦)", style: Stylings.subHeader.copyWith(color: Colors.white),),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.start,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                SizedBox(
                                  height: 20,
                                  width: 20,
                                  child: Image.asset("${Stylings.imgPath}/naira.png",color: Colors.white,),
                                ),
                                Text(viewBalance?"${Ekene.balance}":"********", style: Stylings.header.copyWith(fontSize: 20),),
                              ],
                            ),
                          ],
                        ),
                        GestureDetector(
                          onTap: (){
                            if(!viewBalance) {
                              setState(() {
                              viewBalance = true;
                            });
                            }
                            else if(viewBalance){
                              setState(() {
                                viewBalance = false;
                              });
                            }

                          },
                          child: Container(
                              decoration: BoxDecoration(
                                  color: Stylings.brown,
                                  borderRadius: BorderRadius.circular(10)),
                              padding: const EdgeInsets.symmetric(
                                  horizontal: 12, vertical: 6),
                              child: viewBalance?const Icon(FluentSystemIcons.ic_fluent_eye_show_filled, size: 12, color: Colors.white,):const Icon(FluentSystemIcons.ic_fluent_eye_hide_filled, size: 12, color: Colors.white,)
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(
                      height: 35,
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
          //quick cards
          SizedBox(
            height: size.height / 2.14,
            child: SingleChildScrollView(
              scrollDirection: Axis.vertical,
              child: Container(
                margin: const EdgeInsets.symmetric(horizontal: 10),
                child: Column(
                  children: [
                    const Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Quickcards(
                          icon: Icons.airline_seat_recline_normal_rounded,
                          title: "Book a Seat",
                          desc: "Reserve seat(s) for your next trip",
                        ),
                        Quickcards(
                          icon: Icons.car_rental_outlined,
                          title: "Hire a Bus",
                          desc: "Travel exclusively or in groups",
                        ),
                      ],
                    ),
                    const SizedBox(
                      height: 8,
                    ),
                    const Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Quickcards(
                          icon: FluentSystemIcons.ic_fluent_location_filled,
                          title: "Track Bus",
                          desc: "Know exact location of a package/bus",
                        ),
                        Quickcards(
                          icon: Icons.explore_rounded,
                          title: "Logistics",
                          desc: "Transport your goods to any part of the country",
                        ),
                      ],
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    const Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Quickcards(
                          icon: Icons.co_present_rounded,
                          title: "Become an Agent",
                          desc: "Become a driver and an esteemed member of the team",
                        ),
                        Quickcards(
                          icon: FluentSystemIcons.ic_fluent_mail_read_filled,
                          title: "Feedback",
                          desc: "Tell us how you feel to help us serve you better",
                        ),
                      ],
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    //blog
                    Container(
                      width: size.width,
                      height: size.height / 6,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(15),
                        image: DecorationImage(
                            image: AssetImage("${Stylings.imgPath}/market.jpg"),
                            fit: BoxFit.cover),
                      ),
                      child: Padding(
                        padding: const EdgeInsets.only(left: 15.0, top: 30),
                        child: Container(
                          padding: const EdgeInsets.only(left: 16, top: 2),
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            color: Colors.black.withOpacity(0.1),
                          ),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              Text(
                                "Our News Feed",
                                style: Stylings.subHeader
                                    .copyWith(color: Colors.white),
                              ),
                              Padding(
                                padding:
                                    const EdgeInsets.only(top: 8.0, bottom: 5),
                                child: Text(
                                  "We bring to you the happenings\naround the world",
                                  style: Stylings.lilgreyText.copyWith(
                                      color: Colors.white, fontSize: 8),
                                ),
                              ),
                              Container(
                                  decoration: BoxDecoration(
                                      color: Stylings.brown,
                                      borderRadius: BorderRadius.circular(10)),
                                  padding: const EdgeInsets.symmetric(
                                      horizontal: 10, vertical: 5),
                                  child: Text(
                                    "Read more",
                                    style: Stylings.lilgreyText
                                        .copyWith(color: Colors.white),
                                  )),
                            ],
                          ),
                        ),
                      ),
                    )
                  ],
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
