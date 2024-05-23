import 'package:lesson_41/models/contact.dart';

class ContactsController {
  final List<Contact> _list = [
    Contact(
        name: "Tom",
        phone: "+998 90 123 45 67",
        imageUrl:
            "https://mamul.am/images/photos/200220/1940-i-ays-ory-cucadrvec-tomn--n171858-1.jpg"),
    Contact(
        name: "Jerry",
        phone: "+998 333 65 66",
        imageUrl:
            "https://i.pinimg.com/736x/23/de/59/23de5967e32e56bb06115e30ac5ef4a1.jpg"),
    Contact(
        name: "Spike",
        phone: "+998 933 60 66",
        imageUrl:
            "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTXD4nD1-yLnlPL57DcpfITTVewu6YCZgWB-BSGYFFyWQ&s"),
    Contact(name: "Sherlock Holmes", phone: "+zzz zzz zz zz"),
  ];
  List<Contact> get list {
    return [..._list];
  }
}
