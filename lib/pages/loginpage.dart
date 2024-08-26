import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

import '../utils/styles/stylings.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _EmailsignupState();
}

class _EmailsignupState extends State<LoginPage> {
  bool hidePassword = true;

  //conntrolleers
  final _emailController = TextEditingController();
  final _passwordController = TextEditingController();

  Future Login() async {
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
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Text(
                      "Don't have an account ?",
                      style: Stylings.subHeader.copyWith(color: Stylings.brown),
                    ),
                    const SizedBox(width: 10,),
                    GestureDetector(
                      onTap: (){
                        Navigator.pushNamed(context, "in-method");
                      },
                      child: Text(
                        "Register",
                        style: Stylings.lilgreyText.copyWith(color: Colors.brown,decoration: TextDecoration.underline, decorationStyle: TextDecorationStyle.solid, decorationColor: Stylings.orange,),
                      ),
                    ),
                  ],
                ),
                const SizedBox(
                  height: 15,
                ),
                //button
                GestureDetector(
                  onTap: Login,
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
