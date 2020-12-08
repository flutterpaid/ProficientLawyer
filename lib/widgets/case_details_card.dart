import 'dart:io';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:lawyer/app_theme/screen_util-extension.dart';
import 'package:lawyer/app_theme/text_styles.dart';
import 'package:lawyer/model/imported_files_data.dart';
import 'package:provider/provider.dart';

class CasesDetailsCard extends StatelessWidget {
  final String caseId;
  final String client;
  final String status;
  final String next;
  final String adv;
  final int date;
  final String month;
  CasesDetailsCard(
      {this.caseId,
      this.client,
      this.status,
      this.next,
      this.adv,
      this.date,
      this.month});
  @override
  Widget build(BuildContext context) {
    final ImportedFiles imports = Provider.of<ImportedFiles>(context);
    return Card(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(10),
      ),
      elevation: 5,
      child: ExpansionTile(
        childrenPadding: EdgeInsets.all(0),
        trailing: SizedBox(),
        tilePadding: EdgeInsets.all(0),
        children: [
          Padding(
            padding: const EdgeInsets.all(12.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "Remarks",
                  style: AppTextStyles.textStyle(fontType: FontType.bold),
                ),
                Row(
                  children: [
                    imports.listOfFiles.length != 0
                        ? Container(
                            child: ListView.builder(
                              scrollDirection: Axis.horizontal,
                              shrinkWrap: true,
                              primary: false,
                              itemBuilder: (context, index) {
                                return Padding(
                                  padding: EdgeInsets.only(right: 10),
                                  child: Container(
                                    decoration: BoxDecoration(
                                        border:
                                            Border.all(color: Colors.black)),
                                    child: Image.file(
                                      File(imports.listOfFiles[index]),
                                      width: 50,
                                      height: 80,
                                    ),
                                  ),
                                );
                              },
                              itemCount: imports.listOfFiles.length,
                            ),
                            height: 80,
                          )
                        : SizedBox(),
                    GestureDetector(
                      onTap: () {
                        imports.addItem(imports.import());
                      },
                      child: Container(
                          height: 80,
                          width: 50,
                          decoration: BoxDecoration(
                              border: Border.all(color: Colors.grey)),
                          child: Icon(
                            Icons.add,
                            color: Colors.grey,
                          )),
                    ),
                  ],
                ),
              ],
            ),
          )
        ],
        title: Container(
          decoration:
              BoxDecoration(borderRadius: BorderRadius.all(Radius.circular(5))),
          height: 150.h,
          child: Row(
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Text(
                    status,
                    style: AppTextStyles.textStyle(
                        color: Colors.black,
                        fontType: FontType.bold,
                        size: 25.f),
                  ),
                  Text(
                    date.toString() + " " + month,
                    style: AppTextStyles.textStyle(
                        color: Colors.grey, size: 22.5.f),
                  ),
                ],
              ),
              Column(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Text(
                    "Adjourned to " + date.toString() + " " + month,
                    style: AppTextStyles.textStyle(
                        color: Colors.black,
                        fontType: FontType.bold,
                        size: 25.f),
                  ),
                  Text(
                    adv,
                    style: AppTextStyles.textStyle(
                        color: Colors.grey, size: 22.5.f),
                  )
                ],
              )
            ],
            mainAxisAlignment: MainAxisAlignment.spaceAround,
          ),
        ),
      ),
    );
  }
}
