import 'package:fluentui_icons/fluentui_icons.dart';
import 'package:flutter/material.dart';
import 'package:onyeije/pages/homepage.dart';

import '../utils/styles/stylings.dart';
import 'activeticketstab.dart';
import 'expiredticketstab.dart';

class Alltickets extends StatelessWidget {
  const Alltickets({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        appBar: AppBar(
          toolbarHeight: 30,
          bottom: TabBar(
            labelStyle: Stylings.subHeader.copyWith(color: Colors.white),
            unselectedLabelColor: Colors.white70,
            indicatorColor: Stylings.bgColor,
            tabs: const [
              Tab(
                text: "Active",
              ),
              Tab(
                text: "Expired",
              )
            ],
          ),
          backgroundColor: Stylings.brown,
          leading: IconButton(
            icon: const Icon(FluentSystemIcons.ic_fluent_ios_arrow_left_filled),
            iconSize: 15,
            color: Colors.white,
            onPressed: ()=>Navigator.pushNamed(context, "/"),
          ),
          title: Text(
            "TICKETS",
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
        body: const TabBarView(
          children: [
            Activeticketstab(),
            Expiredticketstab(),
          ],
        ),
      ),
    );
  }
}
