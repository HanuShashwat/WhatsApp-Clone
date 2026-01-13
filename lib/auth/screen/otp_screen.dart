import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:whatsapp_clone/auth/controller/auth_controller.dart';
import '../../widgets/colors.dart';

class OtpScreen extends ConsumerWidget {
  static const String routeName = '/otp-screen';
  final String verificationId;
  const OtpScreen({
    required this.verificationId,
    super.key
  });

  void verifyOTP(WidgetRef ref, BuildContext context, String userOTP) {
    ref.read(authControllerProvider).verifyOTP(context, verificationId, userOTP);
  }

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: backgroundColor,
        title: const Text('Verify your number'),
      ),
      body: Center(
        child: Column(
         children: [
           const SizedBox(height: 20),
           const Text('We have send an SMS with a code.'),
           SizedBox(
             width: size.width * 0.5,
             child: TextField(
               textAlign: TextAlign.center,
               decoration: const InputDecoration(
                 hintText: '- - - - - -',
                 hintStyle: TextStyle(
                   fontSize: 30,
                 )
               ),
               keyboardType: TextInputType.number,
               onChanged: (val) {
                 if (val.length == 6) {
                   verifyOTP(ref, context, val.trim());
                 }
               },
             ),
           ),
         ],
        ),
      ),
    );
  }
}
