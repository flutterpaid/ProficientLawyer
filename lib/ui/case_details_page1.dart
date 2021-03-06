import 'package:flutter/material.dart';
import 'package:lawyer/app_theme/text_styles.dart';
import 'package:lawyer/model/case_data.dart';
import 'package:lawyer/model/case_details_data.dart';
import 'package:lawyer/ui/new_case.dart';
import 'package:lawyer/ui/upload_fileview.dart';
import 'package:lawyer/widgets/add_proceedings.dart';
import 'package:lawyer/widgets/blue_button.dart';
import 'package:lawyer/widgets/case_details_card.dart';
import 'package:provider/provider.dart';

import 'connected_casesview.dart';

class CaseDetailsPage1 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final CaseData cd = Provider.of<CaseData>(context);
    final CaseDetailsData cdd = Provider.of<CaseDetailsData>(context);
    return Container(
      child: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              decoration: BoxDecoration(color: Colors.white, boxShadow: [
                BoxShadow(
                  color: Colors.grey,
                  blurRadius: 7,
                ),
              ]),
              child: Padding(
                padding: const EdgeInsets.all(15.0),
                child: Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text("Case At"),
                        Text(
                          cdd.cases[0].caseAt,
                          style:
                              AppTextStyles.textStyle(fontType: FontType.bold),
                        )
                      ],
                    ),
                    Divider(),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text("State"),
                        Text(
                          cdd.cases[0].state,
                          style:
                              AppTextStyles.textStyle(fontType: FontType.bold),
                        )
                      ],
                    ),
                    Divider(),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text("District"),
                        Text(
                          cdd.cases[0].district,
                          style:
                              AppTextStyles.textStyle(fontType: FontType.bold),
                        )
                      ],
                    ),
                    Divider(),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text("Court Complex"),
                        Text(
                          cdd.cases[0].courtComplex,
                          style:
                              AppTextStyles.textStyle(fontType: FontType.bold),
                        )
                      ],
                    ),
                    Divider(),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text("Court Name"),
                        Text(
                          cdd.cases[0].courtName,
                          style:
                              AppTextStyles.textStyle(fontType: FontType.bold),
                        )
                      ],
                    ),
                    Divider(),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text("Case Type"),
                        Text(
                          cdd.cases[0].caseType,
                          style:
                              AppTextStyles.textStyle(fontType: FontType.bold),
                        )
                      ],
                    ),
                  ],
                ),
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                BlueButton(
                  icon: Icon(
                    Icons.edit,
                    color: Colors.white,
                  ),
                  text: "Edit case details",
                  onPressed: () {
                    Navigator.pushNamed(context, NewCase.id);
                  },
                ),
                BlueButton(
                  icon: Icon(
                    Icons.link,
                    color: Colors.white,
                  ),
                  text: "Connected Cases",
                  onPressed: () {
                    connectedCaseAlert(context);
                  },
                )
              ],
            ),
            SizedBox(
              height: 10,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                BlueButton(
                  icon: Icon(
                    Icons.upload_rounded,
                    color: Colors.white,
                  ),
                  text: "Upload Documents",
                  onPressed: () {
                    uploadFile(context);
                  },
                ),
                BlueButton(
                  icon: Icon(
                    Icons.add,
                    color: Colors.white,
                  ),
                  text: "Add Proceedings",
                  onPressed: () {
                    showAlertProceedings(context).show();
                  },
                )
              ],
            ),
            Padding(
              padding: const EdgeInsets.all(20.0),
              child: Align(
                alignment: Alignment.centerLeft,
                child: Text(
                  "CASE HISTORY",
                  style: AppTextStyles.textStyle(size: 12, color: Colors.grey),
                ),
              ),
            ),
            Container(
              color: Colors.white,
              child: ListView.builder(
                shrinkWrap: true,
                primary: false,
                itemBuilder: (context, index) {
                  return CasesDetailsCard(
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
            ),
          ],
        ),
      ),
    );
  }
}
