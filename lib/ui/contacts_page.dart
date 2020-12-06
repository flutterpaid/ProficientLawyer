import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:lawyer/app_theme/app_colors.dart';
import 'package:lawyer/app_theme/screen_util-extension.dart';
import 'package:lawyer/app_theme/text_styles.dart';
import 'package:lawyer/widgets/contacts_grid.dart';
import 'package:lawyer/widgets/contacts_list.dart';
import 'package:lawyer/widgets/drawer.dart';
import 'package:lawyer/widgets/unicorn_fab.dart';

class ContactsPage extends StatelessWidget {
  static const id = "ContactsPage";
  @override
  Widget build(BuildContext context) {
    ScreenUtil.init(context,
        designSize: Size(750, 1334), allowFontScaling: false);
    return Scaffold(
      floatingActionButton: FAB(),
      drawer: MyDrawer(),
      appBar: AppBar(
        backgroundColor: AppColor.appbar,
        centerTitle: true,
        actions: [
          Padding(
            padding: EdgeInsets.only(right: 15),
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
      body: SafeArea(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Expanded(
              flex: 1,
              child: Container(
                margin: EdgeInsets.only(
                  top: 15,
                  left: 20,
                ),
                child: Align(
                  alignment: Alignment.centerLeft,
                  child: Text(
                    "FREQUENTLY CONTACTED",
                    style: AppTextStyles.textStyle(
                        fontType: FontType.semiBold,
                        size: 30.f,
                        color: Colors.black38),
                  ),
                ),
              ),
            ),
            Expanded(flex: 3, child: ContactList()),
            Expanded(
              flex: 1,
              child: Container(
                margin: EdgeInsets.only(
                  top: 15,
                  left: 20,
                ),
                child: Align(
                  alignment: Alignment.centerLeft,
                  child: Text(
                    "ALL CONTACTS",
                    style: AppTextStyles.textStyle(
                        fontType: FontType.semiBold,
                        size: 30.f,
                        color: Colors.black38),
                  ),
                ),
              ),
            ),
            Expanded(flex: 8, child: ContactGrid()),
          ],
        ),
      ),
    );
  }
}
