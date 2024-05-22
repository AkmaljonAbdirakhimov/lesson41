import 'package:flutter/material.dart';
import 'package:lesson41/models/contact.dart';

class ContactItem extends StatelessWidget {
  final Contact contact;
  final Function() onDelete;
  const ContactItem(
    this.contact, {
    super.key,
    required this.onDelete,
  });

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: CircleAvatar(
        backgroundColor: contact.color,
      ),
      title: Text(contact.name),
      subtitle: Text(contact.phone),
      trailing: Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          IconButton(
            onPressed: () {},
            icon: const Icon(
              Icons.edit,
              color: Colors.blue,
            ),
          ),
          IconButton(
            onPressed: onDelete,
            icon: const Icon(
              Icons.delete,
              color: Colors.red,
            ),
          ),
        ],
      ),
    );
  }
}
