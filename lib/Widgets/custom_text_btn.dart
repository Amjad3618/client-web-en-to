import 'package:flutter/material.dart';

class CustomTextButton extends StatelessWidget {
  final VoidCallback onPressed;
  final String label;
  final Color borderColor;
  final Color textColor;
  final double borderRadius;
  final double borderWidth;

  const CustomTextButton({
    Key? key,
    required this.onPressed,
    required this.label,
    this.borderColor = Colors.blue,
    this.textColor = Colors.black,
    this.borderRadius = 8.0,
    this.borderWidth = 1.0,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextButton(
      onPressed: onPressed,
      style: TextButton.styleFrom(
        side: BorderSide(
          color: borderColor,
          width: borderWidth,
        ), // Border color and width
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(borderRadius), // Rounded corners
        ),
      ),
      child: Text(
        label,
        style: TextStyle(color: textColor),
      ),
    );
  }
}
