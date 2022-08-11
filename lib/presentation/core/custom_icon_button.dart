import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CustomIconButton extends StatelessWidget {
  CustomIconButton({
    Key? key,
    required this.icon,
    required this.onPressed,
    this.backColor,
  }) : super(key: key);
  final Widget icon;
  final void Function() onPressed;
  Color? backColor;
  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      style: ButtonStyle(
        elevation: MaterialStateProperty.all(0),
        backgroundColor: MaterialStateProperty.all(backColor ?? Colors.white),
        padding: MaterialStateProperty.all(EdgeInsets.symmetric(horizontal: 0, vertical: 15.h)),
        shape: MaterialStateProperty.all(
          RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(9),
          ),
        ),
      ),
      onPressed: onPressed,
      child: Center(child: icon),
    );
  }
}
