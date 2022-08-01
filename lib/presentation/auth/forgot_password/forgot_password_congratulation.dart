import 'package:client_app/presentation/client/orders/single_order_page.dart';
import 'package:client_app/presentation/constants/colors.dart';
import 'package:client_app/presentation/core/primary_widgets.dart';
import 'package:client_app/presentation/welcome_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';

class ForgotpasswordCongratulations extends StatelessWidget {
  const ForgotpasswordCongratulations({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          const Spacer(),
          Align(child: CirclePurpleCheck()),
          const SizedBox(height: 20),
          Text(
            'Mot de passe changé avec \nSuccés',
            textAlign: TextAlign.center,
            style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 17,
              color: SwiftColors.purple,
            ),
          ),
          const Spacer(),
          PrimaryButton(
            backColor: SwiftColors.purple,
            frontColor: Colors.white,
            onPressed: () {
              Navigator.popUntil(context, (route) => route.isFirst);
            },
            text: 'Connectez-vous',
          ),
          const SizedBox(height: 50),
        ],
      )),
    );
  }
}
