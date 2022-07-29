import 'package:client_app/presentation/constants/colors.dart';
import 'package:flutter/material.dart';

class MarketGridElement extends StatelessWidget {
  const MarketGridElement({
    Key? key,
    required this.iconPath,
    this.onPressed,
    required this.title,
  }) : super(key: key);
  final String iconPath;
  final void Function()? onPressed;
  final String title;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        GestureDetector(
          onTap: onPressed ?? () {},
          child: Container(
            height: 130,
            width: 130,
            decoration: BoxDecoration(
              gradient:
                  LinearGradient(begin: Alignment.topCenter, end: Alignment.bottomCenter, colors: [
                Color(0xffF97501),
                Color(0xffF97501),
              ]),
              color: SwiftColors.orange,
              borderRadius: BorderRadius.circular(65),
            ),
            child: Center(
              child: Image.asset(iconPath),
            ),
          ),
        ),
        SizedBox(height: 10),
        Text(
          title,
          textAlign: TextAlign.center,
          style: TextStyle(
            fontSize: 14,
          ),
        ),
      ],
    );
  }
}
