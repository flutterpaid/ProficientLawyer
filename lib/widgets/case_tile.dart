import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

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
        onTap: () {},
        title: Text(
          caseNo,
        ),
      ),
    );
  }
}
