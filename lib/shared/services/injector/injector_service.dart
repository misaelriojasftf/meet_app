import 'package:get_it/get_it.dart';

import '../services.dart';

GetIt inj;

class InjectorService {
  static void get init {
    inj.registerLazySingleton<AnalyticsService>(() => AnalyticsService());

    ///[FILL SERVICES HERE]
  }
}
