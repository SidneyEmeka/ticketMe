import 'package:firebase_auth/firebase_auth.dart';
import 'package:fluentui_icons/fluentui_icons.dart';
import 'package:flutter/material.dart';
import 'package:onyeije/provider/provider.dart';
import 'package:provider/provider.dart';

import '../utils/styles/stylings.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _EmailsignupState();
}

class _EmailsignupState extends State<LoginPage> {
  //
  //
  //
  // Future login() async {
  //   await FirebaseAuth.instance.signInWithEmailAndPassword(
  //       email: _emailController.text.trim(),
  //       password: _passwordController.text.trim());
  // }
  //
  // @override
  // void dispose() {
  //   _emailController.dispose();
  //   _passwordController.dispose();
  //   super.dispose();
  // }

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
      body: SafeArea(
          child: Container(
        alignment: Alignment.bottomCenter,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.end,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Text(
              "Sign in with your account",
              style: Stylings.subHeader.copyWith(fontSize: 15),
            ),
            const SizedBox(
              height: 20,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20.0),
              child: Container(
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(12),
                    color: Colors.white70,
                    border: Border.all(color: Colors.white)),
                child: TextFormField(
                  controller: provider.loginemailController,
                  decoration: const InputDecoration(
                      contentPadding: EdgeInsets.only(left: 20),
                      hintText: "Email",
                      border: InputBorder.none),
                ),
              ),
            ),
            const SizedBox(
              height: 15,
            ),
            //password
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20.0),
              child: Container(
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(12),
                    color: Colors.white70,
                    border: Border.all(color: Colors.white)),
                child: TextFormField(
                  controller: provider.loginpasswordController,
                  obscureText: provider.hidePassword,
                  obscuringCharacter: "*",
                  decoration: InputDecoration(
                      suffix: IconButton(
                          onPressed: () {
                            setState(() {
                              provider.hidePassword == true
                                  ? provider.hidePassword = false
                                  : provider.hidePassword = true;
                            });
                          },
                          icon: Icon(
                            provider.hidePassword == true
                                ? FluentSystemIcons.ic_fluent_eye_hide_filled
                                : FluentSystemIcons.ic_fluent_eye_show_filled,
                            size: 15,
                            color: Colors.brown,
                          )),
                      contentPadding: const EdgeInsets.only(left: 20),
                      hintText: "Password",
                      border: InputBorder.none),
                ),
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  //register row
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Don't have an account?",
                        style:
                            Stylings.subHeader.copyWith(color: Stylings.brown),
                      ),
                      const SizedBox(
                        width: 5,
                      ),
                      GestureDetector(
                        onTap: () {
                          Navigator.pushNamed(context, "email-signup");
                        },
                        child: Text(
                          "Register",
                          style: Stylings.lilgreyText.copyWith(
                            color: Colors.brown,
                          ),
                        ),
                      ),
                    ],
                  ),
                  //forgot password
                  Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      GestureDetector(
                        onTap: () {
                          Navigator.pushNamed(context, "forget-pass");
                        },
                        child: Text(
                          "Forgot Password?",
                          style: Stylings.lilgreyText.copyWith(
                            color: Colors.red,
                          ),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
            const SizedBox(
              height: 15,
            ),
            //button
            GestureDetector(
              onTap: (){
                  provider.login();
                  Navigator.pushNamed(context, "/");
              },
              child: Container(
                margin: const EdgeInsets.only(bottom: 10, top: 15),
                alignment: Alignment.center,
                width: size.width * 0.7,
                height: 40,
                decoration: BoxDecoration(
                    color: Stylings.brown,
                    borderRadius: BorderRadius.circular(15)),
                child: Text(
                  "Login",
                  style: Stylings.subHeader.copyWith(color: Stylings.bgColor),
                ),
              ),
            ),
          ],
        ),
      )),
    );
  }
}
