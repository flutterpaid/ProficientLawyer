import 'package:get_it/get_it.dart';
import 'package:lawyer/model/casemodel.dart';
import 'package:lawyer/model/clientmodel.dart';
import 'package:lawyer/model/meeting_data.dart';
import 'package:lawyer/model/oppositeparty_model.dart';
import 'package:lawyer/model/reviewsavemodel.dart';

GetIt locator = GetIt.I;
void setupLocator() {
  locator.registerLazySingleton(() => CaseModel());
  locator.registerLazySingleton(() => ClientModel());
  locator.registerLazySingleton(() => OppositePartyModel());
  locator.registerLazySingleton(() => ReviewSaveModel());
  locator.registerLazySingleton(() => MeetingData());
}
