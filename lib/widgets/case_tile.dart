import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../ui/case_details_page.dart';

class CaseTile extends StatelessWidget {
  final String caseNo;
  CaseTile({
    this.caseNo,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(1.0),
      color: Colors.white,
      child: ListTile(
        onTap: () {
          Navigator.pushNamed(context, CaseDetailsPage.id);
        },
        title: Text(
          caseNo,
        ),
      ),
    );
  }
}
