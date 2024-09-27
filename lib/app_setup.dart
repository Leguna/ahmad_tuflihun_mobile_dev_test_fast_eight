import 'package:flutter/foundation.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:hive_flutter/adapters.dart';

import 'core/index.dart';
import 'core/services/local_database.dart';

var initialized = false;

Future<void> setupServices({bool isBackground = false}) async {
  try {
    if (initialized) return;
    initialized = true;
    await Hive.initFlutter();
    GoogleFonts.config.allowRuntimeFetching = false;

    final localDatabase = LocalDatabase();
    getIt.registerLazySingleton(() => localDatabase);
  } catch (e) {
    if (kDebugMode) {
      print('Error initializing services: $e');
    }
  }
}
