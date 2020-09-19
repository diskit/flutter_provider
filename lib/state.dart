import 'package:flutter/material.dart';

class CounterState extends ChangeNotifier {
  int count = 0;

  void increment() {
    count++;
  }
}
