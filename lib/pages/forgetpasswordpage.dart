import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:onyeije/provider/provider.dart';
import 'package:provider/provider.dart';

import '../utils/styles/stylings.dart';

class Forgetpasswordpage extends StatefulWidget {
  const Forgetpasswordpage({super.key});

  @override
  State<Forgetpasswordpage> createState() => _ForgetpasswordpageState();
}

class _ForgetpasswordpageState extends State<Forgetpasswordpage> {
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    final provider = Provider.of<MyProvider>(context, listen: false);
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Stylings.bgColor,
        leading: GestureDetector(
          onTap: () {
            Navigator.pushNamed(context, "in-method");
          },
          child: Icon(
            Icons.arrow_back_ios,
            color: Stylings.brown,
            size: 20,
          ),
        ),
      ),
      body: Container(
        margin: const EdgeInsets.only(top: 50),
        padding: const EdgeInsets.symmetric(horizontal: 30),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Card(
                elevation: 10,
                color: Stylings.bgColor,
                child: Padding(
                  padding: const EdgeInsets.symmetric(
                      horizontal: 5.0, vertical: 5.0),
                  child: Icon(
                    Icons.lock_outline,
                    color: Stylings.brown,
                    size: 30,
                  ),
                )),
            Text(
              "Reset your password",
              style: Stylings.header.copyWith(color: Stylings.brown),
            ),
            const SizedBox(
              height: 5,
            ),
            Text(
              textAlign: TextAlign.center,
              "Forgot your password? Please enter the email associated with the account and we'll send you a verification link",
              style: Stylings.lilgreyText.copyWith(color: Stylings.brown),
            ),
            const SizedBox(
              height: 20,
            ),
            Container(
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(12),
                  color: Colors.white70,
                  border: Border.all(color: Colors.white)),
              child: TextFormField(
                controller: provider.resetemailController,
                decoration: const InputDecoration(
                    contentPadding: EdgeInsets.only(left: 20),
                    hintText: "Email",
                    border: InputBorder.none),
              ),
            ),
            Align(
              alignment: Alignment.centerRight,
              child: Text(
                provider.wrongemailFormat == null
                    ? ""
                    : provider.wrongemailFormat!,
                style: Stylings.lilgreyText.copyWith(color: Stylings.brown),
              ),
            ),
            GestureDetector(
              onTap: () async {
                try {
                  await FirebaseAuth.instance.sendPasswordResetEmail(
                      email: provider.resetemailController.text.trim());
                  showDialog(
                      context: context,
                      builder: (context) {
                        return AlertDialog(
                          content: Text("A Password reset link has been sent to ${provider.resetemailController.text.trim()}"),
                        );
                      });
                } on FirebaseAuthException catch (e) {
                  print(e);
                  showDialog(
                      context: context,
                      builder: (context) {
                        return AlertDialog(
                          content: Text(e.message.toString()),
                        );
                      });
                }
              },
              child: Container(
                margin: const EdgeInsets.only(bottom: 10, top: 10),
                alignment: Alignment.center,
                height: 50,
                decoration: BoxDecoration(
                    color: Stylings.brown,
                    borderRadius: BorderRadius.circular(15)),
                child: Text(
                  "Send Link",
                  style: Stylings.subHeader.copyWith(color: Stylings.bgColor),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
