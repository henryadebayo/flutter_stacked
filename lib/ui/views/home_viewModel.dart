import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';

class HomeViewModel extends BaseViewModel{
  final String _title = "null";
  get title => _title;
  @override

  void notifyListeners() {
    // TODO: implement notifyListeners
    super.notifyListeners();
  }
}