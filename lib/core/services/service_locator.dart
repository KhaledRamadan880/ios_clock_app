import 'package:get_it/get_it.dart';
import 'package:ios_clock_app/core/imports/imports.dart';

final sl = GetIt.instance;
void initServiceLocator() {
//!external
  sl.registerLazySingleton(() => Cache());
}
