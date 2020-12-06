import 'package:flutter/material.dart';
import 'package:lawyer/ui/cases_page.dart';
import 'package:lawyer/ui/schedule_page.dart';
import 'package:unicorndial/unicorndial.dart';

class FAB extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var childButtons = List<UnicornButton>();

    childButtons.add(UnicornButton(
        currentButton: FloatingActionButton(
      heroTag: "schedules",
      backgroundColor: Colors.blueAccent,
      mini: true,
      child: Icon(Icons.access_alarms_sharp),
      onPressed: () {
        Navigator.pushReplacementNamed(context, CasePage.id);
      },
    )));

    childButtons.add(UnicornButton(
        currentButton: FloatingActionButton(
      heroTag: "cases",
      backgroundColor: Colors.blueAccent,
      mini: true,
      child: Icon(Icons.account_balance_sharp),
      onPressed: () {
        Navigator.pushReplacementNamed(context, Schedules.id);
      },
    )));

    return UnicornDialer(
        backgroundColor: Color.fromRGBO(255, 255, 255, 0.6),
        parentButtonBackground: Colors.blueAccent,
        orientation: UnicornOrientation.VERTICAL,
        parentButton: Icon(
          Icons.add,
        ),
        childButtons: childButtons);
  }
}
