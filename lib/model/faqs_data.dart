import 'package:flutter/cupertino.dart';

import 'faqs_model.dart';

class FAQsData with ChangeNotifier {
  DateTime selectedDate;
  List<FAQDetails> details = [
    FAQDetails(question: "What is the app for?", answer: "This app is amazing"),
    FAQDetails(question: "What is the app for?", answer: "This app is amazing"),
    FAQDetails(question: "What is the app for?", answer: "This app is amazing"),
    FAQDetails(question: "What is the app for?", answer: "This app is amazing"),
    FAQDetails(question: "What is the app for?", answer: "This app is amazing")
  ];

  int getLength() {
    return details.length;
  }
}
