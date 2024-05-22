import 'dart:math';

import 'package:flutter/material.dart';
import 'package:lesson41/models/contact.dart';

class ContactsController {
  final List<Contact> _list = [
    Contact(
      name: "Tom",
      phone: "+998 90 123 45 67",
      color: Colors.amber,
    ),
    Contact(
      name: "Jerry",
      phone: "+998 77 888 99 00",
      color: Colors.red,
    ),
    Contact(
      name: "Spike",
      phone: "+998 33 444 55 66",
      color: Colors.blue,
    ),
  ];

  List<Contact> get list {
    return [..._list];
  }

  void add(String name, String phone) {
    int red = Random().nextInt(255);
    int green = Random().nextInt(255);
    int blue = Random().nextInt(255);

    _list.add(
      Contact(
        name: name,
        phone: phone,
        color: Color.fromARGB(255, red, green, blue),
      ),
    );
  }

  void delete(int index) {
    _list.removeAt(index);
  }
}
