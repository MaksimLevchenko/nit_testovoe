import 'package:flutter/material.dart';

class NumbersModel extends ChangeNotifier {
  final _numbers = <int>[];
  List<int> get numbers => _numbers;

  List<int> addNumber(int value) {
    _numbers.add(value);
    notifyListeners();
    return _numbers;
  }

  int length() {
    return _numbers.length;
  }

  bool isEmpty() {
    return length() == 0;
  }

  bool isNotEmpty() {
    return length() != 0;
  }
}
