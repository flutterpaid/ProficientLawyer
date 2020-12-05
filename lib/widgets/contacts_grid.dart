import 'package:flutter/material.dart';
import 'package:lawyer/model/contacts_data.dart';
import 'package:lawyer/widgets/contact_card.dart';

class ContactGrid extends StatelessWidget {
  final ContactData cd = new ContactData();
  @override
  Widget build(BuildContext context) {
    return GridView.count(
      crossAxisCount: 3,
      childAspectRatio: (100 / 120),
      children: List.generate(
        cd.getLength(),
        (index) {
          return ContactCard(
            name: cd.contacts[index].name,
            number: cd.contacts[index].number.toString(),
            picPath: cd.contacts[index].picPath,
          );
        },
      ),
    );
  }
}
