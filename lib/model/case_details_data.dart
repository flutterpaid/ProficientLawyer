import 'package:flutter/cupertino.dart';

import 'case_details_model.dart';

class CaseDetailsData with ChangeNotifier {
  List<CaseDetailsInfo> cases = [
    CaseDetailsInfo(
        caseAt: "District Court",
        state: "Kerala",
        district: "thrissur",
        courtName: "Sub court",
        courtComplex: "District court comlex",
        caseType: "Civil"),
  ];
}
