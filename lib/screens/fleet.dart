import 'package:fluentui_icons/fluentui_icons.dart';
import 'package:flutter/material.dart';
import 'package:onyeije/utils/widgs/fleettile.dart';

import '../models/data.dart';
import '../utils/styles/stylings.dart';

class Fleet extends StatefulWidget {
  const Fleet({super.key});

  @override
  State<Fleet> createState() => _FleetState();
}

class _FleetState extends State<Fleet> {
  String _currentLocation = "Enugu";

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Stylings.brown,
        leading: IconButton(
          icon: const Icon(FluentSystemIcons.ic_fluent_arrow_left_filled),
          iconSize: 15,
          color: Colors.white,
          onPressed: () => Navigator.pushNamed(context, "/"),
        ),
        title: Text(
          "FLEET",
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
        margin: const EdgeInsets.symmetric(horizontal: 20),
        child: ListView(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Text(
                  "From",
                  style:
                      Stylings.subHeader.copyWith(fontWeight: FontWeight.w500),
                ),
                DropdownButton(
                    padding: const EdgeInsets.only(left: 8),
                    menuMaxHeight: size.height * 0.2,
                    borderRadius: BorderRadius.circular(10),
                    value: _currentLocation,
                    iconEnabledColor: Stylings.brown,
                    iconSize: 15,
                    dropdownColor: Stylings.bgColor,
                    underline: const SizedBox(),
                    items: [
                      ...Ekene.dropDownStates.map((aState) {
                        return DropdownMenuItem(
                            value: aState,
                            child: Text(
                              aState,
                              style: Stylings.subHeader
                                  .copyWith(color: Stylings.brown),
                            ));
                      })
                    ],
                    onChanged: (value) {
                      setState(() {
                        _currentLocation = value!;
                      });
                    }),
              ],
            ),

            //Fleets
            _currentLocation == "Enugu"
                ? Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      ...Ekene.enugu.map((abus) {
                        final abusTitle = abus.title;
                        final abusType = abus.type;
                        final abusSeats = abus.seats;
                        final abusApp = abus.app;
                        final abusTerminal = abus.terminal;
                        final abusTakeoff = abus.takeOff;
                        return Fleettile(
                            busTitle: abusTitle,
                            busType: abusType,
                            busSeats: abusSeats,
                            appPrice: abusApp,
                            terminalPrice: abusTerminal,
                            takeOffTime: abusTakeoff);
                      })
                    ],
                  )
                : _currentLocation == "Lagos"
                    ? Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          ...Ekene.lagos.map((abus) {
                            final abusTitle = abus.title;
                            final abusType = abus.type;
                            final abusSeats = abus.seats;
                            final abusApp = abus.app;
                            final abusTerminal = abus.terminal;
                            final abusTakeoff = abus.takeOff;
                            return Fleettile(
                                busTitle: abusTitle,
                                busType: abusType,
                                busSeats: abusSeats,
                                appPrice: abusApp,
                                terminalPrice: abusTerminal,
                                takeOffTime: abusTakeoff);
                          })
                        ],
                      )
                    : _currentLocation == "Onitsha"
                        ? Column(
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              ...Ekene.onitsha.map((abus) {
                                final abusTitle = abus.title;
                                final abusType = abus.type;
                                final abusSeats = abus.seats;
                                final abusApp = abus.app;
                                final abusTerminal = abus.terminal;
                                final abusTakeoff = abus.takeOff;
                                return Fleettile(
                                    busTitle: abusTitle,
                                    busType: abusType,
                                    busSeats: abusSeats,
                                    appPrice: abusApp,
                                    terminalPrice: abusTerminal,
                                    takeOffTime: abusTakeoff);
                              })
                            ],
                          )
                        : _currentLocation == "Aba"
                            ? Column(
                                mainAxisAlignment: MainAxisAlignment.start,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  ...Ekene.aba.map((abus) {
                                    final abusTitle = abus.title;
                                    final abusType = abus.type;
                                    final abusSeats = abus.seats;
                                    final abusApp = abus.app;
                                    final abusTerminal = abus.terminal;
                                    final abusTakeoff = abus.takeOff;
                                    return Fleettile(
                                        busTitle: abusTitle,
                                        busType: abusType,
                                        busSeats: abusSeats,
                                        appPrice: abusApp,
                                        terminalPrice: abusTerminal,
                                        takeOffTime: abusTakeoff);
                                  })
                                ],
                              )
                            : _currentLocation == "Abuja"
                                ? Column(
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      ...Ekene.abuja.map((abus) {
                                        final abusTitle = abus.title;
                                        final abusType = abus.type;
                                        final abusSeats = abus.seats;
                                        final abusApp = abus.app;
                                        final abusTerminal = abus.terminal;
                                        final abusTakeoff = abus.takeOff;
                                        return Fleettile(
                                            busTitle: abusTitle,
                                            busType: abusType,
                                            busSeats: abusSeats,
                                            appPrice: abusApp,
                                            terminalPrice: abusTerminal,
                                            takeOffTime: abusTakeoff);
                                      })
                                    ],
                                  )
                                : _currentLocation == "Owerri"
                                    ? Column(
                                        mainAxisAlignment:
                                            MainAxisAlignment.start,
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          ...Ekene.owerri.map((abus) {
                                            final abusTitle = abus.title;
                                            final abusType = abus.type;
                                            final abusSeats = abus.seats;
                                            final abusApp = abus.app;
                                            final abusTerminal = abus.terminal;
                                            final abusTakeoff = abus.takeOff;
                                            return Fleettile(
                                                busTitle: abusTitle,
                                                busType: abusType,
                                                busSeats: abusSeats,
                                                appPrice: abusApp,
                                                terminalPrice: abusTerminal,
                                                takeOffTime: abusTakeoff);
                                          })
                                        ],
                                      )
                                    : const SizedBox(),
          ],
        ),
      ),
    );
  }
}
