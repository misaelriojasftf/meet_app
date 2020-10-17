import 'package:flutter/material.dart';
import 'package:meetapp/shared/constants/images.dart';
import 'package:meetapp/shared/services/services.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 10),
        child: Column(
          mainAxisSize: MainAxisSize.max,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                SizedBox(
                  height: 60,
                  child: Image.asset(
                    AppImages.ICON,
                  ),
                ),
              ],
            ),
            Spacer(),
            InkWell(
              onTap: () {
                inj<AnalyticsService>().logLogin();
                NavigationService().navigateTo(ROUTES.HOME);
              },
              child: Container(
                alignment: Alignment.center,
                child: Text(
                  'Login',
                  style: TextStyle(color: Colors.black),
                ),
              ),
            ),
            Spacer(),
          ],
        ),
      ),
    );
  }
}
