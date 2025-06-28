import 'package:flutter/material.dart';

class ResponsiveWrapper extends StatelessWidget {
  final Widget child;

  const ResponsiveWrapper({super.key, required this.child});

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) {
        double maxWidth = constraints.maxWidth;

        double contentWidth;

        if (maxWidth <= 800) {
          // Mobile & small tablets
          contentWidth = maxWidth < 700 ? maxWidth : 700;
        } else {
          // Desktop
          contentWidth = maxWidth < 1200 ? maxWidth : 1200;
        }

        return Center(child: SizedBox(width: contentWidth, child: child));
      },
    );
  }
}
