import 'package:flutter/material.dart';

class CounterState extends ChangeNotifier with State {
  int count = 0;

  setValue(int value) {
    this.count = value;
  }

  @override
  void notify() {
    notifyListeners();
  }
}

abstract class State {
  void notify();
}
