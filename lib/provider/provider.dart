import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class MyProvider extends ChangeNotifier {
  //Login controllers
  final loginemailController = TextEditingController();
  final loginpasswordController = TextEditingController();

  //Register controllers
  final regemailController = TextEditingController();
  final regpasswordController = TextEditingController();
  final regconfirmPasswordController = TextEditingController();

  //Reset Password controller
  final resetemailController = TextEditingController();

  //validators
  String passwordMisMatch = "";
  String? wrongemailFormat;

  bool passWordMatch() {
    if (regpasswordController.text.trim() ==
        regconfirmPasswordController.text.trim()) {
      return true;
    } else {
      return false;
    }
  }

  //Firebase//
  //register
  Future register() async {
    if (passWordMatch()) {
      await FirebaseAuth.instance.createUserWithEmailAndPassword(
          email: regemailController.text.trim(),
          password: regpasswordController.text.trim());
    } else {
      passwordMisMatch = "Password doesn't match";
      notifyListeners();
    }
  }

  //login
  Future login() async {
    try{
      await FirebaseAuth.instance.signInWithEmailAndPassword(
          email: loginemailController.text.trim(),
          password: loginpasswordController.text.trim());
      notifyListeners();
    }on FirebaseAuthException catch(e){
      print(e);
    }
  }

  //logout
  void signOut() {
    FirebaseAuth.instance.signOut();
  }


  //forms
  bool hidePassword = true;

  int childTravellers = 0;
  int adultTravellers = 0;

  addAdult() {
    if (adultTravellers < 30) {
      adultTravellers++;
    }
    notifyListeners();
  }

  removeAdult() {
    if (adultTravellers >= 1) adultTravellers--;
    notifyListeners();
  }

  addChild() {
    if (childTravellers < 30) {
      childTravellers++;
    }
    notifyListeners();
  }

  removeChild() {
    if (childTravellers >= 1) childTravellers--;
    notifyListeners();
  }
}
