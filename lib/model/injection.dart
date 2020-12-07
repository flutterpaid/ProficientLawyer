import 'package:get_it/get_it.dart';
import 'package:lawyer/model/casemodel.dart';
import 'package:lawyer/model/clientmodel.dart';
import 'package:lawyer/model/imported_files_data.dart';
import 'package:lawyer/model/meeting_data.dart';
import 'package:lawyer/model/oppositeparty_model.dart';
import 'package:lawyer/model/reviewsavemodel.dart';

import 'case_data.dart';
import 'case_details_data.dart';

GetIt locator = GetIt.I;
void setupLocator() {
  locator.registerLazySingleton(() => CaseModel());
  locator.registerLazySingleton(() => ClientModel());
  locator.registerLazySingleton(() => OppositePartyModel());
  locator.registerLazySingleton(() => ReviewSaveModel());
  locator.registerLazySingleton(() => MeetingData());
  locator.registerLazySingleton(() => CaseData());
  locator.registerLazySingleton(() => CaseDetailsData());
  locator.registerLazySingleton(() => ImportedFiles());
}
