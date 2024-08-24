import 'package:flutter/material.dart';
import 'package:onyeije/utils/styles/stylings.dart';

class Fleettile extends StatelessWidget {
  final String busTitle;
  final String busType;
  final int busSeats;
  final int appPrice;
  final int terminalPrice;
  final String takeOffTime;

  const Fleettile(
      {super.key,
      required this.busTitle,
      required this.busType,
      required this.busSeats,
      required this.appPrice,
      required this.terminalPrice,
      required this.takeOffTime});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Container(
      width: size.width,
      //height: size.height/4.8,
      child: Card(
        color: Colors.white,
        child: Padding(
          padding: const EdgeInsets.only(left: 16.0, right: 16.0, bottom: 10.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              //details Column
              Expanded(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      busTitle,
                      style: Stylings.subHeader,
                    ),
                    Text(
                      busType,
                      style: Stylings.subHeader.copyWith(color: Stylings.brown),
                    ),
                    Text(
                      busSeats == 1
                          ? "$busSeats seat available"
                          : "$busSeats seats available",
                      style: Stylings.lilgreyText,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "#$appPrice",
                          style: Stylings.lilgreyText
                              .copyWith(color: Stylings.brown),
                        ),
                        const SizedBox(
                          width: 5,
                        ),
                        Text(
                          "In App",
                          style: Stylings.lilgreyText
                              .copyWith(color: Stylings.brown),
                        ),
                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "#$terminalPrice",
                          style: Stylings.lilgreyText
                              .copyWith(color: Stylings.brown),
                        ),
                        SizedBox(
                          width: 5,
                        ),
                        Text(
                          "At Terminal",
                          style: Stylings.lilgreyText
                              .copyWith(color: Stylings.brown),
                        ),
                      ],
                    ),
                    Text(
                      "Departure Time: $takeOffTime",
                      style:
                          Stylings.lilgreyText.copyWith(color: Stylings.brown),
                    ),
                  ],
                ),
              ),
              //bus Column
              Expanded(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    Container(
                      width: 160,
                      height: 100,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          image: DecorationImage(
                              image: AssetImage("${Stylings.imgPath}/bus.jpg"),
                              fit: BoxFit.cover)),
                    ),
                    GestureDetector(
                      onTap: (){
                        Navigator.pushNamed(context, "buy-ticket");
                      },
                      child: Container(
                          decoration: BoxDecoration(
                              color: Stylings.brown,
                              borderRadius: BorderRadius.circular(10)),
                          padding:
                              EdgeInsets.symmetric(horizontal: 10, vertical: 5),
                          child: Text(
                            "Buy Ticket",
                            style: Stylings.lilgreyText
                                .copyWith(color: Colors.white),
                          )),
                    )
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
