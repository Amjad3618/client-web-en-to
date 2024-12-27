import 'package:flutter/material.dart';

class UserFormContainer extends StatelessWidget {
  final double? height;
  final double? width;
  final Widget child;
  final Color backgroundColor;
  final double borderRadius;

  const UserFormContainer({
    Key? key,
    this.height,
    this.width,
    required this.child,
    this.backgroundColor = const Color.fromARGB(255, 121, 183, 212),
    this.borderRadius = 15.0,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: height,
      width: width,
      decoration: BoxDecoration(
        color: backgroundColor,
        borderRadius: BorderRadius.circular(borderRadius),
      ),
      child: child,
    );
  }
}
