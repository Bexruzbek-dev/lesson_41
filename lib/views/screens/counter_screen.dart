import 'package:flutter/material.dart';
import 'package:lesson_41/controllers/counter_controller.dart';

class CounterScreen extends StatefulWidget {
  const CounterScreen({super.key});

  @override
  State<CounterScreen> createState() => _CounterScreenState();
}

class _CounterScreenState extends State<CounterScreen> {
  final counterController = CounterController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: Colors.blue.shade600,
        title: const Text("Counter App"),
      ),
      body: Center(
        child: Text(
          counterController.value.toString(),
          style: const TextStyle(
            fontSize: 60,
          ),
        ),
      ),
      floatingActionButton: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          FloatingActionButton(
            onPressed: () {
              counterController.decrement();
              setState(() {});
            },
            child: const Icon(Icons.remove),
          ),
          FloatingActionButton(
            onPressed: () {
              counterController.increment();
              setState(() {});
            },
            child: const Icon(Icons.add),
          ),
        ],
      ),
    );
  }
}
