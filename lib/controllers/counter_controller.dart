import 'package:flutter/material.dart';
import 'package:lesson_41/models/counter.dart';

class CounterController {
  Counter _counter = Counter(0,Colors.black);

  int get value {
    return _counter.value;
  }

  void increment() {
    _counter.value++;
  }

  void decrement() {
    if (_counter.value > 0) {
      _counter.value--;
    } else {
      _counter.value = 0;
      _counter.color = Colors.red;
    }
  }
}
