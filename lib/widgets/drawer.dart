import 'package:flutter/material.dart';
import 'package:lawyer/app_theme/app_colors.dart';
import 'package:lawyer/app_theme/text_styles.dart';
import 'package:lawyer/ui/cases_page.dart';
import 'package:lawyer/ui/contacts_page.dart';
import 'package:lawyer/ui/faqs_page.dart';
import 'package:lawyer/ui/home_page.dart';
import 'package:lawyer/ui/notes_page.dart';
import 'package:lawyer/ui/schedule_page.dart';
import 'package:path/path.dart';

class MyDrawer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        padding: const EdgeInsets.all(0.0),
        children: <Widget>[
          Container(
            height: 80,
            child: DrawerHeader(
              child: Row(
                children: [
                  Text(
                    'proficient',
                    style: AppTextStyles.textStyle(
                        fontType: FontType.bold,
                        size: 21,
                        color: AppColor.profic_font),
                  ),
                  Text(
                    'LAWYER',
                    style: AppTextStyles.textStyle(
                        fontType: FontType.bold, size: 23, color: Colors.white),
                  ),
                ],
              ),
              decoration: BoxDecoration(
                color: AppColor.appbar,
              ),
            ),
          ),
          ListTile(
            leading: Icon(
              Icons.home,
              color: AppColor.appbar,
            ),
            title: Text('Home'),
            onTap: () {
              if (ModalRoute.of(context).settings.name != HomePage.id)
                Navigator.pushReplacementNamed(context, HomePage.id);
              else
                Navigator.pop(context);
            },
          ),
          ListTile(
            leading: Icon(
              Icons.calendar_today_sharp,
              color: AppColor.appbar,
            ),
            title: Text('Scheduling'),
            onTap: () {
              if (ModalRoute.of(context).settings.name != Schedules.id)
                Navigator.pushReplacementNamed(context, Schedules.id);
              else
                Navigator.pop(context);
            },
          ),
          ListTile(
            leading: Icon(
              Icons.mail_outline,
              color: AppColor.appbar,
            ),
            title: Text('My Cases'),
            onTap: () {
              if (ModalRoute.of(context).settings.name != CasePage.id)
                Navigator.pushReplacementNamed(context, CasePage.id);
              else
                Navigator.pop(context);
            },
          ),
          ListTile(
            leading: Icon(
              Icons.note_rounded,
              color: AppColor.appbar,
            ),
            title: Text('Notes'),
            onTap: () {
              if (ModalRoute.of(context).settings.name != NotesPage.id)
                Navigator.pushReplacementNamed(context, NotesPage.id);
              else
                Navigator.pop(context);
            },
          ),
          ListTile(
            leading: Icon(
              Icons.person,
              color: AppColor.appbar,
            ),
            title: Text('Contacts'),
            onTap: () {
              if (ModalRoute.of(context).settings.name != ContactsPage.id)
                Navigator.pushReplacementNamed(context, ContactsPage.id);
              else
                Navigator.pop(context);
            },
          ),
          ListTile(
            leading: Icon(Icons.campaign_outlined, color: AppColor.appbar),
            title: Text('Refer and Earn'),
            onTap: () {
              Navigator.pop(context);
            },
          ),
          ListTile(
            leading: Icon(Icons.settings, color: AppColor.appbar),
            title: Text('Settings'),
            onTap: () {
              Navigator.pop(context);
            },
          ),
          ListTile(
            leading: Icon(Icons.event_note, color: AppColor.appbar),
            title: Text('FAQs'),
            onTap: () {
              if (ModalRoute.of(context).settings.name != FAQsPage.id)
                Navigator.pushReplacementNamed(context, FAQsPage.id);
              else
                Navigator.pop(context);
            },
          ),
        ],
      ),
    );
  }
}
