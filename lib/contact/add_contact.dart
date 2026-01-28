import 'package:flutter/material.dart';
import 'package:jawadrahimi_contact_app/contact/contact.dart';
import 'package:jawadrahimi_contact_app/widgets/inputs.dart';

class addcontacts extends StatefulWidget {
  const addcontacts({super.key});

  @override
  State<addcontacts> createState() => _addcontactsState();
}

class _addcontactsState extends State<addcontacts> {
  late TextEditingController _controller;
  @override
  void initState() {
    // this just initialize your _controller in here
    // TODO: implement initState
    _controller = TextEditingController();
    super.initState();
  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFf1f1f1),
      appBar: AppBar(
        title: Text(
          " Add A New Contact",
          style: TextStyle(fontSize: 15, fontWeight: FontWeight.w600),
        ),
      ),
      body: Padding(
        padding: EdgeInsets.all(15),
        child: Column(
          children: [
            TextField(
              controller: _controller,
              decoration: InputDecoration(
                alignLabelWithHint: false,
                border: InputBorder.none,
                focusColor: Colors.yellowAccent,
                enabled: false,
                hintText: "Enter your contact name",
                label: Text("Full name"),
                labelStyle: TextStyle(
                  fontSize: 12,
                  fontWeight: FontWeight.w500,
                ),
                hintStyle: TextStyle(fontSize: 11, fontWeight: FontWeight.w300),

                contentPadding: EdgeInsets.symmetric(horizontal: 10),
              ),
            ),
            customeInput(
              label: "email Address",
              hintText: "enter email of Contact",
              border_color: Colors.green,
              raduise: 16,
              controller: _controller,
            ),
            customeInput(
              label: "phone",
              hintText: "enter your phone",
              border_color: Colors.green,
              raduise: 16,
              controller: _controller,
            ),
            TextButton(
              onPressed: () {
                final contact = Contact(
                  name: _controller.text,
                  phone: _controller.text,
                  email: _controller.text,
                );
                ContactBook().addContact(contact: contact);
              },
              child: Text(
                "Add",
                style: TextStyle(fontSize: 14, fontWeight: FontWeight.w500),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

//  the idea to get the finction in here is completely wrong and also if you train the model for contiytry side in e
