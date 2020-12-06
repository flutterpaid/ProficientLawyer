import 'package:flutter/material.dart';
import 'package:get_it/get_it.dart';
import 'package:lawyer/model/meeting_data.dart';
import 'package:lawyer/ui/case_details_page.dart';
import 'package:lawyer/ui/cases_page.dart';
import 'package:lawyer/ui/contacts_page.dart';
import 'package:lawyer/ui/home_page.dart';
import 'package:lawyer/ui/new_case.dart';
import 'package:lawyer/ui/notes_page.dart';
import 'package:lawyer/ui/schedule_page.dart';
import 'package:flutter/services.dart';
import 'package:provider/provider.dart';
import 'package:lawyer/ui/faqs_page.dart';

import 'model/casemodel.dart';
import 'model/clientmodel.dart';
import 'model/injection.dart';
import 'model/oppositeparty_model.dart';
import 'model/reviewsavemodel.dart';

void main() {
  setupLocator();
  SystemChrome.setSystemUIOverlayStyle(
      SystemUiOverlayStyle(statusBarColor: Colors.transparent));
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    SystemChrome.setPreferredOrientations([
      DeviceOrientation.portraitUp,
      DeviceOrientation.portraitDown,
    ]);
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (context) => GetIt.I<MeetingData>()),
        ChangeNotifierProvider(create: (context) => GetIt.I<CaseModel>()),
        ChangeNotifierProvider(create: (context) => GetIt.I<ClientModel>()),
        ChangeNotifierProvider(
            create: (context) => GetIt.I<OppositePartyModel>()),
        ChangeNotifierProvider(create: (context) => GetIt.I<ReviewSaveModel>())
      ],
      child: MaterialApp(
        home: HomePage(),
        initialRoute: HomePage.id,
        routes: {
          HomePage.id: (context) => HomePage(),
          CasePage.id: (context) => CasePage(),
          Schedules.id: (context) => Schedules(),
          FAQsPage.id: (context) => FAQsPage(),
          NotesPage.id: (context) => NotesPage(),
          ContactsPage.id: (context) => ContactsPage(),
          CaseDetailsPage.id: (context) => CaseDetailsPage(),
          NewCase.id: (context) => NewCase()
        },
      ),
    );
  }
}
