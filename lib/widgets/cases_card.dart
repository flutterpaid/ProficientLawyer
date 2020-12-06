import 'package:flutter/material.dart';
import 'package:lawyer/app_theme/text_styles.dart';
import 'package:lawyer/app_theme/app_colors.dart';
import 'package:lawyer/app_theme/screen_util-extension.dart';
import 'package:lawyer/ui/case_details_page.dart';

class CasesCard extends StatelessWidget {
  final String caseId;
  final String client;
  final String status;
  final String next;
  final String adv;
  final int date;
  final String month;
  CasesCard(
      {this.caseId,
      this.client,
      this.status,
      this.next,
      this.adv,
      this.date,
      this.month});
  @override
  Widget build(BuildContext context) {
    return ListTile(
      onTap: () {
        Navigator.pushReplacementNamed(context, CaseDetailsPage.id);
      },
      title: Container(
        height: 170.h,
        child: Card(
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(10),
            ),
            elevation: 5,
            child: Row(
              children: [
                Expanded(
                  flex: 1,
                  child: Container(
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.all(Radius.circular(10))),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Text(
                          date.toString(),
                          style: AppTextStyles.textStyle(
                              size: 50.f,
                              color: AppColor.profic_font,
                              fontType: FontType.bold),
                        ),
                        Text(
                          month,
                          style: AppTextStyles.textStyle(
                              size: 25.f,
                              color: AppColor.profic_font,
                              fontType: FontType.bold),
                        )
                      ],
                    ),
                  ),
                ),
                VerticalDivider(
                  color: Colors.grey,
                ),
                Expanded(
                  flex: 5,
                  child: Container(
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.all(Radius.circular(5))),
                    child: Row(
                      children: [
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            Text(
                              "CASE : " + caseId,
                              style: AppTextStyles.textStyle(
                                  fontType: FontType.bold, size: 24.f),
                            ),
                            Text(
                              "Client : " + client,
                              style: AppTextStyles.textStyle(
                                  color: Colors.grey, size: 22.5.f),
                            ),
                            Text(
                              adv,
                              style: AppTextStyles.textStyle(
                                  color: Colors.grey, size: 22.5.f),
                            )
                          ],
                        ),
                        Column(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: [
                            Text(
                              status,
                              style: AppTextStyles.textStyle(
                                  color: Colors.red,
                                  fontType: FontType.bold,
                                  size: 25.f),
                            ),
                            SizedBox(
                              height: 1.h,
                            ),
                            Text(
                              "Next : " + next,
                              style: AppTextStyles.textStyle(size: 22.5.f),
                            )
                          ],
                        )
                      ],
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                    ),
                  ),
                )
              ],
            )),
      ),
    );
  }
}
