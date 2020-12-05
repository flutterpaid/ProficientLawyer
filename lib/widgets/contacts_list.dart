import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:lawyer/model/contacts_data.dart';
import 'package:lawyer/widgets/contact_card.dart';

class ContactList extends StatelessWidget {
  ContactData cd = new ContactData();
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      scrollDirection: Axis.horizontal,
      shrinkWrap: true,
      primary: false,
      itemBuilder: (context, index) {
        return ContactCard(
          name: cd.contacts[index].name,
          number: cd.contacts[index].number.toString(),
          picPath: cd.contacts[index].picPath,
        );
      },
      itemCount: cd.getLength(),
    );
  }
}
