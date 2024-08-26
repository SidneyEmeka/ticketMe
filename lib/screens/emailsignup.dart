import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

import '../utils/styles/stylings.dart';

class Emailsignup extends StatefulWidget {
  const Emailsignup({super.key});

  @override
  State<Emailsignup> createState() => _EmailsignupState();
}

class _EmailsignupState extends State<Emailsignup> {
  bool hidePassword = true;

  //conntrolleers
  final _emailController = TextEditingController();
  final _passwordController = TextEditingController();

  Future register() async {
    await FirebaseAuth.instance.signInWithEmailAndPassword(
        email: _emailController.text.trim(),
        password: _passwordController.text.trim());
  }

  @override
  void dispose() {
    _emailController.dispose();
    _passwordController.dispose();
    super.dispose();
  }

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
                  controller: _emailController,
                  decoration: InputDecoration(
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
                  controller: _passwordController,
                  obscureText: hidePassword,
                  obscuringCharacter: "*",
                  decoration: InputDecoration(
                      contentPadding: EdgeInsets.only(left: 20),
                      hintText: "Password",
                      border: InputBorder.none),
                ),
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            //button
            GestureDetector(
              onTap: () {
                Navigator.pushNamed(context, "in-method");
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
