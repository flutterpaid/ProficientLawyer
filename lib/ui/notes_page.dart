import 'package:flutter/material.dart';
import 'package:lawyer/app_theme/app_colors.dart';
import 'package:lawyer/app_theme/text_styles.dart';
import 'package:lawyer/model/notes_page_model.dart';
import 'package:lawyer/widgets/cases_card.dart';
import 'package:lawyer/widgets/drawer.dart';
import 'package:lawyer/widgets/floating_button.dart';
import 'package:lawyer/widgets/unicorn_fab.dart';
import 'package:unicorndial/unicorndial.dart';
import 'package:lawyer/model/notes_page_data.dart';

class NotesPage extends StatelessWidget {
  static const String id = "NotesPage";
  NotesData nm = NotesData();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
                "Notes",
                style: AppTextStyles.s3(Colors.white),
              ),
            ],
          ),
        ),
        drawer: MyDrawer(),
        floatingActionButton: FAB(),
        // floatingActionButton: UnicornDialer(
        //   parentHeroTag: null,
        //   parentButtonBackground: Colors.blue,
        //   orientation: UnicornOrientation.VERTICAL,
        //   parentButton: Icon(Icons.add),
        //   childButtons: getProfileMenu(),
        // ),
        body: SingleChildScrollView(
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.all(20.0),
                child: Container(
                  width: 160,
                  child: FlatButton(
                      color: Colors.blue,
                      onPressed: () {},
                      child: Text(
                        "Compose",
                        style: AppTextStyles.textStyle(color: Colors.white),
                      )),
                ),
              ),
              Container(
                color: Colors.white,
                child: TextField(
                  decoration: InputDecoration(
                      border: InputBorder.none,
                      hintText: "Search Message or Name...",
                      prefixIcon: Icon(Icons.search_outlined)),
                  textAlign: TextAlign.center,
                ),
              ),
              ListView.builder(
                shrinkWrap: true,
                primary: false,
                itemBuilder: (context, index) {
                  return Container(
                    color: Colors.white,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Padding(
                          padding: const EdgeInsets.all(12.0),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                nm.details[index].name +
                                    " " +
                                    (index + 1).toString(),
                                style: AppTextStyles.textStyle(
                                    color: AppColor.appbar,
                                    fontType: FontType.bold,
                                    size: 15),
                              ),
                              Text(nm.details[index].date)
                            ],
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left: 12, bottom: 12),
                          child: Text(
                            nm.details[index].content,
                            style: AppTextStyles.textStyle(
                                color: AppColor.appbar, size: 13),
                          ),
                        ),
                        Divider(
                          color: Colors.grey.withOpacity(0.5),
                          thickness: 1,
                        )
                      ],
                    ),
                  );
                },
                itemCount: nm.getLength(),
              ),
            ],
          ),
        )
        // body: CasesCard(
        //   caseId: "0S/2019/456/145",
        //   adv: "Adv. john kumar",
        //   client: "Karn sharma",
        //   next: "Discussion",
        //   status: "Hearing pending",
        //   date: 21,
        //   month: "NOV",
        // ),
        );
  }
}
