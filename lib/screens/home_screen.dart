import 'package:flutter/material.dart';
import 'package:meetapp/shared/constants/images.dart';
import 'package:meetapp/shared/services/services.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({
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
                  height: 20,
                  child: Image.asset(AppImages.ICON),
                ),
              ],
            ),
            Expanded(
                child: ListView.builder(
              itemBuilder: (context, index) => GestureDetector(
                  onTap: () {
                    inj<AnalyticsService>()
                        .logProductSelected(index.toString());
                  },
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Card(
                      child: Column(
                        children: [Text(index.toString())],
                      ),
                    ),
                  )),
            ))
          ],
        ),
      ),
    );
  }
}
