import 'package:flutter/material.dart';

class exampleProvider with ChangeNotifier{
  double opacity = .1;

  void setOpacity(double val){
    opacity = val;
    notifyListeners();
  }
}