import 'package:flutter/material.dart';
import 'package:lawyer/model/meeting_data.dart';
import 'meeting_tile.dart';

class MeetingList extends StatelessWidget {
  final MeetingData md = new MeetingData();
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      shrinkWrap: true,
      primary: false,
      itemBuilder: (context, index) {
        return MeetingTile(
          name: md.meetings[index].name,
          time: md.meetings[index].time,
        );
      },
      itemCount: md.getLength(),
    );
  }
}
