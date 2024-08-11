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
          Container(
            padding: const EdgeInsets.only(top: 20, left: 15, right: 15),
            height: size.height,
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
                        Text("Good morning Ekene", style: Stylings.subHeader.copyWith(fontWeight: FontWeight.w600))
                      ],
                    ),
                    //pfp
                    Container(
                      width: 60,
                      height: 50,
                      decoration: BoxDecoration(
                        shape: BoxShape.rectangle,
                        borderRadius: BorderRadius.circular(10),
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
                    Text("Current Location - ", style: Stylings.subHeader.copyWith(fontWeight: FontWeight.w500)),
                    Text("Enugu", style: Stylings.subHeader),
                 ],
               ),
                ///Upcoming Flights Section
                const Rowhearders(title: 'Upcoming Travels',),
                const Ticketpreviews()
              ],
            ),
          )
        ],
      ),
    );
  }
}
