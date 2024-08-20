import 'package:fluentui_icons/fluentui_icons.dart';
import 'package:flutter/material.dart';
import 'package:onyeije/utils/widgs/transactionntile.dart';

import '../models/data.dart';
import '../utils/styles/stylings.dart';

class Thistory extends StatefulWidget {
  const Thistory({super.key});

  @override
  State<Thistory> createState() => _ThistoryState();
}

class _ThistoryState extends State<Thistory> {
  String _currentLocation = "November";

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
          "TRANSACTION HISTORY",
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
      body: SafeArea(child: Container(
        margin: const EdgeInsets.symmetric(horizontal: 10),
        child: ListView(
          children: [
            Container(
              alignment: Alignment.center,
              child: DropdownButton(
                  padding: const EdgeInsets.only(left: 8),
                  menuMaxHeight: size.height * 0.2,
                  borderRadius: BorderRadius.circular(10),
                  value: _currentLocation,
                  iconEnabledColor: Stylings.brown,
                  iconSize: 15,
                  dropdownColor: Stylings.bgColor,
                  underline: const SizedBox(),
                  items: [
                    ...Ekene.months.map((aState) {
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
            ),
            SizedBox(height: 20,),
            ...Ekene.transactions.map((aTrxn){
              final trxnDate = aTrxn["Date"];
              final trxnAmount = aTrxn["Price"];
              final trxnId = aTrxn["Id"];
              final trxnType = aTrxn["Type"];
              return Transactionntile(date: trxnDate, id: trxnId, amount: trxnAmount, type: trxnType);
            })
          ],
        ),
      )),
    );
  }
}
