import 'package:flutter/material.dart';
import 'package:onyeije/pages/homepage.dart';
import 'package:onyeije/screens/alltickets.dart';
import 'package:onyeije/screens/buyticket.dart';
import 'package:onyeije/screens/fleet.dart';
import 'package:onyeije/utils/styles/stylings.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        scaffoldBackgroundColor: Stylings.bgColor,
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      routes:  {
       "/":(context)=> const Homepage(),
       "tickets":(context)=> const Alltickets(),
       "fleet":(context)=> const Fleet(),
       "buy-ticket":(context)=> const Buyticket(),
      },
    );
  }
}