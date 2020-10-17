import 'package:firebase_analytics/firebase_analytics.dart';
import 'package:firebase_analytics/observer.dart';
import 'package:flutter/foundation.dart';

class AnalyticsService {
  final FirebaseAnalytics _analytics = FirebaseAnalytics();

  FirebaseAnalyticsObserver getAnalyticsObserver() =>
      FirebaseAnalyticsObserver(analytics: _analytics);

  Future setUser({@required String userId, String userRole}) async {
    await _analytics.setUserId(userId);
    await _analytics.setUserProperty(name: 'user_role', value: userRole);
  }

  Future logLogin() async {
    await _analytics.logLogin(loginMethod: 'email');
  }

  Future logSignUp() async {
    await _analytics.logSignUp(signUpMethod: 'email');
  }

  Future logProductSelected(String idProduct) async {
    await _analytics.logEvent(
      name: 'PRODUCT_SELECTED',
      parameters: {'id_product': idProduct},
    );
  }
}
