import 'package:flutter/material.dart';
import 'package:flutter_screenutil/screenutil.dart';
import 'package:lawyer/app_theme/app_colors.dart';
import 'package:lawyer/app_theme/text_styles.dart';
import 'package:lawyer/widgets/calender.dart';
import 'package:lawyer/widgets/case_list.dart';
import 'package:lawyer/widgets/drawer.dart';
import 'package:lawyer/model/case_data.dart';
import 'package:lawyer/widgets/floating_button.dart';
import 'package:lawyer/widgets/meeting_list.dart';
import 'package:lawyer/app_theme/screen_util-extension.dart';
import 'package:lawyer/widgets/unicorn_fab.dart';
import 'package:unicorndial/unicorndial.dart';

class HomePage extends StatelessWidget {
  static const String id = "HomePage";
  @override
  Widget build(BuildContext context) {
    ScreenUtil.init(context,
        designSize: Size(750, 1334), allowFontScaling: false);
    return Scaffold(
      drawer: MyDrawer(),
      appBar: AppBar(
        backgroundColor: AppColor.appbar,
        centerTitle: true,
        actions: [
          Padding(
            padding: const EdgeInsets.only(right: 15),
            child: CircleAvatar(
              backgroundColor: Colors.white,
              child: Icon(
                Icons.person,
                color: AppColor.profic_font,
              ),
            ),
          )
        ],
        title: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              "proficient",
              style: AppTextStyles.s3(AppColor.profic_font),
            ),
            Text(
              "LAWYER",
              style: AppTextStyles.s3(Colors.white),
            )
          ],
        ),
      ),
      body: Column(
        children: [
          Expanded(
            flex: 1,
            child: Container(
              color: Color(0xFFEEEEF3),
              child: Center(
                child: Text(
                  " Welcome, John Doe!",
                  style: AppTextStyles.textStyle(
                      fontType: FontType.bold,
                      size: 35.0.f,
                      color: Color(0xFF43425D)),
                ),
              ),
            ),
          ),
          Calender(),
//          Container(
//            height: 384,
//            color: Colors.white,
//            child: Calender(),
//          ),
          Expanded(
            flex: 5,
            child: Container(
              margin: EdgeInsets.only(bottom: 5),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    margin: EdgeInsets.all(10),
                    child: Text(
                      "TODAY'S CASES",
                      style: AppTextStyles.textStyle(
                        fontType: FontType.medium,
                        size: 30.f,
                        color: Colors.black38,
                      ),
                    ),
                  ),
                  Expanded(child: CaseList()),
                ],
              ),
            ),
          ),
          Expanded(
            flex: 5,
            child: Container(
              margin: EdgeInsets.only(bottom: 15),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    margin: EdgeInsets.all(6),
                    child: Text(
                      "TODAY'S SCHEDULE",
                      style: AppTextStyles.textStyle(
                        fontType: FontType.medium,
                        size: 30.f,
                        color: Colors.black38,
                      ),
                    ),
                  ),
                  Expanded(child: MeetingList()),
                ],
              ),
            ),
          ),
        ],
      ),
      floatingActionButton: FAB(),
    );
  }
}
