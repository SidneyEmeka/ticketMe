import 'package:fluentui_icons/fluentui_icons.dart';
import 'package:flutter/material.dart';
import 'package:onyeije/screens/emailsignup.dart';
import 'package:onyeije/utils/styles/stylings.dart';

class InMethod extends StatelessWidget {
  const InMethod({super.key});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Scaffold(
      body: SafeArea(
          child: Container(
            alignment: Alignment.bottomCenter,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.end,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Text(
                  "Travel With Ease",
                  style: Stylings.header.copyWith(color: Stylings.brown),
                ),
                Text(
                  "Keep calm and travel Nigeria",
                  style: Stylings.subHeader.copyWith(color: Stylings.brown),
                ),
                const SizedBox(height: 20,),
                //log in row
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Text(
                      "Don't have an account ?",
                      style: Stylings.subHeader.copyWith(color: Stylings.brown),
                    ),
                    const SizedBox(width: 5,),
                    GestureDetector(
                      onTap: (){
                        Navigator.pushNamed(context, "email-signup");
                      },
                      child: Text(
                        "Register",
                        style: Stylings.lilgreyText.copyWith(color: Colors.brown),
                      ),
                    ),
                  ],
                ),
                GestureDetector(
                  onTap: (){
                    Navigator.pushNamed(context, "login");
                  },
                  child: Container(
                    margin: const EdgeInsets.only(bottom: 10,top: 15),
                    alignment: Alignment.center,
                    width: size.width*0.7,
                    height: 40,
                    decoration: BoxDecoration(
                        color: Stylings.brown,
                        borderRadius: BorderRadius.circular(15)
                    ),
                    child: Text("Sign in with email", style: Stylings.subHeader.copyWith(color: Stylings.bgColor),),
                  ),
                ),
                Container(
                  margin: const EdgeInsets.only(bottom: 10),
                  alignment: Alignment.center,
                  width: size.width*0.7,
                  height: 40,
                  decoration: BoxDecoration(
                      color: Stylings.bgColor,
                      border: Border.all(color: Stylings.brown),
                      borderRadius: BorderRadius.circular(15)
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Icon(Icons.g_mobiledata_rounded,color: Stylings.brown,size: 20,),
                      Text("Sign in with google", style: Stylings.subHeader.copyWith(color: Stylings.brown),),
                    ],
                  ),
                ),
                Container(
                  margin: const EdgeInsets.only(bottom: 20),
                  alignment: Alignment.center,
                  width: size.width*0.7,
                  height: 40,
                  decoration: BoxDecoration(
                      color: Stylings.bgColor,
                      border: Border.all(color: Stylings.brown),
                      borderRadius: BorderRadius.circular(15)
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Icon(Icons.apple_rounded,color: Stylings.brown, size: 15,),
                      Text("Sign in with Apple", style: Stylings.subHeader.copyWith(color: Stylings.brown),),
                    ],
                  ),
                ),
              ],
            ),
          )),
    );
  }
}
