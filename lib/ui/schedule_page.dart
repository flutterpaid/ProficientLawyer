import 'package:flutter/material.dart';
import 'package:inline_calender/inline_calender.dart';
import 'package:lawyer/app_theme/app_colors.dart';
import 'package:lawyer/app_theme/text_styles.dart';
import 'package:lawyer/model/meeting_data.dart';
import 'package:lawyer/widgets/drawer.dart';
import 'package:lawyer/widgets/meeting_card.dart';
import 'package:lawyer/widgets/unicorn_fab.dart';
import 'package:provider/provider.dart';

class Schedules extends StatelessWidget {
  static const String id = "Schedules";
  InlineCalenderModel _controller;
  DateTime _pickedDate = DateTime.now();
  Map<DateTime, Color> _coloredDates = {
    DateTime.now().add(Duration(days: 2)): Colors.blue,
    DateTime.now().subtract(Duration(days: 7)): Colors.red
  };

  @override
  Widget build(BuildContext context) {
    final MeetingData myMeeting = Provider.of<MeetingData>(context);
    _controller = InlineCalenderModel(
      defaultSelectedDate: _pickedDate,
      onChange: (DateTime date) => myMeeting.getDate(date),
    );

    _controller.coloredDates = _coloredDates;
    return Scaffold(
        floatingActionButton: FAB(),
        // floatingActionButton: UnicornDialer(
        //   parentButtonBackground: Colors.blue,
        //   orientation: UnicornOrientation.VERTICAL,
        //   parentButton: Icon(Icons.add),
        //   childButtons: getProfileMenu(),
        // ),
        drawer: MyDrawer(),
        appBar: AppBar(
          backgroundColor: AppColor.appbar,
          title: Center(
            child: Text(
              'Schedule',
              style: AppTextStyles.textStyle(
                  color: Colors.white, fontType: FontType.medium, size: 24),
            ),
          ),
          bottom: InlineCalender(
            controller: _controller,
            locale: Locale('en_US'),
            isShamsi: false,
            height: 100,
            maxWeeks: 12,
            middleWeekday: DateTime.now().weekday,
          ),
        ),
        body: ListView.builder(
          itemCount: myMeeting.meetings.length,
          itemBuilder: (context, index) {
            bool isHere = myMeeting.selectedDate
                .isAtSameMomentAs(myMeeting.meetings[index].date);
            return MeetCard(
              name: myMeeting.meetings[index].name,
              time: myMeeting.meetings[index].time,
              place: myMeeting.meetings[index].place,
            );
            // : SizedBox(
            //     height: 0,
            //   );
          },
        )
        // body: MeetCard(
        //   name: "Meeting with steve",
        //   time: "8:00",
        //   place: "At Grand Hotel",
        // ),
        );
  }
}
