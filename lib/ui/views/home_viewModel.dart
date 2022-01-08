import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';

class HomeViewModel extends BaseViewModel{
  final String _title = "null";
  String get title => '$_title,$_counter';

  late final int _counter;
  int get counter => _counter;

  @override

  void updateCounter() {
 _counter++ ;
super.notifyListeners();
  }
}