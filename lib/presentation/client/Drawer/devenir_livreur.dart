// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';

import 'package:client_app/presentation/constants/colors.dart';
import 'package:client_app/presentation/core/custom_icon_button.dart';

class DevenirLivreur extends StatelessWidget {
  const DevenirLivreur({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: SwiftColors.backGrey,
      body: SafeArea(
          child: Padding(
        padding: const EdgeInsets.all(30),
        child: Column(
          children: [
            Row(
              children: [
                CustomIconButton(
                  icon: Icon(
                    Icons.arrow_back_ios,
                    color: Colors.black,
                  ),
                  onPressed: () {
                    Navigator.pop(context);
                  },
                  backColor: SwiftColors.backGrey,
                ),
              ],
            ),
            const SizedBox(height: 79),
            Image.asset('assets/images/logo_small.png'),
            const SizedBox(height: 50),
            Text(
              'Devenir un livreur',
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 24),
            ),
            const SizedBox(height: 50),
            Text(
              'Veuillez s\'il vous plait vous présenter à notre siège\nà l\'addresse ci-dessous',
            ),
            const SizedBox(height: 40),
            DrawerPageInfoItem(
              icon: Icons.location_on_rounded,
              text: 'lorem epson is simply dummy text',
            ),
            const SizedBox(height: 35),
            DrawerPageInfoItem(
              icon: Icons.phone,
              text: '0656766534',
            ),
            const SizedBox(height: 35),
            DrawerPageInfoItem(
              icon: Icons.email,
              text: 'swift@gmail.com',
            ),
          ],
        ),
      )),
    );
  }
}

class DrawerPageInfoItem extends StatelessWidget {
  final IconData icon;

  final String text;

  const DrawerPageInfoItem({
    Key? key,
    required this.icon,
    required this.text,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Icon(
          icon,
          color: SwiftColors.orange,
        ),
        const SizedBox(
          width: 24,
        ),
        Text(
          text,
          style: TextStyle(fontSize: 13),
          overflow: TextOverflow.ellipsis,
        ),
      ],
    );
  }
}
