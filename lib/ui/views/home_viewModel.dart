import 'dart:ffi';

import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';

class HomeViewModel extends BaseViewModel{
  final String _bottomText = "Made with LOVE by Marvel";
  final String _title = "Current Counter value is :";
  String get title => '$_title $counter';
  String get bottomText=> _bottomText;

 bool isMinus = false;
    //get isMinuss => _isMinus;

  int _counter = 0;
  int get counter => _counter;

  final String _appBarTitle = "Implementing Stacked";

  String get appBarTitle => _appBarTitle;


  void resetCounter(){
    _counter = 0;
    notifyListeners();
  }

void counterIncrement(){
    _counter++;
    super.notifyListeners();
  }
  
void counterDecrement(){
    _counter--;
    super.notifyListeners();
  }

}