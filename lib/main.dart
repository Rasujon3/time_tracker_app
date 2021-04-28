import 'package:flutter/material.dart';

import 'package:time_tracker_app/apps/landing_page.dart';
import 'package:time_tracker_app/services/auth.dart';
// import 'package:time_tracker_app/services/auth_provider.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Provider<AuthBase>(
      // ignore: deprecated_member_use
      builder: (context) => Auth(),
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Time Tracker',
        theme: ThemeData(
          primarySwatch: Colors.indigo,
        ),
        home: LandingPage(),
      ),
    );
  }
}
