import 'package:flutter/material.dart';
import 'package:lawyer/app_theme/app_colors.dart';
import 'package:lawyer/app_theme/text_styles.dart';
import 'package:lawyer/ui/case_details_page1.dart';
import 'package:lawyer/widgets/cases_card.dart';
import 'package:lawyer/widgets/drawer.dart';
import 'package:lawyer/widgets/unicorn_fab.dart';

import 'package:lawyer/model/case_data.dart';

class CaseDetailsPage extends StatelessWidget {
  static const String id = "CaseDetailsPage";
  CaseData cd = new CaseData();
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Scaffold(
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
                  "Case view",
                  style: AppTextStyles.s3(Colors.white),
                ),
              ],
            ),
            bottom: TabBar(
              indicator: BoxDecoration(
                color: Colors.white,
              ),
              labelColor: Colors.blue,
              unselectedLabelColor: Colors.white,
              tabs: [
                Tab(
                  text: 'Case Details',
                ),
                Tab(
                  text: "Client details",
                ),
                Tab(
                  text: 'Opposite party',
                )
              ],
            ),
          ),
          drawer: MyDrawer(),
          floatingActionButton: FAB(),
          body: TabBarView(
            children: <Widget>[
              Center(
                child: CaseDetailsPage1(),
              ),
              Center(
                child: Text("Client details"),
              ),
              Center(
                child: Text('Opposite party'),
              )
            ],
          )),
    );
  }
}
