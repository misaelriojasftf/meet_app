library navigation_service;

import 'package:flutter/material.dart';

part './constants/routes.dart';

class NavigationService {
  static NavigationService _instance;

  NavigationService._();

  factory NavigationService() => _getInstance();

  static NavigationService _getInstance() {
    if (_instance is! NavigationService) _instance = NavigationService._();
    return _instance;
  }

  final GlobalKey<NavigatorState> navigatorKey =
      new GlobalKey<NavigatorState>();

  BuildContext get getContext => navigatorKey.currentContext;

  void pop() => navigatorKey.currentState.pop();

  Future<dynamic> navigateTo(String routeName, {dynamic arguments}) {
    return navigatorKey.currentState.pushNamed(routeName, arguments: arguments);
  }

  void removeUntil(String route) => navigatorKey.currentState
      .pushNamedAndRemoveUntil(route, (Route<dynamic> route) => false);
}
