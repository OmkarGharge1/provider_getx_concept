import 'package:flutter/material.dart';

class CounterProvider with ChangeNotifier{
  int qty = 1;

  // int get qty => _qty;

  void increment(){
   qty++;
   notifyListeners();
  }
}