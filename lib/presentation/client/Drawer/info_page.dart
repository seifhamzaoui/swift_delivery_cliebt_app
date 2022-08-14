// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:client_app/presentation/client/Drawer/devenir_livreur.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';

import 'package:client_app/presentation/constants/colors.dart';
import 'package:client_app/presentation/core/custom_icon_button.dart';

class InfoPage extends StatelessWidget {
  const InfoPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: Padding(
        padding: const EdgeInsets.all(30),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Row(
              children: [
                CustomIconButton(
                  icon: Icon(
                    Icons.arrow_back_ios_new,
                    color: Colors.black,
                  ),
                  onPressed: () {
                    Navigator.pop(context);
                  },
                  backColor: SwiftColors.backGrey,
                ),
              ],
            ),
            const SizedBox(height: 65),
            Text(
              'Swift Delivery',
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 24),
            ),
            const SizedBox(height: 14),
            Text(
              'Une Société de Livraison',
              style: TextStyle(fontSize: 13, color: SwiftColors.hintGreyColor),
            ),
            const SizedBox(height: 47),
            Image.asset('assets/images/logo_small.png'),
            const SizedBox(height: 70),
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
