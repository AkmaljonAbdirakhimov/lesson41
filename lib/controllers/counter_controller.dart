import 'package:lesson41/models/counter.dart';

class CounterController {
  Counter counter = Counter(0);

  int get value {
    return counter.value;
  }

  void increment() {
    counter.value++;
  }
}
