import 'package:flutter/material.dart';

class PrimaryButton extends StatelessWidget {
  const PrimaryButton({
    Key? key,
    required this.backColor,
    required this.frontColor,
    required this.onPressed,
    required this.text,
  }) : super(key: key);
  final Color backColor;
  final Color frontColor;
  final void Function() onPressed;
  final String text;
  @override
  Widget build(BuildContext context) {
    return TextButton(
      style: TextButton.styleFrom(
        shape: const RoundedRectangleBorder(borderRadius: BorderRadius.all(Radius.circular(16))),
        backgroundColor: backColor,
        minimumSize: Size(310, 61),
      ),
      onPressed: onPressed,
      child: Text(
        text,
        style: TextStyle(
          fontSize: 14,
          color: frontColor,
        ),
      ),
    );
  }
}
