import 'package:flutter/material.dart';
import 'package:whatsapp_clone/features/screen/login_screen.dart';
import 'package:whatsapp_clone/features/screen/user_info_screen.dart';
import 'package:whatsapp_clone/common/widgets/error.dart';
import 'features/screen/otp_screen.dart';

Route<dynamic> generateRoute(RouteSettings settings) {
  switch(settings.name) {
    case LoginScreen.RouteName:
      return MaterialPageRoute(
        builder: (context) => const LoginScreen(),
      );
    case OtpScreen.routeName:
      final verificationId = settings.arguments as String;
      return MaterialPageRoute(
        builder: (context) => OtpScreen(
          verificationId: verificationId,
        ),
      );
    case UserInfoScreen.routeName:
      return MaterialPageRoute(
        builder: (context) => UserInfoScreen(),
      );
    default:
      return MaterialPageRoute(
        builder: (context) => const Scaffold(
          body: ErrorScreen(error: 'This page does not exist.'),
        ),
      );
  }
}
