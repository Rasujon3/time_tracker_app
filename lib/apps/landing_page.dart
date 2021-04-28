import 'dart:async';

import 'package:flutter/material.dart';
import 'package:time_tracker_app/app/sign_in/sign_in_page.dart';
import 'package:time_tracker_app/apps/home_page.dart';
import 'package:time_tracker_app/services/auth.dart';
import 'package:time_tracker_app/services/auth_provider.dart';

// import 'package:time_tracker_flutter_course/app/home_page.dart';
// import 'package:time_tracker_flutter_course/app/sign_in/sign_in_page.dart';
// import 'package:time_tracker_flutter_course/services/auth.dart';

class LandingPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final auth = AuthProvider.of(context);
    return StreamBuilder<User>(
        stream: auth.onAuthStateChanged, // facebook auth
        builder: (context, snapshot) {
          if (snapshot.connectionState == ConnectionState.active) {
            User user = snapshot.data;
            if (user == null) {
              return SignInPage();
            }
            return HomePage();
          } else {
            return Scaffold(
              body: Center(
                child: CircularProgressIndicator(),
              ),
            );
          }
        });
  }
}
