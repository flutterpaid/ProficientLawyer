import 'package:flutter/material.dart';
import 'package:lawyer/app_theme/app_colors.dart';
import 'package:lawyer/app_theme/text_styles.dart';
import 'package:lawyer/widgets/cases_card.dart';
import 'package:lawyer/widgets/drawer.dart';
import 'package:lawyer/widgets/floating_button.dart';
import 'package:lawyer/widgets/unicorn_fab.dart';
import 'package:unicorndial/unicorndial.dart';
import 'package:lawyer/model/faqs_data.dart';

class FAQsPage extends StatelessWidget {
  static const String id = "FAQsPage";
  FAQsData fd = FAQsData();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: AppColor.appbar,
          centerTitle: true,
          title: Text(
            "FAQs",
            style: AppTextStyles.s3(Colors.white),
          ),
        ),
        drawer: MyDrawer(),

        // floatingActionButton: UnicornDialer(
        //   parentHeroTag: null,
        //   parentButtonBackground: Colors.blue,
        //   orientation: UnicornOrientation.VERTICAL,
        //   parentButton: Icon(Icons.add),
        //   childButtons: getProfileMenu(),
        // ),
        body: ListView.builder(
          shrinkWrap: true,
          primary: false,
          itemBuilder: (context, index) {
            return Container(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: const EdgeInsets.all(12.0),
                    child: Text(
                      "Question" +
                          (index + 1).toString() +
                          " : " +
                          fd.details[index].question,
                      style: AppTextStyles.textStyle(
                          color: AppColor.appbar,
                          fontType: FontType.bold,
                          size: 20),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(12.0),
                    child: Text(
                      "Answer " + (index + 1).toString(),
                      style: AppTextStyles.textStyle(color: AppColor.appbar),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 12, bottom: 12),
                    child: Text(
                      fd.details[index].answer,
                      style: AppTextStyles.textStyle(
                          color: AppColor.appbar, size: 15),
                    ),
                  ),
                  Divider(color: Colors.black)
                ],
              ),
            );
          },
          itemCount: fd.getLength(),
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
