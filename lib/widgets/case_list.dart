import 'package:flutter/material.dart';
import 'package:lawyer/model/case_data.dart';

import 'case_tile.dart';

class CaseList extends StatelessWidget {
  CaseData cd = new CaseData();
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      shrinkWrap: true,
      primary: false,
      itemBuilder: (context, index) {
        return CaseTile(
          caseNo: cd.cases[index].caseNumber,
        );
      },
      itemCount: cd.getCaseLength(),
    );
  }
}
