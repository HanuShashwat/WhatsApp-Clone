import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:whatsapp_clone/auth/login_screen.dart';
import 'package:whatsapp_clone/common/error.dart';

Route<dynamic> generateRoute(RouteSettings settings) {
  switch(settings.name) {
    case LoginScreen.RouteName:
      return MaterialPageRoute(
        builder: (context) => const LoginScreen(),
      );
    default:
      return MaterialPageRoute(
        builder: (context) => const Scaffold(
          body: ErrorScreen(error: 'This page does not exist.'),
        ),
      );
  }
}
