import 'package:flutter/material.dart';
import 'package:onyeije/utils/styles/stylings.dart';

class Transactionntile extends StatelessWidget {
  final String date;
  final String id;
  final int amount;
  final String type;
  const Transactionntile({super.key, required this.date, required this.id, required this.amount, required this.type});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(bottom: 10),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            margin: EdgeInsets.symmetric(horizontal: 10),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(date, style: Stylings.subHeader,),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        SizedBox(
                          height: 13,
                          width: 13,
                          child: Image.asset("${Stylings.imgPath}/naira.png",color: type=="FUND WALLET"?Colors.green.shade900:Stylings.orange),
                        ),
                        Text("$amount", style: Stylings.subHeader.copyWith(color: type=="FUND WALLET"?Colors.green.shade900:Stylings.orange),),
                      ],
                    )
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text("ID - ", style: Stylings.lilgreyText.copyWith(color: Stylings.brown),),
                    Text(id, style: Stylings.subHeader,)
                  ],
                ),

                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text("TYPE - ", style: Stylings.lilgreyText.copyWith(color: Stylings.brown),),
                    Text(type, style: Stylings.subHeader,)
                  ],
                ),


              ],
            ),
          ),
          Divider(color: Stylings.brown,)
        ],
      ),
    );
  }
}



