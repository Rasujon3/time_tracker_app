

import 'package:flutter/material.dart';
import 'package:time_tracker_app/services/auth.dart';

class AuthProvider extends InheritedWidget{
  AuthProvider({@required this.auth,@required this.child});
  final AuthBase auth;
  final Widget child;


  @override
  bool updateShouldNotify(covariant InheritedWidget oldWidget) => false;
  
  // final auth = AuthProvider.of(context);

  static AuthBase of(BuildContext context){
    // ignore: deprecated_member_use
    AuthProvider provider = context.inheritFromWidgetOfExactType(AuthProvider);
    // AuthProvider provider = context.dependOnInheritedWidgetOfExactType(AuthProvider);
    return provider.auth;
  }

}