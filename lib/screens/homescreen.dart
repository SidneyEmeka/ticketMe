import 'package:flutter/material.dart';
import 'package:onyeije/utils/styles/stylings.dart';

import '../utils/widgs/rowhearders.dart';
import '../utils/widgs/ticketpreviews.dart';

class Homescreen extends StatefulWidget {
  const Homescreen({super.key});

  @override
  State<Homescreen> createState() => _HomescreenState();
}

class _HomescreenState extends State<Homescreen> {
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: Stylings.bgColor,
      body: ListView(
        children: [
          Stack(
            children: [
              //circular black background
              Container(
                height: size.height/3,
                decoration: const BoxDecoration(
                  color: Colors.black,
                  borderRadius: BorderRadius.vertical(bottom: Radius.circular(20))
                ),
              ),
              //title-tickets
              Container(
                padding: const EdgeInsets.only(top: 20, left: 10, right: 10),
                height: size.height/2,
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
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text("ONYE IJE", style: Stylings.header),
                            Text("Good morning Ekene", style: Stylings.subHeader.copyWith(fontWeight: FontWeight.w600, color: Colors.white))
                          ],
                        ),
                        //pfp
                        Container(
                          width: 50,
                          height: 40,
                          decoration: BoxDecoration(
                            shape: BoxShape.rectangle,
                            borderRadius: BorderRadius.circular(100),
                            image: DecorationImage(image: AssetImage(("${Stylings.imgPath}/market.jpg")),fit: BoxFit.cover)
                          ),
                          //child: Image.asset("assets/images/market.jpg", fit: BoxFit.cover,),
                        )
                      ],
                    ),
                   //current state
                   Row(
                     mainAxisAlignment: MainAxisAlignment.start,
                     crossAxisAlignment: CrossAxisAlignment.start,
                     children: [
                        Text("Current Location - ", style: Stylings.subHeader.copyWith(fontWeight: FontWeight.w400, color: Colors.white)),
                        Text("Enugu", style: Stylings.subHeader.copyWith(fontWeight: FontWeight.w400, color: Colors.white)),
                     ],
                   ),
                    ///Upcoming Flights Section
                    const Rowhearders(title: 'Upcoming Travels',),
                    SizedBox(
                      width: size.width,
                      child: const SingleChildScrollView(
                        scrollDirection: Axis.horizontal,
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceAround,
                              children: [
                            Ticketpreviews(),
                            Ticketpreviews(),
                            Ticketpreviews(),
                          ])),
                    )
                  ],
                ),
              ),

              //Next section
            ],
          ),
        ],
      ),
    );
  }
}
