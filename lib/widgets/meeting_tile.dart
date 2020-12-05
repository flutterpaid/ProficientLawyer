import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:lawyer/ui/schedule_page.dart';

class MeetingTile extends StatelessWidget {
  final String name;
  MeetingTile({
    this.name,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(1.0),
      child: Card(
        elevation: 2.0,
        child: ListTile(
          onTap: () {
            Navigator.pushReplacementNamed(context, Schedules.id);
          },
          title: Text(
            "Meeting with $name",
          ),
        ),
      ),
    );
  }
}
