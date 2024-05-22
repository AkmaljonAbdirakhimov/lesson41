import 'package:flutter/material.dart';
import 'package:lesson41/controllers/counter_controller.dart';

class CounterScreen extends StatefulWidget {
  const CounterScreen({super.key});

  @override
  State<CounterScreen> createState() => _CounterScreenState();
}

class _CounterScreenState extends State<CounterScreen> {
  final counterController = CounterController();

  void increment() {
    counterController.increment();
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Counter Screen"),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Center(
            child: Text(counterController.value.toString()),
          )
        ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: increment,
        child: const Icon(Icons.add),
      ),
    );
  }
}
