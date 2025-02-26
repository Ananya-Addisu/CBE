import 'package:flutter/material.dart';

class CustomButton extends StatelessWidget {
  final String text;
  final VoidCallback onPressed;
  final Color color;
  final Color textColor;
  final double borderRadius;
  final double paddingVertical;
  final double paddingHorizontal;

  const CustomButton({
    Key? key,
    required this.text,
    required this.onPressed,
    this.color = Colors.blue,
    this.textColor = Colors.white,
    this.borderRadius = 8.0,
    this.paddingVertical = 12.0,
    this.paddingHorizontal = 16.0,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: onPressed,
      style: ButtonStyle(
        backgroundColor: MaterialStateProperty.all<Color>(color),
        shape: MaterialStateProperty.all<OutlinedBorder>(
          RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(borderRadius),
          ),
        ),
        padding: MaterialStateProperty.all<EdgeInsetsGeometry>(
          EdgeInsets.symmetric(
            vertical: paddingVertical,
            horizontal: paddingHorizontal,
          ),
        ),
      ),
      child: Text(
        text,
        style: TextStyle(
          color: textColor,
          fontSize: 16.0,
          fontWeight: FontWeight.w500,
        ),
      ),
    );
  }
}



