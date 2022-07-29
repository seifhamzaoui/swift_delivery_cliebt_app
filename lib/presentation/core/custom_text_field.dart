// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';

import 'package:client_app/presentation/constants/colors.dart';

class CustomTextField extends StatelessWidget {
  const CustomTextField({
    Key? key,
    required this.hintText,
    this.obscureText,
    this.onChanged,
    this.validator,
    this.icon,
    this.suffixIcon,
    this.fillColor,
  }) : super(key: key);
  final String hintText;
  final bool? obscureText;
  final void Function(String)? onChanged;
  final String? Function(String?)? validator;
  final Widget? icon;
  final Widget? suffixIcon;
  final Color? fillColor;
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        TextFormField(
          obscureText: obscureText ?? false,
          decoration: InputDecoration(
            contentPadding: EdgeInsets.only(top: 24, bottom: 24, right: 50),
            filled: true,
            prefixIcon: Padding(
              padding: EdgeInsets.symmetric(horizontal: 15),
              child: icon,
            ),
            suffixIcon: suffixIcon,
            fillColor: fillColor ?? Color(0xFF4D0060).withOpacity(0.06),
            hintText: hintText,
            border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(6),
              borderSide: BorderSide(
                width: 0,
                style: BorderStyle.none,
              ),
            ),
            hintStyle: TextStyle(
                color: SwiftColors.hintGreyColor, fontSize: 13, overflow: TextOverflow.ellipsis),
          ),
          onChanged: onChanged,
          validator: validator,
        ),
      ],
    );
  }
}
