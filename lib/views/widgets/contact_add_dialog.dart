import 'package:flutter/material.dart';

class ContactAddDialog extends StatefulWidget {
  ContactAddDialog({super.key});

  @override
  State<ContactAddDialog> createState() => _ContactAddDialogState();
}

class _ContactAddDialogState extends State<ContactAddDialog> {
  final _formKey = GlobalKey<FormState>();

  String name = "";

  String phone = "";

  void _add() {
    if (_formKey.currentState!.validate()) {
      _formKey.currentState!.save();

      Navigator.pop(context, {
        "name": name,
        "phone": phone,
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      title: const Text("Kontakt qo'shish"),
      content: Form(
        key: _formKey,
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            TextFormField(
              textInputAction: TextInputAction.next,
              decoration: const InputDecoration(
                border: OutlineInputBorder(),
                labelText: "Ism",
              ),
              validator: (value) {
                if (value == null || value.trim().isEmpty) {
                  return "Iltimos ism kiriting";
                }

                return null;
              },
              onSaved: (newValue) {
                name = newValue ?? "";
              },
            ),
            SizedBox(height: 10),
            TextFormField(
              textInputAction: TextInputAction.done,
              keyboardType: TextInputType.number,
              decoration: const InputDecoration(
                border: OutlineInputBorder(),
                labelText: "Telefon raqam",
                prefixIcon: Icon(Icons.add),
              ),
              validator: (value) {
                if (value == null || value.trim().isEmpty) {
                  return "Iltimos telefon raqam kiriting";
                } else if (!RegExp(r"^\d+$").hasMatch(value)) {
                  return "Iltimos to'g'ri telefon raqam kiriting";
                }

                return null;
              },
              onSaved: (newValue) {
                phone = newValue ?? "";
              },
            ),
          ],
        ),
      ),
      actions: [
        TextButton(
          onPressed: () {
            Navigator.pop(context);
          },
          child: const Text("Bekor qilish"),
        ),
        ElevatedButton(
          onPressed: _add,
          style: ElevatedButton.styleFrom(
            backgroundColor: Colors.blue,
            foregroundColor: Colors.white,
          ),
          child: const Text("Qo'shish"),
        ),
      ],
    );
  }
}
