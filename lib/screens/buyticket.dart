import 'package:fluentui_icons/fluentui_icons.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:onyeije/provider/provider.dart';
import 'package:provider/provider.dart';

import '../models/data.dart';
import '../utils/styles/stylings.dart';
import '../utils/widgs/customtabs.dart';

class Buyticket extends StatefulWidget {
  const Buyticket({super.key});

  @override
  State<Buyticket> createState() => _BuyticketState();
}

class _BuyticketState extends State<Buyticket> {
  String tripType = "One-way Trip";
  String fromLocation = "Enugu";
  String toLocation = "Abuja";

  DateTime takeOffDate = DateTime.now();

  void _pickTakeOffDate() {
    showDatePicker(
            context: context,
            initialDate: DateTime.now(),
            firstDate: DateTime.now(),
            lastDate: DateTime(2026))
        .then((onValue) {
      setState(() {
        takeOffDate = onValue!;
      });
    });
  }

  DateTime returnDate = DateTime.now();

  void _picReturnDate() {
    showDatePicker(
            context: context,
            initialDate: DateTime.now(),
            firstDate: DateTime.now(),
            lastDate: DateTime(2026))
        .then((onValue) {
      setState(() {
        returnDate = onValue!;
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    var adults =
        Provider.of<MyProvider>(context, listen: false).adultTravellers;
    var children =
        Provider.of<MyProvider>(context, listen: false).childTravellers;
    var travellers = adults + children;
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Stylings.brown,
        leading: IconButton(
          icon: const Icon(FluentSystemIcons.ic_fluent_ios_arrow_left_filled),
          iconSize: 15,
          color: Colors.white,
          onPressed: () => Navigator.pushNamed(context, "/"),
        ),
        title: Text(
          "Book Seat",
          style: Stylings.subHeader.copyWith(color: Colors.white),
        ),
        centerTitle: true,
        actions: [
          Container(
            margin: const EdgeInsets.only(right: 10),
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
      body: Container(
        margin: const EdgeInsets.only(top: 15),
        height: size.height * 0.8,
        width: size.width,
        child: ListView(
          children: [
            //Tabs
            Column(
              children: [
                Container(
                  height: 30,
                  width: size.width * 0.7,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: Colors.white),
                  child: Row(
                    children: [
                      GestureDetector(
                          onTap: () {
                            setState(() {
                              tripType = "One-way Trip";
                            });
                          },
                          child: const aTab(
                              tabTitle: "One-way Trip", isLeft: true)),
                      GestureDetector(
                          onTap: () {
                            setState(() {
                              tripType = "Round Trip";
                            });
                          },
                          child: const aTab(
                              tabTitle: "Round Trip", isLeft: false)),
                    ],
                  ),
                ),
              ],
            ),
            const SizedBox(
              height: 30,
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    //from
                    Padding(
                      padding: const EdgeInsets.symmetric(
                          horizontal: 10.0, vertical: 10),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "Traveling From",
                            style: Stylings.lilgreyText
                                .copyWith(color: Stylings.brown),
                          ),
                          Container(
                            margin: const EdgeInsets.only(top: 8),
                            padding: const EdgeInsets.symmetric(horizontal: 10),
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(20),
                                border: Border.all(color: Stylings.brown)),
                            child: DropdownButton(
                                alignment: Alignment.center,
                                isExpanded: true,
                                borderRadius: BorderRadius.circular(10),
                                menuMaxHeight: size.height * 0.2,
                                value: fromLocation,
                                iconEnabledColor: Stylings.brown,
                                iconSize: 15,
                                dropdownColor: Stylings.bgColor,
                                underline: const SizedBox(),
                                items: [
                                  ...Ekene.dropDownStates.map((aState) {
                                    return DropdownMenuItem(
                                        value: aState,
                                        child: Text(aState,
                                            style: Stylings.subHeader));
                                  })
                                ],
                                onChanged: (value) {
                                  setState(() {
                                    fromLocation = value!;
                                  });
                                }),
                          ),
                        ],
                      ),
                    ),
                    //to
                    Padding(
                      padding: const EdgeInsets.symmetric(
                          horizontal: 10.0, vertical: 10),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "Traveling To",
                            style: Stylings.lilgreyText
                                .copyWith(color: Stylings.brown),
                          ),
                          Container(
                            margin: const EdgeInsets.only(top: 8),
                            padding: const EdgeInsets.symmetric(horizontal: 10),
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(20),
                                border: Border.all(color: Stylings.brown)),
                            child: DropdownButton(
                                alignment: Alignment.center,
                                isExpanded: true,
                                borderRadius: BorderRadius.circular(10),
                                menuMaxHeight: size.height * 0.2,
                                value: toLocation,
                                iconEnabledColor: Stylings.brown,
                                iconSize: 15,
                                dropdownColor: Stylings.bgColor,
                                underline: const SizedBox(),
                                items: [
                                  ...Ekene.dropDownStates.map((aState) {
                                    return DropdownMenuItem(
                                        value: aState,
                                        child: Text(aState,
                                            style: Stylings.subHeader));
                                  })
                                ],
                                onChanged: (value) {
                                  setState(() {
                                    toLocation = value!;
                                  });
                                }),
                          ),
                        ],
                      ),
                    ),
                    //dates
                    Padding(
                      padding: const EdgeInsets.symmetric(
                          horizontal: 10.0, vertical: 10),
                      child: tripType == "One-way Trip"
                          ? Column(
                              mainAxisAlignment: MainAxisAlignment.start,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  "Departing on",
                                  style: Stylings.lilgreyText
                                      .copyWith(color: Stylings.brown),
                                ),
                                GestureDetector(
                                  onTap: _pickTakeOffDate,
                                  child: Container(
                                      width: size.width,
                                      margin: const EdgeInsets.only(top: 8),
                                      padding: const EdgeInsets.symmetric(
                                          horizontal: 10, vertical: 15),
                                      decoration: BoxDecoration(
                                          borderRadius:
                                              BorderRadius.circular(20),
                                          border: Border.all(
                                              color: Stylings.brown)),
                                      child: Text(
                                        "${takeOffDate.day} / ${takeOffDate.month} / ${takeOffDate.year}",
                                        style: Stylings.subHeader,
                                      )),
                                ),
                              ],
                            )
                          : Row(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Expanded(
                                  child: Padding(
                                    padding: const EdgeInsets.symmetric(
                                        horizontal: 10.0, vertical: 10),
                                    child: Column(
                                      mainAxisAlignment:
                                          MainAxisAlignment.start,
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Text(
                                          "Departing On",
                                          style: Stylings.lilgreyText
                                              .copyWith(color: Stylings.brown),
                                        ),
                                        GestureDetector(
                                          onTap: _pickTakeOffDate,
                                          child: Container(
                                              width: size.width,
                                              margin:
                                                  const EdgeInsets.only(top: 8),
                                              padding:
                                                  const EdgeInsets.symmetric(
                                                      horizontal: 10,
                                                      vertical: 15),
                                              decoration: BoxDecoration(
                                                  borderRadius:
                                                      BorderRadius.circular(20),
                                                  border: Border.all(
                                                      color: Stylings.brown)),
                                              child: Text(
                                                "${takeOffDate.day} / ${takeOffDate.month} / ${takeOffDate.year}",
                                                style: Stylings.subHeader,
                                              )),
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                                Expanded(
                                  child: Padding(
                                    padding: const EdgeInsets.symmetric(
                                        horizontal: 10.0, vertical: 10),
                                    child: Column(
                                      mainAxisAlignment:
                                          MainAxisAlignment.start,
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Text(
                                          "Returning On",
                                          style: Stylings.lilgreyText
                                              .copyWith(color: Stylings.brown),
                                        ),
                                        GestureDetector(
                                          onTap: _picReturnDate,
                                          child: Container(
                                              width: size.width,
                                              margin:
                                                  const EdgeInsets.only(top: 8),
                                              padding:
                                                  const EdgeInsets.symmetric(
                                                      horizontal: 10,
                                                      vertical: 15),
                                              decoration: BoxDecoration(
                                                  borderRadius:
                                                      BorderRadius.circular(20),
                                                  border: Border.all(
                                                      color: Stylings.brown)),
                                              child: Text(
                                                "${returnDate.day} / ${returnDate.month} / ${returnDate.year}",
                                                style: Stylings.subHeader,
                                              )),
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                              ],
                            ),
                    ),
                    //persons
                    Padding(
                      padding: const EdgeInsets.symmetric(
                          horizontal: 10.0, vertical: 10),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "Travellers",
                            style: Stylings.lilgreyText
                                .copyWith(color: Stylings.brown),
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceAround,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              //adults
                              Container(
                                width: size.width * 0.3,
                                margin: const EdgeInsets.only(top: 8),
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(20),
                                    border: Border.all(color: Stylings.brown)),
                             child: Row(
                               mainAxisAlignment: MainAxisAlignment.spaceBetween,
                               crossAxisAlignment: CrossAxisAlignment.center,
                               children: [
                                 Expanded(child: IconButton(onPressed: (){
                                   Provider.of<MyProvider>(context, listen: false).addAdult();
                                   setState(() {});
                                 }, icon: Icon(Icons.add, size: 10, color: Stylings.brown,))),
                                 Text("Adults : $adults", style: Stylings.subHeader,),
                                 Expanded(child: IconButton(onPressed: (){
                                   Provider.of<MyProvider>(context, listen: false).removeAdult();
                                   setState(() {});
                                 }, icon: Icon(Icons.remove, size: 10, color: Stylings.brown,))),
                               ],
                             ), ),
                              const SizedBox(width: 20,),
                              //children
                              Container(
                                width: size.width * 0.3,
                                margin: const EdgeInsets.only(top: 8),
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(20),
                                    border: Border.all(color: Stylings.brown)),
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  children: [
                                    Expanded(child: IconButton(onPressed: (){
                                      Provider.of<MyProvider>(context, listen: false).addChild();
                                      setState(() {});
                                    }, icon: Icon(Icons.add, size: 10, color: Stylings.brown,))),
                                    Text("Children : $children", style: Stylings.subHeader,),
                                    Expanded(child: IconButton(onPressed: (){
                                      Provider.of<MyProvider>(context, listen: false).removeChild();
                                      setState(() {});
                                    }, icon: Icon(Icons.remove, size: 10, color: Stylings.brown,))),
                                  ],
                                ), ),
                              Expanded(
                                child: Container(
                                  alignment: Alignment.center,
                                  margin: const EdgeInsets.only(top: 8),
                                  child: Text("= $travellers ${travellers < 2?"Traveller":"Travellers"}", style: Stylings.subHeader) ),
                              ),
                              
                            ],
                          ),
                        ],
                      ),
                    ),
                    const SizedBox(
                      height: 30,
                    ),
                    //submit
                    ElevatedButton(
                        onPressed: () {},
                        style: ElevatedButton.styleFrom(
                            backgroundColor: Stylings.brown,
                            fixedSize: Size(size.width * 0.9, 50),
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(10))),
                        child: Text(
                          "Buy Ticket",
                          style: Stylings.lilgreyText
                              .copyWith(color: Colors.white),
                        ))
                  ],
                )
              ],
            ),
          ],
        ),
      ),
    );
  }
}
