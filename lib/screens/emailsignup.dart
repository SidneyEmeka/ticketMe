import 'package:firebase_auth/firebase_auth.dart';
import 'package:fluentui_icons/fluentui_icons.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../provider/provider.dart';
import '../utils/styles/stylings.dart';

class Emailsignup extends StatefulWidget {
  const Emailsignup({super.key});

  @override
  State<Emailsignup> createState() => _EmailsignupState();
}

class _EmailsignupState extends State<Emailsignup> {
  // String passwordMisMatch = "";

  //conntrolleers
  // final _emailController = TextEditingController();
  // final _passwordController = TextEditingController();
  // final _confirmPasswordController = TextEditingController();

  // bool passWordMatch(){
  //   if(_passwordController.text.trim()==_confirmPasswordController.text.trim()){
  //     return true;
  //   }
  //   else{return false;}
  // }

  // Future register() async {
  //   if(passWordMatch()) {
  //     await FirebaseAuth.instance.createUserWithEmailAndPassword(
  //       email: _emailController.text.trim(),
  //       password: _passwordController.text.trim());
  //   }
  //   else {
  //     setState(() {
  //       passwordMisMatch="Password doesn't match";
  //     });
  //   }
  // }

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
              "Create Account with Email",
              style: Stylings.subHeader.copyWith(fontSize: 15),
            ),
            const SizedBox(
              height: 20,
            ),
            //names
            //first name
            // Padding(
            //   padding: const EdgeInsets.symmetric(horizontal: 20.0),
            //   child: Container(
            //     decoration: BoxDecoration(
            //         borderRadius: BorderRadius.circular(12),
            //         color: Colors.white70,
            //         border: Border.all(color: Colors.white)),
            //     child: TextFormField(
            //       controller: _firstNameController,
            //       decoration: InputDecoration(
            //           contentPadding: EdgeInsets.only(left: 20),
            //           hintText: "First Name",
            //           border: InputBorder.none),
            //     ),
            //   ),
            // ),
            // const SizedBox(
            //   height: 15,
            // ),
            // //last name
            // Padding(
            //   padding: const EdgeInsets.symmetric(horizontal: 20.0),
            //   child: Container(
            //     decoration: BoxDecoration(
            //         borderRadius: BorderRadius.circular(12),
            //         color: Colors.white70,
            //         border: Border.all(color: Colors.white)),
            //     child: TextFormField(
            //       controller: _lastNameController,
            //       decoration: InputDecoration(
            //           contentPadding: EdgeInsets.only(left: 20),
            //           hintText: "Last Name",
            //           border: InputBorder.none),
            //     ),
            //   ),
            // ),
            // const SizedBox(
            //   height: 15,
            // ),
            //email
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20.0),
              child: Container(
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(12),
                    color: Colors.white70,
                    border: Border.all(color: Colors.white)),
                child: TextFormField(
                  controller: provider.regemailController,
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
                  controller: provider.regpasswordController,
                  obscureText: provider.hidePassword,
                  obscuringCharacter: "*",
                  decoration: const InputDecoration(
                      contentPadding: EdgeInsets.only(left: 20),
                      hintText: "Password",
                      border: InputBorder.none),
                ),
              ),
            ),
            const SizedBox(
              height: 15,
            ),
            //Confirm password
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20.0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  Container(
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(12),
                        color: Colors.white70,
                        border: Border.all(color: Colors.white)),
                    child: TextFormField(
                      controller: provider.regconfirmPasswordController,
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
                                    ? FluentSystemIcons
                                        .ic_fluent_eye_hide_filled
                                    : FluentSystemIcons
                                        .ic_fluent_eye_show_filled,
                                size: 15,
                                color: Colors.brown,
                              )),
                          contentPadding: const EdgeInsets.only(left: 20),
                          hintText: "Confirm Password",
                          border: InputBorder.none),
                    ),
                  ),
                  Text(
                    provider.passwordMisMatch,
                    style: Stylings.lilgreyText,
                  ),
                ],
              ),
            ),

            const SizedBox(
              height: 10,
            ),
            //button
            GestureDetector(
              onTap: () {
                provider.register();
                setState(() {});
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
                  "Register",
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
