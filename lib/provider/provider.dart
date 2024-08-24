import 'package:flutter/cupertino.dart';
import 'package:provider/provider.dart';

class MyProvider extends ChangeNotifier{
  int childTravellers = 0;
  int adultTravellers = 0;


  addAdult(){
    if(adultTravellers < 30) {
      adultTravellers++;
    }
   notifyListeners();
  }
  removeAdult(){
    if(adultTravellers >= 1)
    adultTravellers--;
   notifyListeners();
  }

  addChild(){
    if(childTravellers < 30) {
      childTravellers++;
    }
    notifyListeners();
  }
  removeChild(){
    if(childTravellers >= 1)
      childTravellers--;
    notifyListeners();
  }
}