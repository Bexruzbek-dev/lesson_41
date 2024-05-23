import 'package:flutter/material.dart';
import 'package:lesson_41/models/contact.dart';

class ContactItem extends StatelessWidget {
  final Contact contact;
  const ContactItem({super.key, required this.contact});

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: CircleAvatar(
        backgroundImage: contact.imageUrl.startsWith("http")
            ? NetworkImage(contact.imageUrl)
            : AssetImage(contact.imageUrl),
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
            onPressed: () {},
            icon: const Icon(
              Icons.delete,
              color: Colors.red,
            ),
          )
        ],
      ),
    );
  }
}
