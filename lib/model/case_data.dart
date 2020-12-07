import 'package:flutter/cupertino.dart';

import 'case_model.dart';

class CaseData with ChangeNotifier {
  List<CaseDetails> cases = [
    CaseDetails(
        caseNumber: "OS/2014/1923/23",
        adv: "Adv. john kumar",
        client: "Karn sharma",
        next: "Discussion",
        status: "Hearing pending",
        date: 21,
        month: "NOV"),
    CaseDetails(
        caseNumber: "OS/2014/1923/22",
        adv: "Adv. john kumar",
        client: "Karn sharma",
        next: "Discussion",
        status: "No sitting",
        date: 21,
        month: "NOV"),
    CaseDetails(
        caseNumber: "OS/2014/1933/21",
        adv: "Adv. john praksah",
        client: "Karn sharma",
        next: "Discussion",
        status: "Hearing pending",
        date: 21,
        month: "NOV"),
    CaseDetails(
        caseNumber: "OS/2014/1923/23",
        adv: "Adv. john kumar",
        client: "Karn sharma",
        next: "Discussion",
        status: "Hearing pending",
        date: 21,
        month: "NOV"),
    CaseDetails(
        caseNumber: "OS/2014/1923/23",
        adv: "Adv. john kumar",
        client: "Karn sharma",
        next: "Discussion",
        status: "Hearing pending",
        date: 21,
        month: "NOV"),
    CaseDetails(
        caseNumber: "OS/2014/1923/23",
        adv: "Adv. john kumar",
        client: "Karn sharma",
        next: "Discussion",
        status: "Hearing pending",
        date: 21,
        month: "NOV"),
    CaseDetails(
        caseNumber: "OS/2014/1923/23",
        adv: "Adv. john kumar",
        client: "Karn sharma",
        next: "Discussion",
        status: "Hearing pending",
        date: 21,
        month: "NOV"),
    CaseDetails(
        caseNumber: "OS/2014/1923/23",
        adv: "Adv. john kumar",
        client: "Karn sharma",
        next: "Discussion",
        status: "Hearing pending",
        date: 21,
        month: "NOV"),
    CaseDetails(
        caseNumber: "OS/2014/1923/23",
        adv: "Adv. john kumar",
        client: "Karn sharma",
        next: "Discussion",
        status: "Hearing pending",
        date: 21,
        month: "NOV"),
  ];

  int getCaseLength() {
    return cases.length;
  }

  List<CaseDetails> getCase() {
    return cases;
  }
}
