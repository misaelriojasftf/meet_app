import 'package:flutter/material.dart';
import 'package:get_it/get_it.dart';
import 'package:meetapp/shared/services/injector/injector_service.dart';

class BootService {
  static Future<void> get initializeServices async {
    WidgetsFlutterBinding.ensureInitialized();
    inj = GetIt.instance;
    InjectorService.init;
    await inj.allReady();

    /// [FILL SERVICES HERE]
  }
}
