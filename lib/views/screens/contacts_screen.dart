import 'package:flutter/material.dart';
import 'package:lesson41/controllers/contacts_controller.dart';
import 'package:lesson41/views/widgets/contact_add_dialog.dart';
import 'package:lesson41/views/widgets/contact_item.dart';

class ContactsScreen extends StatefulWidget {
  const ContactsScreen({super.key});

  @override
  State<ContactsScreen> createState() => _ContactsScreenState();
}

class _ContactsScreenState extends State<ContactsScreen> {
  final contactsController = ContactsController();

  void delete(int index) {
    contactsController.delete(index);
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Contacts"),
        actions: [
          IconButton(
            onPressed: () async {
              Map<String, dynamic>? data = await showDialog(
                barrierDismissible: false,
                context: context,
                builder: (ctx) {
                  return ContactAddDialog();
                },
              );

              if (data != null) {
                contactsController.add(
                  data['name'],
                  data['phone'],
                );
                setState(() {});
              }
            },
            icon: const Icon(Icons.add),
          ),
        ],
      ),
      body: ListView.builder(
        itemCount: contactsController.list.length,
        itemBuilder: (ctx, index) {
          return ContactItem(
            contactsController.list[index],
            onDelete: () {
              delete(index);
            },
          );
        },
      ),
    );
  }
}
