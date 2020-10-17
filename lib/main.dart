import 'package:flutter/material.dart';
import 'package:meetapp/shared/services/boot/boot_service.dart';

import 'screens/home_screen.dart';
import 'screens/login_screen.dart';
import 'shared/services/services.dart';

void main() async {
  await BootService.initializeServices;
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'meetapp',
        debugShowCheckedModeBanner: false,
        navigatorKey: NavigationService().navigatorKey,
        navigatorObservers: [inj<AnalyticsService>().getAnalyticsObserver()],
        initialRoute: ROUTES.LOGIN,
        routes: {
          ROUTES.LOGIN: (_) => LoginScreen(),
          ROUTES.HOME: (_) => HomeScreen(),
        });
  }
}
