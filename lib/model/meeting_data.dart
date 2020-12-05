import 'package:flutter/cupertino.dart';

import 'meeting_model.dart';

int itemCount;

class MeetingData with ChangeNotifier {
  DateTime selectedDate;
  List<Meeting> meetings = [
    Meeting(
        name: "Steve Doe",
        place: "Grand Hotel",
        time: "08:00",
        date: DateTime(2020, 12, 2)),
    Meeting(
        name: "Steve Doe",
        place: "Grand Hotel",
        time: "08:00",
        date: DateTime(2020, 12, 3)),
    Meeting(
        name: "Steve Doe",
        place: "Grand Hotel",
        time: "08:00",
        date: DateTime(2020, 12, 1)),
    Meeting(
        name: "Steve Doe",
        place: "Grand Hotel",
        time: "08:00",
        date: DateTime(2020, 12, 1)),
    Meeting(
        name: "Steve Doe",
        place: "Grand Hotel",
        time: "08:00",
        date: DateTime(2020, 12, 1)),
    Meeting(
        name: "Steve Doe",
        place: "Grand Hotel",
        time: "08:00",
        date: DateTime(2020, 12, 1)),
    Meeting(
        name: "Steve Doe",
        place: "Grand Hotel",
        time: "08:00",
        date: DateTime(2020, 12, 1)),
    Meeting(
        name: "Steve Doe",
        place: "Grand Hotel",
        time: "08:00",
        date: DateTime(2020, 12, 1)),
    Meeting(
        name: "Steve Doe",
        place: "Grand Hotel",
        time: "08:00",
        date: DateTime(2020, 12, 1)),
    Meeting(
        name: "Steve Doe",
        place: "Grand Hotel",
        time: "08:00",
        date: DateTime(2020, 12, 1)),
    Meeting(
        name: "Steve Doe",
        place: "Grand Hotel",
        time: "08:00",
        date: DateTime(2020, 12, 1)),
  ];

  void getDate(date) {
    selectedDate = date;
  }

  int getLength() {
    return meetings.length;
  }
}
