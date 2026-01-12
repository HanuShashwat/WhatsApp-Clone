import 'package:flutter/material.dart';
import 'package:whatsapp_clone/widgets/colors.dart';

class CustomButton extends StatelessWidget {
  final VoidCallback onPressed;
  final String text;
  final double radius;
  const CustomButton({
    required this.text,
    required this.onPressed,
    required this.radius,
    super.key
  });

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      style: ElevatedButton.styleFrom(
        backgroundColor: tabColor,
        minimumSize: Size(double.infinity, 50),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(radius),
        )
      ),
      onPressed: onPressed,
      child: Text(
        text,
        style: const TextStyle(
          color: blackColor,
        ),
      ),
    );
  }
}
