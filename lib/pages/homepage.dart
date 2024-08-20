import 'package:fluentui_icons/fluentui_icons.dart';
import 'package:flutter/material.dart';
import 'package:onyeije/screens/homescreen.dart';

import '../screens/alltickets.dart';
import '../screens/fleet.dart';
import '../screens/thistory.dart';
import '../utils/styles/stylings.dart';


class Homepage extends StatefulWidget {
  const Homepage({super.key});

  @override
  State<Homepage> createState() => _HomepageState();
}

class _HomepageState extends State<Homepage> {
  int selectedIndex = 0;

  Widget buildBody() {
    switch(selectedIndex){
      case 0: return const Homescreen();
      case 1: return const Fleet();
      case 2: return const Thistory();
      case 3: return const Alltickets();
      case 4: return const Center(child: Text("Profile"),);
      default: return const Center();
    }
  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: buildBody(),
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        backgroundColor: Stylings.bgColor,
        currentIndex: selectedIndex,
        selectedItemColor: Stylings.brown,
        unselectedItemColor: Stylings.brown.withOpacity(0.8),
        showUnselectedLabels: false,
        showSelectedLabels: false,
        onTap: (value){
          setState(() {
            selectedIndex = value;
          });
        },
        items: const [
          BottomNavigationBarItem(icon: Icon(FluentSystemIcons.ic_fluent_home_regular), label: "home", activeIcon: Icon(FluentSystemIcons.ic_fluent_home_filled)),
          BottomNavigationBarItem(icon: Icon(FluentSystemIcons.ic_fluent_drive_mode_regular), label: "buy ticket", activeIcon: Icon(FluentSystemIcons.ic_fluent_drive_mode_filled)),
          BottomNavigationBarItem(icon: Icon(FluentSystemIcons.ic_fluent_contact_card_regular), label: "search", activeIcon: Icon(FluentSystemIcons.ic_fluent_contact_card_filled)),
          BottomNavigationBarItem(icon: Icon(FluentSystemIcons.ic_fluent_ticket_regular), label: "ticket", activeIcon: Icon(FluentSystemIcons.ic_fluent_ticket_filled)),
          BottomNavigationBarItem(icon: Icon(FluentSystemIcons.ic_fluent_person_regular), label: "profile", activeIcon: Icon(FluentSystemIcons.ic_fluent_person_filled)),

        ],
      ),
    );
  }
}
