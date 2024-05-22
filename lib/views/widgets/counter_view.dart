import 'package:flutter/material.dart';

class CounterView extends StatelessWidget {
  final int value;
  const CounterView(this.value, {super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text(value.toString()),
    );
  }
}
