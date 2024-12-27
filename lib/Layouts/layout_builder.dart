import 'package:flutter/material.dart';

class LayoutBuilderCode extends StatefulWidget {
  final Widget mobilescreen;
  final Widget websitescreen;

  const LayoutBuilderCode({
    super.key,
    required this.mobilescreen,
    required this.websitescreen,
  });

  @override
  State<LayoutBuilderCode> createState() => _LayoutBuilderCodeState();
}

class _LayoutBuilderCodeState extends State<LayoutBuilderCode> {
  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) {
        // Define breakpoints for responsiveness
        if (constraints.maxWidth < 600) {
          // Mobile layout
          return widget.mobilescreen; // Use widget.mobilescreen to access it
        } else {
          // Web/Desktop layout
          return widget.websitescreen; // Use widget.websitescreen to access it
        }
      },
    );
  }
}