import 'package:flutter/material.dart';
import 'package:lesson_41/controllers/contacts_controller.dart';
import 'package:lesson_41/views/widgets/contact_item.dart';

class ContactScreen extends StatefulWidget {
  const ContactScreen({super.key});

  @override
  State<ContactScreen> createState() => _ContactScreenState();
}

class _ContactScreenState extends State<ContactScreen> {
  final contactsController = ContactsController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: Colors.blue,
        title: const Text("Contacts"),
      ),
      body: ListView.builder(
        itemCount: contactsController.list.length,
        itemBuilder: (ctx, index) {
          return ContactItem(
            contact: contactsController.list[index],
          );
        },
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        child: const Icon(
          Icons.add,
        ),
      ),
    );
  }
}
