import 'package:flutter/material.dart';

class Contact {
  String name;
  String phone;
  String email;

  Contact({required this.name, required this.phone, required this.email});
}

class ContactBook {
  // create a singleton instance of the contact book: it means that there will be only one instance of the contact book in the app.
  ContactBook._privateConstructor();
  static final ContactBook _instance = ContactBook._privateConstructor();
  factory ContactBook() {
    return _instance; // what does it means? : it means that every time we call the ContactBook() constructor, we will get the same instance of the ContactBook class.
  }
  final List<Contact> _contacts = [
    Contact(
      name: "jawad",
      phone: "0767180833",
      email: "engjawadrahimi@gmail.com",
    ),
  ];
  int get length => _contacts.length;
  List<Contact> get contacts =>
      _contacts; // it will return a list not the length of the contact in here ok;

  void addContact({required Contact contact}) {
    _contacts.add(contact);
  }

  void removeContact({required Contact contact}) {
    _contacts.remove(contact);
  }

  Contact? contact({required int atIndex}) => _contacts.length > atIndex
      ? _contacts[atIndex]
      : null; // what does this line means ? :
  void updateContact({
    required Contact oldContact,
    required Contact newContact,
  }) {
    final index = _contacts.indexOf(oldContact);
    if (index != -1) {
      _contacts[index] = newContact;
    }
  }
}
