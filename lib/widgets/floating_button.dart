import 'package:flutter/material.dart';
import 'package:unicorndial/unicorndial.dart';

List<UnicornButton> getProfileMenu() {
  List<UnicornButton> children = [];
  children.add(profileOption(
    iconData: Icons.account_balance_sharp,
    onPressed: () {},
  ));
  children.add(
      profileOption(iconData: Icons.access_alarms_sharp, onPressed: () {}));

  return children;
}

Widget profileOption({IconData iconData, Function onPressed}) {
  return UnicornButton(
      currentButton: FloatingActionButton(
    backgroundColor: Colors.blueAccent,
    mini: true,
    child: Icon(iconData),
    onPressed: onPressed,
  ));
}
