import 'package:flutter/material.dart';
import 'package:lesson41/views/screens/contacts_screen.dart';

void main(List<String> args) {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: ContactsScreen(),
    );
  }
}


//? Models - Counter 
//? Controller - CounterController
//? Views - CounterScreen