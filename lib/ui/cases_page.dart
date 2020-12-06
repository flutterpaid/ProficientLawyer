import 'package:flutter/material.dart';
import 'package:lawyer/app_theme/app_colors.dart';
import 'package:lawyer/app_theme/text_styles.dart';
import 'package:lawyer/ui/case_details_page.dart';
import 'package:lawyer/widgets/blue_button.dart';
import 'package:lawyer/widgets/cases_card.dart';
import 'package:lawyer/widgets/drawer.dart';
import 'package:lawyer/widgets/floating_button.dart';
import 'package:lawyer/widgets/unicorn_fab.dart';
import 'package:unicorndial/unicorndial.dart';
import 'package:lawyer/model/case_data.dart';

class CasePage extends StatelessWidget {
  static const String id = "CasePage";
  CaseData cd = new CaseData();
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
                "Today's Cases",
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
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              Padding(
                padding: const EdgeInsets.all(18),
                child: Container(
                  decoration: BoxDecoration(
                      color: Colors.blueAccent,
                      borderRadius: BorderRadius.circular(130)),
                  width: 130,
                  height: 37,
                  child: BlueButton(
                    text: "Print Case List",
                    icon: Icon(
                      Icons.print,
                      color: Colors.white,
                    ),
                    onPressed: () {},
                  ),
                  // child: FlatButton(
                  //     onPressed: () {},
                  //     child: Row(
                  //       children: [
                  //         Icon(
                  //           Icons.print,
                  //           color: Colors.white,
                  //         ),
                  //         Text(
                  //           "Print Case List",
                  //           style: AppTextStyles.textStyle(
                  //               size: 10, color: Colors.white),
                  //         ),
                  //       ],
                  //     )),
                ),
              ),
              ListView.builder(
                shrinkWrap: true,
                primary: false,
                itemBuilder: (context, index) {
                  return CasesCard(
                    caseId: cd.cases[index].caseNumber,
                    adv: cd.cases[index].adv,
                    client: cd.cases[index].client,
                    next: cd.cases[index].next,
                    status: cd.cases[index].status,
                    date: cd.cases[index].date,
                    month: cd.cases[index].month,
                  );
                },
                itemCount: cd.getCaseLength(),
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
