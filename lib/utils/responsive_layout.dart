import 'package:flutter/material.dart';

class ResponsiveLayout extends StatelessWidget {
  final Widget mobileSceenLayout;
  final Widget webSceenLayout;
  const ResponsiveLayout({
    super.key,
    required this.mobileSceenLayout,
    required this.webSceenLayout,
  });

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
        builder: (context, constraints) {
          if (constraints.maxWidth > 900) {
            return webSceenLayout;
          }
          return mobileSceenLayout;
        },
    );
  }
}